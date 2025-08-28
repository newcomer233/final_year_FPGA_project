import os, glob, collections, argparse, time, shutil, copy
import numpy as np
import pandas as pd
import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader

# 兼容导入你的模型定义
try:
    from code.model_def import build_model, C_FIXED, L_FIXED
except Exception:
    from model_def import build_model, C_FIXED, L_FIXED

# Vitis AI 量化
from pytorch_nndct.apis import torch_quantizer
# Vitis AI 裁枝（one-step / iterative）
try:
    from pytorch_nndct import get_pruning_runner
except Exception:
    # 旧版本兜底
    from pytorch_nndct.pruning import get_pruning_runner  # 若环境较老

# ====== CSV -> 片段数据集，兼容你现有 quant_ptq 的输入 ======
class CSVSegments(Dataset):
    """
    读取 root 下的 CSV：
      - 只取前 C_FIXED 列
      - 按 L_FIXED 点切段，不足补零；长度非整段也在末尾补零到整段
    输出: seg.shape == [1, C_FIXED, L_FIXED]
    同时返回全局样本 index，便于伪标签对齐
    """
    def __init__(self, root, channels=C_FIXED, seg_len=L_FIXED, min_rows=L_FIXED):
        self.root = root
        self.files = sorted([os.path.join(root, f) for f in os.listdir(root) if f.endswith('.csv')])
        if not self.files:
            raise FileNotFoundError(f"No csv found in {root}")
        self.C, self.L = channels, seg_len
        self.index = []  # (file_idx, seg_id)
        for i, f in enumerate(self.files):
            df = pd.read_csv(f)
            x = df.values.astype(np.float32)
            nseg = 1 if x.shape[0] < min_rows else int(np.ceil(x.shape[0] / self.L))
            for s in range(nseg):
                self.index.append((i, s))
        print(f"[CSVSegments] files={len(self.files)}, segments={len(self.index)} in {root}")
        self._cache = None

    def __len__(self):
        return len(self.index)

    def __getitem__(self, gidx):
        fidx, sidx = self.index[gidx]
        if self._cache is None or self._cache[0] != fidx:
            path = self.files[fidx]
            df = pd.read_csv(path)
            x = df.values.astype(np.float32)  # (Ltot, Ctot)
            if x.shape[1] < self.C:
                x = np.concatenate([x, np.zeros((x.shape[0], self.C - x.shape[1]), np.float32)], axis=1)
            x = x[:, :self.C]
            rem = x.shape[0] % self.L
            if rem != 0:
                need = self.L - rem
                x = np.concatenate([x, np.zeros((need, self.C), np.float32)], axis=0)
            self._cache = (fidx, x)

        _, xall = self._cache
        st = sidx * self.L
        ed = st + self.L
        if ed > xall.shape[0]:
            pad = np.zeros((ed - xall.shape[0], self.C), dtype=np.float32)
            seg = np.concatenate([xall[st:], pad], axis=0)
        else:
            seg = xall[st:ed, :]
        seg = torch.from_numpy(seg.T).unsqueeze(0)  # [1, C, L]
        return seg, gidx

# 读取/整理 state_dict
def _load_state(path):
    st = torch.load(path, map_location="cpu")
    if isinstance(st, dict) and 'state_dict' in st:
        st = st['state_dict']
    if len(st) and list(st.keys())[0].startswith('module.'):
        st = collections.OrderedDict((k.replace('module.', ''), v) for k, v in st.items())
    return st

# 简单的 top1 计算（分类）
def _top1(outputs, targets):
    with torch.no_grad():
        pred = outputs.argmax(dim=1)
        return (pred == targets).float().mean().item()

def build_argparser():
    ap = argparse.ArgumentParser()
    ap.add_argument("--weights", default="resnet2d_100depth_weights.pth")
    ap.add_argument("--calib_root", default="calib")
    ap.add_argument("--val_root", default="val")          # 不存在则回退用 calib
    ap.add_argument("--outdir", default="prune_then_ptq_out")
    ap.add_argument("--removal_ratio", type=float, default=0.5)  # 删除比例（通道）
    ap.add_argument("--num_subnet", type=int, default=200)       # one-step 搜索候选数
    ap.add_argument("--pseudo_limit", type=int, default=4000)    # 用于生成伪标签的样本上限
    ap.add_argument("--eval_batch", type=int, default=8)
    ap.add_argument("--finetune_epochs", type=int, default=0)    # >0 则进行伪标签微调
    ap.add_argument("--lr", type=float, default=1e-4)
    return ap

def main():
    args = build_argparser().parse_args()
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    os.makedirs(args.outdir, exist_ok=True)

    # ===== 1) 构建与加载 FP32 模型 =====
    model = build_model()
    state = _load_state(args.weights)
    model.load_state_dict(state, strict=True)
    model.to(device).eval()

    # dummy 输入形状（与你现有脚本一致）
    dummy = torch.zeros(1, 1, C_FIXED, L_FIXED, dtype=torch.float32).to(device)

    # ===== 2) 数据集（校准 & 评测/伪标签）=====
    calib_ds = CSVSegments(args.calib_root, channels=C_FIXED, seg_len=L_FIXED)
    calib_dl = DataLoader(calib_ds, batch_size=1, shuffle=False, num_workers=0)

    val_root = args.val_root if os.path.isdir(args.val_root) else args.calib_root
    val_ds = CSVSegments(val_root, channels=C_FIXED, seg_len=L_FIXED)
    val_dl = DataLoader(val_ds, batch_size=args.eval_batch, shuffle=False, num_workers=0)

    # ===== 3) 教师模型伪标签（无真标签场景）=====
    print("[Pseudo-Label] Generating teacher labels ...")
    teacher = copy.deepcopy(model).to(device).eval()
    teacher_labels = {}
    with torch.no_grad():
        cnt = 0
        for x, gidx in val_dl:
            x = x.to(device, non_blocking=True)
            out = teacher(x)
            y = out.argmax(dim=1).cpu()
            for i, gi in enumerate(gidx.tolist()):
                teacher_labels[gi] = int(y[i].item())
            cnt += x.size(0)
            if cnt >= args.pseudo_limit:
                break
    print(f"[Pseudo-Label] Collected {len(teacher_labels)} labels.")

    # ===== 4) 裁枝 Runner（one-step）=====
    print("[Prune] Building pruning runner (one_step) ...")
    runner = get_pruning_runner(model, (dummy,), method='one_step')

    # BN 自适应校准函数（官方推荐 one-step 搜索时提供）
    def calibration_fn(m, dataloader, number_forward=100):
        m.train()
        n = 0
        with torch.no_grad():
            for x, _ in dataloader:
                x = x.to(device, non_blocking=True)
                m(x)
                n += x.size(0)
                if n >= number_forward:
                    break
        m.eval()

    # 评测函数：与官方要求一致，返回单一标量得分
    def eval_fn(m, dataloader):
        m.to(device).eval()
        hits, tot = 0, 0
        with torch.no_grad():
            for x, gidx in dataloader:
                x = x.to(device, non_blocking=True)
                out = m(x)
                pred = out.argmax(dim=1).cpu()
                # 用伪标签进行 top1 评估
                for i, gi in enumerate(gidx.tolist()):
                    if gi in teacher_labels:
                        hits += int(pred[i].item() == teacher_labels[gi])
                        tot += 1
        return (hits / max(1, tot)) if tot else 0.0

    # ===== 5) one-step 搜索 & 生成裁枝模型 =====
    print("[Prune] Searching subnetworks ...")
    # 无 GPU 环境：gpus=None 即可；有 GPU 则用 ['0']（多卡可 ['0','1',... ]）
    gpus = ['0'] if torch.cuda.is_available() else None
    runner.search(
        gpus=gpus,
        calibration_fn=calibration_fn, calib_args=(val_dl,),
        eval_fn=eval_fn, eval_args=(val_dl,),
        num_subnet=args.num_subnet,
        removal_ratio=args.removal_ratio
    )
    print("[Prune] Taking pruned model ...")
    pruned_model = runner.prune(removal_ratio=args.removal_ratio, index=None).to(device).eval()

    # ===== 6) （可选）微调被裁枝模型（伪标签 KD/监督皆可）=====
    if args.finetune_epochs > 0:
        print(f"[Finetune] Start {args.finetune_epochs} epochs (pseudo label).")
        pruned_model.train()
        # 线性层输出维度
        with torch.no_grad():
            test_out = pruned_model(next(iter(val_dl))[0].to(device))
            num_classes = test_out.shape[1]
        opt = torch.optim.AdamW(pruned_model.parameters(), lr=args.lr)
        criterion = nn.CrossEntropyLoss()
        # 用更小的 batch 以免显存/内存压力
        ft_dl = DataLoader(val_ds, batch_size=max(2, args.eval_batch//2), shuffle=True, num_workers=0)
        for ep in range(1, args.finetune_epochs+1):
            tot_loss, seen = 0.0, 0
            for x, gidx in ft_dl:
                x = x.to(device)
                # 伪标签
                y = torch.tensor([teacher_labels.get(int(i), -1) for i in gidx.tolist()], dtype=torch.long)
                mask = (y >= 0)
                if mask.sum() == 0:
                    continue
                y = y[mask].to(device)
                out = pruned_model(x[mask])
                loss = criterion(out, y)
                opt.zero_grad(set_to_none=True)
                loss.backward()
                opt.step()
                tot_loss += loss.item() * y.size(0)
                seen += y.size(0)
            pruned_model.eval()
            score = eval_fn(pruned_model, val_dl)
            print(f"[Finetune] epoch {ep}: loss={tot_loss/max(1,seen):.4f}, pseudo-Acc={score:.4f}")

    # 保存被裁枝后的 FP32 权重
    pruned_ckpt = os.path.join(args.outdir, "pruned_fp32.pth")
    torch.save(pruned_model.state_dict(), pruned_ckpt)
    print(f"[Save] pruned fp32 weights -> {pruned_ckpt}")

    # ===== 7) PTQ 量化 + 导出 XMODEL（与你现有流程一致）=====
    quant_dir = os.path.join(args.outdir, "quantize_result")
    if os.path.isdir(quant_dir):
        shutil.rmtree(quant_dir)
    os.makedirs(quant_dir, exist_ok=True)

    # A) calib
    print("[Quant] A) quant_mode=calib ...")
    q_calib = torch_quantizer("calib", pruned_model, (dummy,), output_dir=quant_dir)
    qm_calib = q_calib.quant_model
    with torch.no_grad():
        n_run = min(800, len(calib_ds))
        it = 0
        for x, _ in calib_dl:
            qm_calib(x.to(device))
            it += 1
            if it >= n_run:
                break
    q_calib.export_quant_config()

    # B) test + 导出 .xmodel
    print("[Quant] B) quant_mode=test (export xmodel) ...")
    pruned_model.eval()
    q_test = torch_quantizer("test", pruned_model, (dummy,), output_dir=quant_dir)
    qm_test = q_test.quant_model
    with torch.no_grad():
        qm_test(dummy)
    qm_test.cpu()
    q_test.export_xmodel(deploy_check=True)
    print("[Quant] export done.")

    # 列出输出
    print("[FILES]", quant_dir)
    for p in sorted(glob.glob(os.path.join(quant_dir, "**/*"), recursive=True)):
        print(" -", p)

if __name__ == "__main__":
    main()
