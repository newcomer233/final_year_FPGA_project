import xir

def get_subgraphs(xmodel_path):
    graph = xir.Graph.deserialize(xmodel_path)
    root = graph.get_root_subgraph()
    return [sg for sg in root.toposort_child_subgraph()]

xmodel = "./compile_model/ResNet2D_100.xmodel"
subgraphs = get_subgraphs(xmodel)

for i, sg in enumerate(subgraphs):
    device = sg.get_attr("device") if sg.has_attr("device") else "UNKNOWN"
    ops = [op.get_type() for op in sg.get_ops()]
    print(f"Subgraph {i}: device={device}, ops={len(ops)}")
    print("  First few ops:", ops[:10])
