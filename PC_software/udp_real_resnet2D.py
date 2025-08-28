import threading, queue, time, os
import numpy as np
import torch
import torch.nn as nn
import torch.optim as optim
import pyshark
import keyboard  # pip install keyboard

from pytroch2D import ResNet2D, BasicBlock2D, SegmentedResNet2D

# ========== 参数 ==========
LABEL_MAP = {0: 'UP', 1: 'DOWN', 2: 'LEFT', 3: 'RIGHT', 4: 'STAND'}
CHANNELS = 12
TIME_LENGTH = 1000
PRED_INTERVAL = 100
KEEP_INDICES = [0,1,2,3,4,5,9,10,11,16,17,18]
SRC_IP = "192.168.1.100"
DST_PORT = 5678
TSHARK_PATH = r"D:\Program Files\Wireshark\tshark.exe"
INTERFACE = "以太网"

# ========== 全局队列 ==========
data_queue = queue.Queue()   # 推理队列
train_queue = queue.Queue()  # 训练队列
label_queue = queue.Queue()  # 键盘标签队列
stop_flag = False

# ========== 键盘标记线程 ==========
def label_input():
    print("键盘标记：1=UP, 2=DOWN, 3=LEFT, 4=RIGHT, 5=STAND")
    while not stop_flag:
        if keyboard.is_pressed('1'):
            label_queue.put(0); print("标记: UP"); time.sleep(0.3)
        elif keyboard.is_pressed('2'):
            label_queue.put(1); print("标记: DOWN"); time.sleep(0.3)
        elif keyboard.is_pressed('3'):
            label_queue.put(2); print("标记: LEFT"); time.sleep(0.3)
        elif keyboard.is_pressed('4'):
            label_queue.put(3); print("标记: RIGHT"); time.sleep(0.3)
        elif keyboard.is_pressed('5'):
            label_queue.put(4); print("标记: STAND"); time.sleep(0.3)
        else:
            time.sleep(0.05)

# ========== UDP 数据采集 ==========
def udp_capture():
    buffer = np.zeros((CHANNELS, TIME_LENGTH), dtype=np.float32)
    idx = 0
    capture = pyshark.LiveCapture(interface=INTERFACE, display_filter='ip && udp', tshark_path=TSHARK_PATH)
    print("开始实时抓包...")

    for packet in capture.sniff_continuously():
        if stop_flag: break
        try:
            if packet.ip.src != SRC_IP or int(packet.udp.dstport) != DST_PORT:
                continue
            payload_hex = packet.udp.payload.replace(':','')
            payload_bytes = bytes.fromhex(payload_hex)
            sample_bytes = payload_bytes[:44]
            samples_22 = [
                int.from_bytes(sample_bytes[i:i+2], 'little')
                for i in range(0,44,2)
            ]
            filtered = [samples_22[i] for i in KEEP_INDICES]
            buffer[:, idx] = filtered
            idx = (idx + 1) % TIME_LENGTH

            # 每 PRED_INTERVAL 帧送一次推理队列
            if idx % PRED_INTERVAL == 0:
                data_queue.put(buffer.copy())
                # 如果有标记，送去训练队列
                if not label_queue.empty():
                    label = label_queue.get()
                    train_queue.put((buffer.copy(), label))

        except Exception as e:
            print("跳过包:", e)

# ========== 推理线程 ==========
def inference_loop(model):
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model.to(device)
    model.eval()

    while not stop_flag:
        if not data_queue.empty():
            buf = data_queue.get()
            x = torch.tensor(buf, dtype=torch.float32).unsqueeze(0).unsqueeze(0).to(device)
            with torch.no_grad():
                pred = model(x).argmax(dim=1).item()
            print(f"[推理] 预测类别: {LABEL_MAP[pred]}")
        else:
            time.sleep(0.01)

# ========== 增量训练线程 ==========
def training_loop(model):
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model.to(device)
    optimizer = optim.Adam(model.parameters(), lr=1e-4)
    criterion = nn.CrossEntropyLoss()

    while not stop_flag:
        if not train_queue.empty():
            buf, label = train_queue.get()
            x = torch.tensor(buf, dtype=torch.float32).unsqueeze(0).unsqueeze(0).to(device)
            y = torch.tensor([label], dtype=torch.long).to(device)

            model.train()
            optimizer.zero_grad()
            out = model(x)
            loss = criterion(out, y)
            loss.backward()
            optimizer.step()

            print(f"[训练] 增量更新，loss={loss.item():.4f}")
        else:
            time.sleep(0.1)

# ========== 主程序 ==========
def main():
    # 初始化模型
    base_model = ResNet2D(BasicBlock2D, [3,4,6,3])
    model = SegmentedResNet2D(base_model, num_segments=10, num_classes=5)

    # 启动线程
    threading.Thread(target=label_input, daemon=True).start()
    threading.Thread(target=udp_capture, daemon=True).start()
    threading.Thread(target=inference_loop, args=(model,), daemon=True).start()
    threading.Thread(target=training_loop, args=(model,), daemon=True).start()

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        global stop_flag
        stop_flag = True
        print("程序结束")

if __name__ == "__main__":
    main()
