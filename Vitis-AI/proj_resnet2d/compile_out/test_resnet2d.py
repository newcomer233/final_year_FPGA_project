import sys
import numpy as np
import xir
import vart
import time
from datetime import datetime

def get_dpu_subgraph(graph: xir.Graph):
    root = graph.get_root_subgraph()
    subgraphs = root.toposort_child_subgraph()
    for sg in subgraphs:
        if sg.has_attr("device") and sg.get_attr("device") == "DPU":
            return sg
    if root.has_attr("device") and root.get_attr("device") == "DPU":
        return root
    return None

def main(xmodel_path: str):
    graph = xir.Graph.deserialize(xmodel_path)
    dpu_sg = get_dpu_subgraph(graph)
    if dpu_sg is None:
        raise RuntimeError("No DPU subgraph found in xmodel!")

    runner = vart.Runner.create_runner(dpu_sg, "run")
    in_tensor = runner.get_input_tensors()[0]
    out_tensor = runner.get_output_tensors()[0]

    in_shape = tuple(in_tensor.dims)
    out_shape = tuple(out_tensor.dims)
    print("Input shape:", in_shape)
    print("Output shape:", out_shape)

    input_data = np.random.randint(-128, 127, size=in_shape, dtype=np.int8)
    output_data = np.empty(out_shape, dtype=np.int8)

    start_time = time.time()
    start_dt = datetime.now()
    jid = runner.execute_async([input_data], [output_data])
    runner.wait(jid)
    end_time = time.time()
    end_dt = datetime.now()

    elapsed = end_time - start_time

    print(f"Start time : {start_dt.strftime('%Y-%m-%d %H:%M:%S.%f')}")
    print(f"End time   : {end_dt.strftime('%Y-%m-%d %H:%M:%S.%f')}")
    print(f"Elapsed    : {elapsed:.6f} seconds")

    print("Done. First 16 outputs:", output_data.flatten()[:16])

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <ResNet2D_100.xmodel>")
        sys.exit(1)
    main(sys.argv[1])

