import pyshark
import onnxruntime as ort
import numpy as np
import time  # === NEW ===
from datetime import datetime  # === NEW ===

# ===================== 参数配置 =====================
TSHARK_PATH = r"D:\Program Files\Wireshark\tshark.exe"  # Wireshark 安装路径
INTERFACE = "以太网"           # 抓包网卡名称，可用 pyshark.LiveCapture.interfaces 查看
SRC_IP = "192.168.1.100"      # 源 IP
DST_PORT = 5678               # 目标端口
KEEP_INDICES = [0, 1, 2, 3, 4, 5, 9, 10, 11, 16, 17, 18]  # 22通道中取12通道
TIME_LENGTH = 1000            # 模型训练窗口长度
PRED_INTERVAL = 100           # 每隔100帧预测一次
CHANNELS = len(KEEP_INDICES)  # 12通道

# 类别映射（与你训练时一致）
LABEL_MAP = {0: 'UP', 1: 'DOWN', 2: 'LEFT', 3: 'RIGHT', 4: 'STAND'}

# ===================== 时间格式化 =====================  # === NEW ===
def fmt_ts(ts_epoch: float) -> str:
    return datetime.fromtimestamp(ts_epoch).strftime("%H:%M:%S.%f")[:-3]

# ===================== 加载 ONNX 模型 =====================
session = ort.InferenceSession("seg_resnet2d_model.onnx", providers=['CPUExecutionProvider'])
input_name = session.get_inputs()[0].name
output_name = session.get_outputs()[0].name

# ===================== 缓冲区初始化 =====================
buffer = np.zeros((CHANNELS, TIME_LENGTH), dtype=np.float32)
idx = 0  # 当前写入位置
total_frames = 0  # === NEW === 总帧计数（可选）
last_read_ts = None  # === NEW === 最近一次写入的墙钟时间

# ===================== 预处理函数 =====================
def preprocess_samples(samples_22):
    """从22通道数据中提取12通道（不归一化）"""
    return [samples_22[i] for i in KEEP_INDICES]

# ===================== 实时抓包推理 =====================
print("开始实时抓包 + 推理（Ctrl+C 停止）...")

capture = pyshark.LiveCapture(interface=INTERFACE, display_filter='ip && udp', tshark_path=TSHARK_PATH)

try:
    for packet in capture.sniff_continuously():
        try:
            # 过滤 IP 和端口
            if packet.ip.src != SRC_IP or int(packet.udp.dstport) != DST_PORT:
                continue

            # 提取 UDP payload
            payload_hex = packet.udp.payload.replace(':', '')
            payload_bytes = bytes.fromhex(payload_hex)

            # 22 x 16-bit 样本
            sample_bytes = payload_bytes[:44]
            if len(sample_bytes) < 44:
                continue  # 数据不完整，跳过
            samples_22 = [
                int.from_bytes(sample_bytes[i:i+2], byteorder='little', signed=False)
                for i in range(0, 44, 2)
            ]

            # 预处理（选取12通道，不归一化）
            filtered_samples = preprocess_samples(samples_22)

            # 写入缓冲区（循环覆盖）
            buffer[:, idx] = filtered_samples
            idx = (idx + 1) % TIME_LENGTH
            total_frames += 1  # === NEW ===
            last_read_ts = time.time()  # === NEW === 记录该帧到达的墙钟时间

            # 每 PRED_INTERVAL 帧预测一次
            if total_frames % PRED_INTERVAL == 0:
                t_read = last_read_ts if last_read_ts is not None else time.time()  # === NEW ===
                # 构造模型输入 [1,1,12,1000]
                input_data = buffer[np.newaxis, np.newaxis, :, :].astype(np.float32)
                outputs = session.run([output_name], {input_name: input_data})
                t_pred = time.time()  # === NEW ===

                pred = int(np.argmax(outputs[0], axis=1)[0])
                latency_ms = (t_pred - t_read) * 1000.0  # === NEW ===

                # === NEW === 统一输出：读取时间、结果时间、时延
                # print(f"[推理] 读取时间={fmt_ts(t_read)} | 结果时间={fmt_ts(t_pred)} | 延迟={latency_ms:.1f} ms | 预测类别: {LABEL_MAP.get(pred, pred)} | 帧计数: {total_frames}")
                print(f"[Inference] Read Time = {fmt_ts(t_read)} | Result Time = {fmt_ts(t_pred)} | Latency = {latency_ms:.1f} ms | Predicted Class: {LABEL_MAP.get(pred, pred)} | Frame Count: {total_frames}")

        except Exception as e:
            print(f"跳过一个包: {e}")
            continue

except KeyboardInterrupt:
    print("停止抓包")
    capture.close()
