import csv
import os

# 要处理的文件列表
files = ["down.csv", "up.csv", "right.csv", "stand.csv", "left.csv"]

for input_csv in files:
    # 自动生成输出文件名
    base_name = os.path.splitext(input_csv)[0]
    first_output = f"{base_name}_train.csv"
    second_output = f"{base_name}_test.csv"

    # 读取数据
    with open(input_csv, 'r') as f:
        reader = csv.reader(f)
        header = next(reader)
        data = list(reader)

    total_rows = len(data)
    mid = total_rows // 2

    # 检查数据是否足够
    if total_rows < 7000:
        raise ValueError(f"{input_csv} 数据行数只有 {total_rows}，不足 7000 行，无法分出两个 1000 段")

    # 分割数据
    first_1000 = data[mid - 3500:mid]
    second_1000 = data[mid:mid + 3500]

    # 保存 train 文件
    with open(first_output, 'w', newline='') as f1:
        writer = csv.writer(f1)
        writer.writerow(header)
        writer.writerows(first_1000)

    # 保存 test 文件
    with open(second_output, 'w', newline='') as f2:
        writer = csv.writer(f2)
        writer.writerow(header)
        writer.writerows(second_1000)

    print(f"文件 {input_csv} 已拆分：")
    print(f"  → {first_output}")
    print(f"  → {second_output}")

print("全部 5 个文件处理完成！")
