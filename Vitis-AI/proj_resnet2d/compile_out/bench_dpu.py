import argparse, time, numpy as np
from vart import Runner
import xir
import threading

def get_subgraph_dpu(graph):
    sub = []
    root = graph.get_root_subgraph()
    for c in root.toposort_child_subgraph():
        if c.has_attr("device") and c.get_attr("device").upper() == "DPU":
            sub.append(c)
    assert len(sub) == 1, "Expect exactly one DPU subgraph"
    return sub[0]

def create_runner(xmodel_path):
    g = xir.Graph.deserialize(xmodel_path)
    sg = get_subgraph_dpu(g)
    return Runner.create_runner(sg, "run")

def shape_of(tensor_tensor):
    # tensor_tensor: Runner.get_input_tensors()[0]
    return tuple(tensor_tensor.dims)

def allocate_inputs(input_tensors, batch):
    bufs = []
    for t in input_tensors:
        shp = list(t.dims)
        shp[0] = batch  # override batch dim
        # 这里用随机 int8；若要喂真实数据，请在此处替换预处理后的 int8
        buf = np.random.randint(-128, 127, size=tuple(shp), dtype=np.int8)
        bufs.append(buf)
    return bufs

def allocate_outputs(output_tensors, batch):
    bufs = []
    for t in output_tensors:
        shp = list(t.dims)
        shp[0] = batch
        # 输出通常为 int8/int32，使用 int8 足矣（具体由模型而定）
        # 若遇到类型不匹配可改为 np.int32
        buf = np.zeros(tuple(shp), dtype=np.int8)
        bufs.append(buf)
    return bufs

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("xmodel")
    ap.add_argument("--loops", type=int, default=200, help="测量迭代次数")
    ap.add_argument("--warmup", type=int, default=10, help="预热次数（不计入统计）")
    ap.add_argument("--batch", type=int, default=1, help="batch size")
    ap.add_argument("--print_one", action="store_true", help="打印一次Top-1和概率（可选）")
    args = ap.parse_args()

    runner = create_runner(args.xmodel)
    itensors = runner.get_input_tensors()
    otensors = runner.get_output_tensors()

    # 打印形状（以第一个输入/输出为例）
    in_shape = tuple(list(itensors[0].dims)[:])
    out_shape = tuple(list(otensors[0].dims)[:])
    print("Model input shape :", in_shape, "-> batch override:", args.batch)
    print("Model output shape:", out_shape)

    # 预分配 buffer（避免循环内分配开销）
    inputs = allocate_inputs(itensors, args.batch)
    outputs = allocate_outputs(otensors, args.batch)

    # 如果需要固定某个输入以便稳定评测，可把随机数据改为常量或真实样本
    # inputs[0][:] = your_quantized_data

    # 预热
    for _ in range(args.warmup):
        jid = runner.execute_async(inputs, outputs)
        runner.wait(jid)

    # 正式测量
    lat = []
    for _ in range(args.loops):
        t0 = time.perf_counter()
        jid = runner.execute_async(inputs, outputs)
        runner.wait(jid)
        t1 = time.perf_counter()
        lat.append(t1 - t0)

    lat = np.array(lat, dtype=np.float64)
    p50 = np.percentile(lat, 50)
    p90 = np.percentile(lat, 90)
    p99 = np.percentile(lat, 99)
    mean = float(lat.mean())
    thrpt = args.batch / mean  # samples/s（按均值折算）

    print("\n=== DPU Benchmark ===")
    print(f"Warm-up: {args.warmup}, Loops: {args.loops}, Batch: {args.batch}")
    print(f"Latency (s)  mean: {mean:.6f}  p50: {p50:.6f}  p90: {p90:.6f}  p99: {p99:.6f}")
    print(f"Throughput (samples/s): {thrpt:.2f}")

    # （可选）打印一次推理的Top-1与概率，便于核对输出
    if args.print_one:
        # 这里假设只有一个输出张量，形状为 (batch, num_classes)
        logits = outputs[0][0]  # 取第一个样本
        top1 = int(np.argmax(logits))
        print("One run logits (first sample):", logits.tolist())
        print("Top-1 index:", top1, " Predicted label(1-based):", top1 + 1)
        # 简单softmax（若无量化scale，做相对概率展示）
        lf = logits.astype(np.float32)
        ex = np.exp(lf - lf.max())
        probs = ex / ex.sum()
        print("Probs (first sample):", probs.tolist())

if __name__ == "__main__":
    main()
