transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/fifo_generator_v13_2_12
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap fifo_generator_v13_2_12 riviera/fifo_generator_v13_2_12
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l fifo_generator_v13_2_12 -l xil_defaultlib \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_12  -incr -v2k5 -l xpm -l fifo_generator_v13_2_12 -l xil_defaultlib \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_12 -93  -incr \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_12  -incr -v2k5 -l xpm -l fifo_generator_v13_2_12 -l xil_defaultlib \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l fifo_generator_v13_2_12 -l xil_defaultlib \
"../../../../final_prj_pl.gen/sources_1/ip/spi_rx_fifo_16bit/sim/spi_rx_fifo_16bit.v" \

vlog -work xil_defaultlib \
"glbl.v"

