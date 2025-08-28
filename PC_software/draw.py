# viz_resnet2d.py
import torch
import torch.nn as nn
import hiddenlayer as hl

NUM_CLASSES = 5
C_CHANNELS  = 12   # 你的通道数
SEG_LEN     = 100  # 窗口长度

# ---------- ResNet2D 定义 ----------
class BasicBlock2D(nn.Module):
    def __init__(self, in_planes, planes, stride=1):
        super().__init__()
        self.conv1 = nn.Conv2d(in_planes, planes, kernel_size=(3,7), stride=(1, stride),
                               padding=(1,3), bias=False)
        self.bn1 = nn.BatchNorm2d(planes)
        self.relu = nn.ReLU(inplace=True)
        self.conv2 = nn.Conv2d(planes, planes, kernel_size=(3,7), stride=1,
                               padding=(1,3), bias=False)
        self.bn2 = nn.BatchNorm2d(planes)
        self.downsample = nn.Sequential()
        if stride != 1 or in_planes != planes:
            self.downsample = nn.Sequential(
                nn.Conv2d(in_planes, planes, kernel_size=1, stride=(1, stride), bias=False),
                nn.BatchNorm2d(planes)
            )

    def forward(self, x):
        identity = x
        out = self.relu(self.bn1(self.conv1(x)))
        out = self.bn2(self.conv2(out))
        out = out + self.downsample(identity)
        return self.relu(out)

class ResNet2D_100(nn.Module):
    """ 输入: [N, 1, C=12, L=100] """
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

    def forward(self, x):         # x: [N,1,C,100]
        x = self.relu(self.bn1(self.conv1(x)))
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)
        x = self.avgpool(x).view(x.size(0), -1)
        return self.fc(x)

def main():
    # 1) 构建模型
    model = ResNet2D_100().eval()

    # 2) 如需加载权重，取消下一行注释并填路径
    # model.load_state_dict(torch.load("resnet2d_100depth_weights.pth", map_location="cpu"))

    # 3) HiddenLayer 构图（注意输入维度 NCHW）
    dummy = torch.zeros(1, 1, C_CHANNELS, SEG_LEN)  # [1,1,12,100]
    graph = hl.build_graph(model, dummy)

    # 4) 主题与导出
    graph.theme = hl.graph.THEMES["blue"].copy()
    graph.save("resnet2d_graph.png", format="png")
    graph.save("resnet2d_graph.svg", format="svg")
    print("Saved: resnet2d_graph.png, resnet2d_graph.svg")

if __name__ == "__main__":
    main()
