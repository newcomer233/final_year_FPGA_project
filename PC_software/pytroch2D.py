# pytorch2D_100depth.py  —— 每个CSV(1000×12)自动切成10段，每段100点；模型输入深度=100
import os
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import accuracy_score, confusion_matrix, ConfusionMatrixDisplay

# =================== 配置 ===================
NUM_CLASSES = 5
C_CHANNELS  = 12         # 传感器通道数
TOTAL_LEN   = 3500       # 每条原始序列长度
SEG_LEN     = 100        # 每段长度（固定100）
NUM_SEGS    = TOTAL_LEN // SEG_LEN  # 35 段
LABEL_MAP   = {'UP': 0, 'DOWN': 1, 'LEFT': 2, 'RIGHT': 3, 'STAND': 4}
LABEL_NAMES = list(LABEL_MAP.keys())

# =================== 数据集：按文件切成10段 ===================
class GestureDatasetSegments(Dataset):
    """
    传入一个目录，目录内全是CSV（每个1000×12）。
    数据集会把每个CSV拆成10段×100点，每段作为一个训练样本；10段的label相同。
    __getitem__ 返回 (x, y)，其中 x:[1, C, 100]，y: int。
    """
    def __init__(self, folder_path, label_map, channels=C_CHANNELS, total_len=TOTAL_LEN, seg_len=SEG_LEN):
        self.channels = channels
        self.total_len = total_len
        self.seg_len = seg_len
        self.file_list = []
        self.seg_index = []   # 与 file_list 对齐，记录该样本对应的段序号 [0..9]
        self.labels = []
        self.orig_file = []   # 可选：记录原始文件名，验证时可按文件聚合

        for fname in os.listdir(folder_path):
            if not fname.endswith('.csv'):
                continue
            fpath = os.path.join(folder_path, fname)
            label_name = fname.split('_')[0].upper()
            if label_name not in label_map:
                continue
            label = label_map[label_name]
            # 为该文件生成10个段样本
            for s in range(self.total_len // self.seg_len):
                self.file_list.append(fpath)
                self.seg_index.append(s)
                self.labels.append(label)
                self.orig_file.append(fname)

        print(f"[Dataset] {folder_path}: files={len(set(self.file_list))}, segments={len(self.file_list)}")

    def __len__(self):
        return len(self.file_list)

    def __getitem__(self, idx):
        path = self.file_list[idx]
        sidx = self.seg_index[idx]   # 段序号 0..9
        label = self.labels[idx]

        # 读CSV -> (L, C_total)，容忍表头/列名
        df = pd.read_csv(path)
        x = df.values.astype(np.float32)  # (L, C_total)

        # 截断/补齐到1000×C
        if x.shape[0] < self.total_len:
            pad = np.zeros((self.total_len - x.shape[0], x.shape[1]), dtype=np.float32)
            x = np.concatenate([x, pad], axis=0)
        x = x[:self.total_len, :]  # (1000, C_total)

        # 只取前C_CHANNELS列，不足则补0
        if x.shape[1] < self.channels:
            padc = np.zeros((x.shape[0], self.channels - x.shape[1]), dtype=np.float32)
            x = np.concatenate([x, padc], axis=1)
        x = x[:, :self.channels]  # (1000, C)

        # 取该段的100点片段
        st = sidx * self.seg_len
        ed = st + self.seg_len
        seg = x[st:ed, :]                 # (100, C)

        # 转成 [1, C, 100]
        seg = seg.T                       # (C, 100)
        seg = torch.from_numpy(seg).unsqueeze(0)  # [1, C, 100]

        return seg, label

# =================== ResNet2D 基础模型（输入=单段100点） ===================
class BasicBlock2D(nn.Module):
    def __init__(self, in_planes, planes, stride=1):
        super().__init__()
        self.conv1 = nn.Conv2d(in_planes, planes, kernel_size=(3,7), stride=(1,stride),
                               padding=(1,3), bias=False)
        self.bn1 = nn.BatchNorm2d(planes)
        self.relu = nn.ReLU(inplace=True)
        self.conv2 = nn.Conv2d(planes, planes, kernel_size=(3,7), stride=1,
                               padding=(1,3), bias=False)
        self.bn2 = nn.BatchNorm2d(planes)
        self.downsample = nn.Sequential()
        if stride != 1 or in_planes != planes:
            self.downsample = nn.Sequential(
                nn.Conv2d(in_planes, planes, kernel_size=1, stride=(1,stride), bias=False),
                nn.BatchNorm2d(planes)
            )
    def forward(self, x):
        y = self.relu(self.bn1(self.conv1(x)))
        y = self.bn2(self.conv2(y))
        y += self.downsample(x)
        return self.relu(y)

class ResNet2D_100(nn.Module):
    """
    输入: [N, 1, C=12, L=100]（单段）
    """
    def __init__(self, block=BasicBlock2D, layers=(3,4,6,3), num_classes=NUM_CLASSES):
        super().__init__()
        self.in_planes = 128
        self.conv1 = nn.Conv2d(1, 128, kernel_size=(3,7), stride=(1,2), padding=(1,3), bias=False)
        self.bn1 = nn.BatchNorm2d(128)
        self.relu = nn.ReLU(inplace=True)
        self.layer1 = self._make_layer(block, 128, layers[0], stride=1)
        self.layer2 = self._make_layer(block, 256, layers[1], stride=2)
        self.layer3 = self._make_layer(block, 512, layers[2], stride=2)
        self.layer4 = self._make_layer(block, 1024, layers[3], stride=2)
        self.avgpool = nn.AdaptiveAvgPool2d((1,1))
        self.fc = nn.Linear(1024, num_classes)

    def _make_layer(self, block, planes, blocks, stride):
        strides = [stride] + [1]*(blocks-1)
        layers = []
        for s in strides:
            layers.append(block(self.in_planes, planes, s))
            self.in_planes = planes
        return nn.Sequential(*layers)

    def forward(self, x):  # x: [N,1,C,100]
        x = self.relu(self.bn1(self.conv1(x)))
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)
        x = self.avgpool(x).view(x.size(0), -1)
        return self.fc(x)

# =================== 训练/验证 ===================
def train_model(
    train_dir="E:/final_prj/software/DATA/TRAIN",
    valid_dir="E:/final_prj/software/DATA/VALID",
    epochs=100,
    batch_size=64,
    lr=1e-3,
):
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

    train_set = GestureDatasetSegments(train_dir, LABEL_MAP)
    valid_set = GestureDatasetSegments(valid_dir, LABEL_MAP)

    train_loader = DataLoader(train_set, batch_size=batch_size, shuffle=True, num_workers=0)
    valid_loader = DataLoader(valid_set, batch_size=batch_size, shuffle=False, num_workers=0)

    # 检查一个样本形状
    sample_x, _ = train_set[0]  # [1,C,100]
    print(f"[Check] sample seg shape: {tuple(sample_x.shape)} (expect [1,{C_CHANNELS},{SEG_LEN}])")

    model = ResNet2D_100().to(device)
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr=lr)

    train_losses, val_accs = [], []

    for epoch in range(1, epochs+1):
        # 训练
        model.train()
        total_loss = 0.0
        for x, y in train_loader:
            # x: [B,1,C,100]
            x = x.to(device)
            y = y.to(device)
            optimizer.zero_grad()
            out = model(x)
            loss = criterion(out, y)
            loss.backward()
            optimizer.step()
            total_loss += loss.item()

        # 验证（按“段”为单位的精度）
        model.eval()
        preds, trues = [], []
        with torch.no_grad():
            for x, y in valid_loader:
                x = x.to(device)
                out = model(x)
                pred = out.argmax(dim=1).cpu().numpy().tolist()
                preds.extend(pred)
                trues.extend(y.numpy().tolist())

        acc = accuracy_score(trues, preds)
        train_losses.append(total_loss)
        val_accs.append(acc)
        print(f"Epoch {epoch:03d} | TrainLoss {total_loss:.4f} | ValAcc(seg) {acc:.4f}")

    # 画图
    plt.figure()
    plt.plot(train_losses, label='Train Loss')
    plt.plot(val_accs, label='Val Acc (per-segment)')
    plt.xlabel('Epoch'); plt.legend(); plt.grid(); plt.title('Training Loss & Validation Acc (segment)')
    plt.savefig('training_curve_100.png')

    # 混淆矩阵（按段统计）
    cm = confusion_matrix(trues, preds)
    disp = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=LABEL_NAMES)
    disp.plot(cmap='Blues', xticks_rotation=45)
    plt.title('Validation Confusion Matrix (per-segment)')
    plt.savefig('confmat_100.png')
    print("✅ 图表已保存：training_curve_100.png, confmat_100.png")

    # 保存模型
    weight_path = 'resnet2d_100depth_weights.pth'
    torch.save(model.state_dict(), weight_path)
    print(f"✅ 模型权重已保存：{weight_path}")

    # 导出 ONNX（给 Vitis AI 用的 dummy 形状：1×1×12×100）
    dummy = torch.randn(1, 1, C_CHANNELS, SEG_LEN, device=device)
    torch.onnx.export(
        model, dummy, "resnet2d_100depth.onnx",
        input_names=['input'], output_names=['output'],
        dynamic_axes={'input': {0: 'batch'}, 'output': {0: 'batch'}},
        opset_version=11
    )
    print("✅ 已导出 ONNX：resnet2d_100depth.onnx")

if __name__ == "__main__":
    # 按需修改成你的实际数据路径（容器里一般是 /workspace/...）
    train_model(
        train_dir="E:/final_prj/software/DATA/TRAIN",
        valid_dir="E:/final_prj/software/DATA/VALID",
        epochs=1000,
        batch_size=64,
        lr=1e-3
    )
