transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/axis_infrastructure_v1_1_1
vlib riviera/axis_register_slice_v1_1_34
vlib riviera/axis_dwidth_converter_v1_1_33
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap axis_infrastructure_v1_1_1 riviera/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_34 riviera/axis_register_slice_v1_1_34
vmap axis_dwidth_converter_v1_1_33 riviera/axis_dwidth_converter_v1_1_33
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_34 -l axis_dwidth_converter_v1_1_33 -l xil_defaultlib \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_1  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_34 -l axis_dwidth_converter_v1_1_33 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_34  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_34 -l axis_dwidth_converter_v1_1_33 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_33  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_34 -l axis_dwidth_converter_v1_1_33 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_34 -l axis_dwidth_converter_v1_1_33 -l xil_defaultlib \
"../../../../final_prj_pl.gen/sources_1/ip/data_to_udp_fifo_widcov/sim/data_to_udp_fifo_widcov.v" \

vlog -work xil_defaultlib \
"glbl.v"

