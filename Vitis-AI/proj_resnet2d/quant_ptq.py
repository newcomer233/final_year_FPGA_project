import os, glob, collections
import numpy as np
import pandas as pd
import torch
from torch.utils.data import Dataset, DataLoader

# 兼容导入
try:
    from code.model_def import build_model, C_FIXED, L_FIXED
except Exception:
    from model_def import build_model, C_FIXED, L_FIXED

from pytorch_nndct.apis import torch_quantizer

# ====== 校准数据集：按CSV切成若干段(每段100点) ======
class CalibCSVSegments(Dataset):
    """
    读取 root 下的 CSV：
      - 只取前 C_FIXED 列（12 通道）
      - 按 L_FIXED=100 点切段
      - 不足补零，长度非整段也在末尾补零到整段
    输出形状: [1,1,C_FIXED,L_FIXED]
    """
    def __init__(self, root, channels=C_FIXED, seg_len=L_FIXED, min_rows=L_FIXED):
        self.files = sorted([os.path.join(root, f) for f in os.listdir(root) if f.endswith('.csv')])
        self.C, self.L = channels, seg_len
        self.index = []  # (file_idx, seg_id)
        for i, f in enumerate(self.files):
            df = pd.read_csv(f)
            x = df.values.astype(np.float32)
            if x.shape[0] < min_rows:
                # 太短也补成1段
                nseg = 1
            else:
                nseg = int(np.ceil(x.shape[0] / self.L))
            for s in range(nseg):
                self.index.append((i, s))
        print(f"[CalibCSVSegments] files={len(self.files)}, segments={len(self.index)} in {root}")
        self._cache = None

    def __len__(self):
        return len(self.index)

    def __getitem__(self, idx):
        fidx, sidx = self.index[idx]
        if self._cache is None or self._cache[0] != fidx:
            path = self.files[fidx]
            df = pd.read_csv(path)
            x = df.values.astype(np.float32)      # (Ltot, Ctot)
            # 列数不足补到 C_FIXED
            if x.shape[1] < self.C:
                x = np.concatenate([x, np.zeros((x.shape[0], self.C - x.shape[1]), np.float32)], axis=1)
            x = x[:, :self.C]
            # 末尾补零到整段
            rem = x.shape[0] % self.L
            if rem != 0:
                need = self.L - rem
                x = np.concatenate([x, np.zeros((need, self.C), np.float32)], axis=0)
            self._cache = (fidx, x)

        _, xall = self._cache
        st = sidx * self.L
        ed = st + self.L
        # 越界保护（最后一段可能超范围）
        if ed > xall.shape[0]:
            pad = np.zeros((ed - xall.shape[0], self.C), dtype=np.float32)
            seg = np.concatenate([xall[st:], pad], axis=0)
        else:
            seg = xall[st:ed, :]                   # (L, C)

        seg = torch.from_numpy(seg.T).unsqueeze(0)  # [1,C,L]
        return seg


def _load_state(path):
    st = torch.load(path, map_location="cpu")
    if isinstance(st, dict) and 'state_dict' in st:
        st = st['state_dict']
    if len(st) and list(st.keys())[0].startswith('module.'):
        st = collections.OrderedDict((k.replace('module.', ''), v) for k, v in st.items())
    return st

if __name__ == "__main__":
    import shutil
    outdir = "quantize_result"
    if os.path.isdir(outdir):
        shutil.rmtree(outdir)
    os.makedirs(outdir, exist_ok=True)

    # ====== 1) 构建模型并严格加载训练权重 ======
    model = build_model()
    WEIGHT_PATH = "resnet2d_100depth_weights.pth"  # 与训练脚本保存名一致
    state = _load_state(WEIGHT_PATH)
    model.load_state_dict(state, strict=True)
    model.eval()

    dummy = torch.zeros(1, 1, C_FIXED, L_FIXED, dtype=torch.float32)

    # ====== A: calib 收集统计 ======
    print("[A] quant_mode=calib ...")
    q_calib = torch_quantizer("calib", model, (dummy,), output_dir=outdir)
    qm_calib = q_calib.quant_model

    # 放校准CSV到 ./calib/ 目录
    ds = CalibCSVSegments("calib", channels=C_FIXED, seg_len=L_FIXED)
    dl = DataLoader(ds, batch_size=1, shuffle=False, num_workers=0)

    n_run = min(800, len(ds))  # 取若干段用于校准，按需调整
    with torch.no_grad():
        for i, x in enumerate(dl, 1):
            qm_calib(x)
            if i >= n_run:
                break
    q_calib.export_quant_config()

    # ====== B: test 导出 xmodel ======
    print("[B] quant_mode=test (export xmodel) ...")
    model.eval()
    q_test = torch_quantizer("test", model, (dummy,), output_dir=outdir)
    qm_test = q_test.quant_model
    with torch.no_grad():
        qm_test(dummy)
    qm_test.cpu()
    q_test.export_xmodel(deploy_check=True)
    print("[B] export done.")

    print("[FILES] quantize_result:")
    for p in sorted(glob.glob(os.path.join(outdir, "**/*"), recursive=True)):
        print(" -", p)

