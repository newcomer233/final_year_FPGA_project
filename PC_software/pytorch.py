import os
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import accuracy_score, confusion_matrix, ConfusionMatrixDisplay
from torchviz import make_dot

# =================== Dataset ===================
class GestureDataset(Dataset):
    def __init__(self, folder_path, label_map):
        self.filepaths = []
        self.labels = []
        for fname in os.listdir(folder_path):
            if not fname.endswith('.csv'):
                continue
            fpath = os.path.join(folder_path, fname)
            label_name = fname.split('_')[0].upper()
            label = label_map[label_name]
            self.filepaths.append(fpath)
            self.labels.append(label)

    def __len__(self):
        return len(self.filepaths)

    def __getitem__(self, idx):
        path = self.filepaths[idx]
        data = pd.read_csv(path).values.T  # shape: [channels, time_length]
        data = torch.tensor(data, dtype=torch.float32)
        label = self.labels[idx]
        return data, label

# =================== ResNet1D ===================
class BasicBlock1D(nn.Module):
    def __init__(self, in_planes, planes, stride=1):
        super().__init__()
        self.conv1 = nn.Conv1d(in_planes, planes, kernel_size=3, stride=stride, padding=1, bias=False)
        self.bn1 = nn.BatchNorm1d(planes)
        self.relu = nn.ReLU(inplace=True)
        self.conv2 = nn.Conv1d(planes, planes, kernel_size=3, padding=1, bias=False)
        self.bn2 = nn.BatchNorm1d(planes)
        self.downsample = nn.Sequential()
        if stride != 1 or in_planes != planes:
            self.downsample = nn.Sequential(
                nn.Conv1d(in_planes, planes, kernel_size=1, stride=stride, bias=False),
                nn.BatchNorm1d(planes)
            )

    def forward(self, x):
        out = self.relu(self.bn1(self.conv1(x)))
        out = self.bn2(self.conv2(out))
        out += self.downsample(x)
        return self.relu(out)

class ResNet1D(nn.Module):
    def __init__(self, block, layers, num_classes=5, in_channels=8):
        super().__init__()
        self.in_planes = 128
        self.conv1 = nn.Conv1d(in_channels, 128, kernel_size=7, stride=2, padding=3, bias=False)
        self.bn1 = nn.BatchNorm1d(128)
        self.relu = nn.ReLU(inplace=True)
        self.layer1 = self._make_layer(block, 128,  layers[0], stride=1)
        self.layer2 = self._make_layer(block, 256, layers[1], stride=2)
        self.layer3 = self._make_layer(block, 512, layers[2], stride=2)
        self.layer4 = self._make_layer(block, 1024, layers[3], stride=2)
        self.avgpool = nn.AdaptiveAvgPool1d(1)
        self.fc = nn.Linear(1024, num_classes)

    def _make_layer(self, block, planes, blocks, stride):
        strides = [stride] + [1]*(blocks-1)
        layers = []
        for s in strides:
            layers.append(block(self.in_planes, planes, s))
            self.in_planes = planes
        return nn.Sequential(*layers)

    def forward(self, x):
        x = self.relu(self.bn1(self.conv1(x)))
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)
        x = self.avgpool(x).squeeze(-1)
        return self.fc(x)

# =================== Train Loop with Visualization ===================
def train_model():
    label_map = {'UP': 0, 'DOWN': 1, 'LEFT': 2, 'RIGHT': 3, 'STAND': 4}
    label_names = list(label_map.keys())

    # 加载数据集
    train_set = GestureDataset('E:/final_prj/software/DATA/TRAIN', label_map)
    valid_set = GestureDataset('E:/final_prj/software/DATA/VALID', label_map)
    train_loader = DataLoader(train_set, batch_size=32, shuffle=True)
    valid_loader = DataLoader(valid_set, batch_size=32)

    # 自动获取通道数
    sample_data, _ = train_set[0]
    in_channels = sample_data.shape[0]  # 自动适配通道数

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

    model = ResNet1D(BasicBlock1D, [3, 4, 6, 3], num_classes=5, in_channels=in_channels)
    model = model.to(device)

    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr=0.001)

    train_losses = []
    val_accuracies = []

    for epoch in range(1, 1000):
        model.train()
        total_loss = 0
        for x, y in train_loader:
            x, y = x.to(device), y.to(device)
            optimizer.zero_grad()
            outputs = model(x)
            loss = criterion(outputs, y)
            loss.backward()
            optimizer.step()
            total_loss += loss.item()

        # Validation
        model.eval()
        preds = []
        trues = []
        with torch.no_grad():
            for x, y in valid_loader:
                x, y = x.to(device), y.to(device)
                outputs = model(x)
                pred = outputs.argmax(dim=1)
                preds.extend(pred.cpu().numpy())
                trues.extend(y.cpu().numpy())
        acc = accuracy_score(trues, preds)

        train_losses.append(total_loss)
        val_accuracies.append(acc)

        print(f"Epoch {epoch} | Loss: {total_loss:.4f} | Val Acc: {acc:.4f}")

    # === 训练结束后导出计算图 ===
    model.eval()
    dummy_input = torch.randn(1, in_channels, sample_data.shape[1]).to(device)
    y = model(dummy_input)
    dot = make_dot(y, params=dict(model.named_parameters()))
    dot.format = "png"
    dot.render("resnet1d_graph")  # 输出 resnet1d_graph.png
    print("✅ 计算图已保存为 resnet1d_graph.png")

    # === Save Loss/Accuracy Curve ===
    plt.figure()
    plt.plot(train_losses, label='Train Loss')
    plt.plot(val_accuracies, label='Val Accuracy')
    plt.xlabel('Epoch')
    plt.ylabel('Value')
    plt.legend()
    plt.title('Training Loss & Validation Accuracy')
    plt.grid()
    plt.savefig('training_curve.png')

    # === Save Confusion Matrix ===
    cm = confusion_matrix(trues, preds)
    disp = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=label_names)
    disp.plot(cmap='Blues', xticks_rotation=45)
    plt.title('Validation Confusion Matrix')
    plt.savefig('confusion_matrix.png')

    print("训练报告图表已保存：training_curve.png 和 confusion_matrix.png")

    # === 保存模型权重 ===
    weight_path = 'resnet1d_weights.pth'
    torch.save(model.state_dict(), weight_path)
    print(f"✅ 模型权重已保存：{weight_path}")

    # 导出 ONNX
    dummy_input = torch.randn(1, in_channels, sample_data.shape[1]).to(device)
    torch.onnx.export(model, dummy_input, "resnet1d_model.onnx",
                      input_names=['input'], output_names=['output'],
                      dynamic_axes={'input': {0: 'batch_size'}, 'output': {0: 'batch_size'}},
                      opset_version=11)
    print("✅ 模型已保存并导出为 resnet1d_model.onnx")

if __name__ == "__main__":
    train_model()
