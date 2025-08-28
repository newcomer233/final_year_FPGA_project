import pyshark
import csv
import os

# 需要处理的 pcapng 文件列表
files = ["down.pcapng", "up.pcapng", "right.pcapng", "stand.pcapng", "left.pcapng"]

# 公共参数
TSHARK_PATH = r"D:\Program Files\Wireshark\tshark.exe"  # 注意路径和反斜杠
SRC_IP = "192.168.1.100"  # 源 IP
DST_PORT = 5678           # 目标端口

# 需要保留的样本索引（0-based）
keep_indices = [0, 1, 2, 3, 4, 5, 9, 10, 11, 16, 17, 18]

for pcap_file in files:
    # 输出 CSV 文件名
    base_name = os.path.splitext(pcap_file)[0]
    output_csv = f"{base_name}.csv"

    # 打开 pcapng 文件，过滤 UDP 包
    cap = pyshark.FileCapture(
        pcap_file,
        display_filter='ip && udp',
        tshark_path=TSHARK_PATH
    )

    rows = []

    for packet in cap:
        try:
            # 过滤指定 IP 和端口
            if packet.ip.src != SRC_IP:
                continue
            if int(packet.udp.dstport) != DST_PORT:
                continue

            # 提取 UDP payload
            payload_hex = packet.udp.payload.replace(':', '')
            payload_bytes = bytes.fromhex(payload_hex)

            # 提取前 44 字节（22 个 16-bit 样本）
            sample_bytes = payload_bytes[:44]
            samples = [
                int.from_bytes(sample_bytes[i:i+2], byteorder='little')
                for i in range(0, 44, 2)
            ]

            # 选取需要的索引
            filtered_samples = [samples[i] for i in keep_indices]

            rows.append(filtered_samples)

        except Exception as e:
            print(f"跳过 {pcap_file} 中一个包: {e}")
            continue

    cap.close()

    # 保存到 CSV
    with open(output_csv, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow([f'sample{i+1}' for i in range(len(keep_indices))])
        writer.writerows(rows)

    print(f"{pcap_file} → {output_csv} 提取 {len(rows)} 包完成")

print("全部五个 pcapng 文件处理完成！")
