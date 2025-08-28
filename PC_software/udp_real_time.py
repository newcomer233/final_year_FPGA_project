import pyshark
import csv
import os

TSHARK_PATH = r"D:\Program Files\Wireshark\tshark.exe"
INTERFACE = "以太网"   # 或者 WiFi 接口名，用 `pyshark.LiveCapture.interfaces` 查看
SRC_IP = "192.168.1.100"
DST_PORT = 5678

output_csv = "realtime_capture.csv"

# 创建 CSV 文件并写入表头
if not os.path.exists(output_csv):
    with open(output_csv, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow([f'sample{i+1}' for i in range(22)])  # 22 个 16-bit 样本

# 开始实时抓包
capture = pyshark.LiveCapture(interface=INTERFACE, display_filter='ip && udp', tshark_path=TSHARK_PATH)

print("开始实时抓包（Ctrl+C 停止）...")

try:
    for packet in capture.sniff_continuously():
        try:
            # 过滤指定 IP 和端口
            if packet.ip.src != SRC_IP:
                continue
            if int(packet.udp.dstport) != DST_PORT:
                continue

            # 提取 payload
            payload_hex = packet.udp.payload.replace(':', '')
            payload_bytes = bytes.fromhex(payload_hex)

            # 提取前 44 字节（22 x 16-bit）
            sample_bytes = payload_bytes[:44]
            samples = [
                int.from_bytes(sample_bytes[i:i+2], byteorder='little')
                for i in range(0, 44, 2)
            ]

            # 追加到 CSV
            with open(output_csv, 'a', newline='') as f:
                writer = csv.writer(f)
                writer.writerow(samples)

            print(f"抓到 1 包，写入 CSV：{samples[:4]} ...")

        except Exception as e:
            print(f"跳过一个包: {e}")
            continue

except KeyboardInterrupt:
    print("停止抓包")
    capture.close()
