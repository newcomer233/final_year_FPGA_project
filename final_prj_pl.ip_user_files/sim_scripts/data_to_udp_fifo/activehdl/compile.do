transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/axis_infrastructure_v1_1_1
vlib activehdl/axis_data_fifo_v2_0_16
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap axis_infrastructure_v1_1_1 activehdl/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_16 activehdl/axis_data_fifo_v2_0_16
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l xil_defaultlib \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_1  -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_16  -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l xil_defaultlib \
"../../../../final_prj_pl.gen/sources_1/ip/data_to_udp_fifo/sim/data_to_udp_fifo.v" \

vlog -work xil_defaultlib \
"glbl.v"

