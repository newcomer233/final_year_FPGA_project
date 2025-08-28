import torch
import torch.nn as nn

NUM_CLASSES = 5
C_FIXED = 12       # 通道数与训练一致
L_FIXED = 100      # 每段长度与训练一致

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
                nn.BatchNorm2d(planes),
            )

    def forward(self, x):
        y = self.relu(self.bn1(self.conv1(x)))
        y = self.bn2(self.conv2(y))
        y += self.downsample(x)
        return self.relu(y)

class ResNet2D_100(nn.Module):
    """
    输入: [N, 1, C=12, L=100]
    结构需与训练脚本 pytroch2D.py 完全一致，保证严格加载权重。
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
        strides = [stride] + [1] * (blocks - 1)
        layers = []
        for s in strides:
            layers.append(block(self.in_planes, planes, s))
            self.in_planes = planes
        return nn.Sequential(*layers)

    def forward(self, x):  # x: [N,1,12,100]
        x = self.relu(self.bn1(self.conv1(x)))
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)
        x = self.avgpool(x).view(x.size(0), -1)
        return self.fc(x)

def build_model():
    return ResNet2D_100()

