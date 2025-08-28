import os
import numpy as np
import pandas as pd
import onnxruntime as ort
from sklearn.metrics import accuracy_score, f1_score, confusion_matrix
import matplotlib.pyplot as plt

# ==================== 配置 ====================
DATASET_FOLDER = r"E:/final_prj/software/DATA/VALID"
LABEL_MAP = {'UP':0,'DOWN':1,'LEFT':2,'RIGHT':3,'STAND':4}
LABEL_NAMES = list(LABEL_MAP.keys())
WINDOW_LEN = 1000
SEG_LEN = 100
NUM_SEGS = WINDOW_LEN // SEG_LEN  # 10
MODELS = [
    # (模型路径, 模式标识, 使用的列索引)
    (r"resnet2d_100depth_fsr.onnx",  "FSR",    list(range(0,6))),    # 后6列
    (r"resnet2d_100depth_imu.onnx",  "IMU",    list(range(6,12))),   # 前6列
    (r"resnet2d_100depth.onnx",      "FUSION", list(range(0,12)))    # 全12列
]

# ==================== 工具函数 ====================
def load_csv_1000xC(path, use_cols):
    df = pd.read_csv(path)
    x = df.iloc[:, use_cols].values.astype(np.float32)  # [1000, C]
    # 截断/补齐到 1000
    if x.shape[0] < WINDOW_LEN:
        pad = np.zeros((WINDOW_LEN - x.shape[0], x.shape[1]), dtype=np.float32)
        x = np.concatenate([x, pad], axis=0)
    x = x[:WINDOW_LEN]
    return x  # [1000, C]

def slice_to_segments(x_1000xC):
    # 返回 [10, 1, C, 100]
    C = x_1000xC.shape[1]
    segs = []
    for s in range(NUM_SEGS):
        st, ed = s*SEG_LEN, (s+1)*SEG_LEN
        seg = x_1000xC[st:ed].T[None, :, :]     # [1, C, 100]
        segs.append(seg)
    segs = np.stack(segs, axis=0)               # [10, 1, C, 100]
    return segs

def ort_session(model_path):
    return ort.InferenceSession(model_path, providers=['CPUExecutionProvider'])

def run_segments(sess, x_segments):
    # x_segments: [S, 1, C, 100]
    in_name = sess.get_inputs()[0].name
    outs = []
    for s in range(x_segments.shape[0]):
        ort_out = sess.run(None, {in_name: x_segments[s:s+1].astype(np.float32)})
        outs.append(ort_out[0])  # [1, num_classes]
    logits = np.concatenate(outs, axis=0)       # [S, num_classes]
    return logits

def predict_filelevel_from_segments(logits):
    # 平均 logits 再 argmax（更稳）
    mean_logits = logits.mean(axis=0, keepdims=True)  # [1, num_classes]
    return int(np.argmax(mean_logits, axis=1)[0])

def draw_confmat(cm, title, save_path):
    plt.figure(figsize=(5.2,4.6))
    plt.imshow(cm, interpolation='nearest', cmap='Blues')
    plt.title(title); plt.colorbar()
    tick_marks = np.arange(len(LABEL_NAMES))
    plt.xticks(tick_marks, LABEL_NAMES, rotation=45)
    plt.yticks(tick_marks, LABEL_NAMES)
    thresh = cm.max() / 2.0 if cm.max() > 0 else 1
    for i in range(cm.shape[0]):
        for j in range(cm.shape[1]):
            plt.text(j, i, format(cm[i, j], 'd'),
                     ha="center", va="center",
                     color="white" if cm[i, j] > thresh else "black")
    plt.ylabel('True'); plt.xlabel('Predicted')
    plt.tight_layout()
    plt.savefig(save_path, dpi=150)
    plt.close()

def channel_ablation(sess, x_1000xC, used_cols, baseline_pred, mode_tag):
    """
    对文件级进行通道消融：对每个通道，将其整段置零，重跑10段，比较 file-level 是否变错；
    返回：每通道“变错计数”/总文件数，以及简单的 accuracy drop。
    更细可以改成按概率/宏F1下降，但文件级统计更直观。
    """
    C = len(used_cols)
    return C

# ==================== 主流程 ====================
def evaluate_one_model(model_path, mode_tag, used_cols):
    print(f"\n=== Evaluating {mode_tag} | model: {model_path} | cols: {used_cols} ===")
    sess = ort_session(model_path)

    filepaths, y_true = [], []
    for fname in os.listdir(DATASET_FOLDER):
        if not fname.endswith('.csv'):
            continue
        lab = fname.split('_')[0].upper()
        if lab not in LABEL_MAP: 
            continue
        filepaths.append(os.path.join(DATASET_FOLDER, fname))
        y_true.append(LABEL_MAP[lab])
    y_true = np.array(y_true, dtype=int)

    # —— 每文件：切片 → 段级推理 → 文件级预测
    y_pred_file = []
    all_seg_preds = []  # 可选：段级评估
    for p in filepaths:
        x = load_csv_1000xC(p, used_cols)         # [1000, C]
        segs = slice_to_segments(x)                # [10, 1, C, 100]
        logits = run_segments(sess, segs)          # [10, num_classes]
        seg_pred = np.argmax(logits, axis=1)       # [10]
        all_seg_preds.extend(seg_pred.tolist())
        y_pred_file.append(predict_filelevel_from_segments(logits))
    y_pred_file = np.array(y_pred_file, dtype=int)

    # —— 指标
    acc_file = accuracy_score(y_true, y_pred_file)
    f1_file  = f1_score(y_true, y_pred_file, average='macro')
    print(f"[{mode_tag}] File-level  Accuracy: {acc_file:.4f} | macro-F1: {f1_file:.4f}")

    # —— 混淆矩阵（文件级）
    cm = confusion_matrix(y_true, y_pred_file, labels=list(range(len(LABEL_NAMES))))
    draw_confmat(cm, f"{mode_tag} Confusion Matrix (file-level)", f"{mode_tag.lower()}_confmat_file.png")
    print(f"[{mode_tag}] Saved: {mode_tag.lower()}_confmat_file.png")

    # —— 简单通道消融（文件级）：逐通道置零
    C = len(used_cols)
    drops = []
    for ci in range(C):
        wrong = 0
        for p, yt in zip(filepaths, y_true):
            x = load_csv_1000xC(p, used_cols)              # [1000, C]
            x_mask = x.copy()
            x_mask[:, ci] = 0.0                             # mask 单通道
            segs = slice_to_segments(x_mask)               # [10,1,C,100]
            logits = run_segments(sess, segs)
            yp = predict_filelevel_from_segments(logits)
            if yp != yt:
                wrong += 1
        err_rate = wrong / len(filepaths)
        drops.append(err_rate)
        print(f"[{mode_tag}] mask ch{ci+1}: file error rate = {err_rate:.4f}")

    # —— 画通道重要性（按“变错比例”衡量）
# —— 画通道重要性（按“变错比例”衡量）
    plt.figure(figsize=(8, 4.4))

    if mode_tag == "FUSION":
        fsr_len, imu_len = 6, 6
        drops_plot = drops  # CSV 顺序已经是 FSR + IMU
        labels = [f"FSR{i+1}" for i in range(fsr_len)] + [f"IMU{i+1}" for i in range(imu_len)]
    else:
        drops_plot = drops
        if mode_tag == "FSR":
            labels = [f"FSR{i+1}" for i in range(C)]
        elif mode_tag == "IMU":
            labels = [f"IMU{i+1}" for i in range(C)]
        else:
            labels = [f"{mode_tag}{i+1}" for i in range(C)]

    plt.bar(range(len(drops_plot)), drops_plot)
    plt.xticks(range(len(drops_plot)), labels, rotation=45)
    plt.ylabel("File-level error rate after masking")
    plt.title(f"{mode_tag} Channel Importance (higher = more important)")
    plt.grid(axis='y')
    plt.tight_layout()
    out_png = f"{mode_tag.lower()}_channel_importance.png"
    plt.savefig(out_png, dpi=150)
    plt.close()
    print(f"[{mode_tag}] Saved: {out_png}")


def main():
    for model_path, mode_tag, used_cols in MODELS:
        # 可按需只跑其中之一：注释掉其它行
        evaluate_one_model(model_path, mode_tag, used_cols)

if __name__ == "__main__":
    main()
