transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/microblaze_v11_0_14
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_25
vlib riviera/blk_mem_gen_v8_4_10
vlib riviera/iomodule_v3_1_11
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_34
vlib riviera/fifo_generator_v13_2_12
vlib riviera/axi_data_fifo_v2_1_34
vlib riviera/axi_crossbar_v2_1_36
vlib riviera/axi_protocol_converter_v2_1_35
vlib riviera/axi_clock_converter_v2_1_33
vlib riviera/axi_dwidth_converter_v2_1_35
vlib riviera/axi_mmu_v2_1_32
vlib riviera/axi_vip_v1_1_20
vlib riviera/zynq_ultra_ps_e_vip_v1_0_20
vlib riviera/util_vector_logic_v2_0_4

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap microblaze_v11_0_14 riviera/microblaze_v11_0_14
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 riviera/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_10 riviera/blk_mem_gen_v8_4_10
vmap iomodule_v3_1_11 riviera/iomodule_v3_1_11
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_34 riviera/axi_register_slice_v2_1_34
vmap fifo_generator_v13_2_12 riviera/fifo_generator_v13_2_12
vmap axi_data_fifo_v2_1_34 riviera/axi_data_fifo_v2_1_34
vmap axi_crossbar_v2_1_36 riviera/axi_crossbar_v2_1_36
vmap axi_protocol_converter_v2_1_35 riviera/axi_protocol_converter_v2_1_35
vmap axi_clock_converter_v2_1_33 riviera/axi_clock_converter_v2_1_33
vmap axi_dwidth_converter_v2_1_35 riviera/axi_dwidth_converter_v2_1_35
vmap axi_mmu_v2_1_32 riviera/axi_mmu_v2_1_32
vmap axi_vip_v1_1_20 riviera/axi_vip_v1_1_20
vmap zynq_ultra_ps_e_vip_v1_0_20 riviera/zynq_ultra_ps_e_vip_v1_0_20
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4

vlog -work xilinx_vip  -incr "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_14 -93  -incr \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_0/sim/bd_cfe9_microblaze_I_0.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_1/sim/bd_cfe9_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_2/sim/bd_cfe9_ilmb_0.vhd" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_3/sim/bd_cfe9_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -93  -incr \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_4/sim/bd_cfe9_dlmb_cntlr_0.vhd" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_5/sim/bd_cfe9_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_10  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/9e79/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_6/sim/bd_cfe9_lmb_bram_I_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_7/sim/bd_cfe9_second_dlmb_cntlr_0.vhd" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_8/sim/bd_cfe9_second_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_9/sim/bd_cfe9_second_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_11 -93  -incr \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/76e9/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/ip/ip_10/sim/bd_cfe9_iomodule_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/bd_0/sim/bd_cfe9.v" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_0/sim/DDR4_ddr4_0_0_microblaze_mcs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/phy/DDR4_ddr4_0_0_phy_ddr4.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/ip_top/DDR4_ddr4_0_0_phy.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_wtr.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ref.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_rd_wr.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_periodic.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_group.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_merge_enc.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_gen.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_fi_xor.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_dec_fix.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_buf.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ctl.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_c.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_ap.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_p.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_mux_p.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_c.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_a.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_act_timer.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_act_rank.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/controller/ddr4_v2_2_mc.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_wr_data.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_rd_data.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_cmd.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ui/ddr4_v2_2_ui.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_ar_channel.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_aw_channel.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_b_channel.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_arbiter.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_fsm.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_translator.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_fifo.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_incr_cmd.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_r_channel.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_w_channel.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_wr_cmd_fsm.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_wrap_cmd.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_a_upsizer.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_register_slice.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_upsizer.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_axic_register_slice.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_and.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_latch_and.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_latch_or.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_or.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_command_fifo.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator_sel.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator_sel_static.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_r_upsizer.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi/ddr4_v2_2_w_upsizer.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_addr_decode.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_read.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg_bank.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_top.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_write.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_write.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_sync.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_read.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_pi.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_top.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_cal.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top/DDR4_ddr4_0_0_ddr4.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top/DDR4_ddr4_0_0_ddr4_mem_intfc.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal/DDR4_ddr4_0_0_ddr4_cal_riu.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top/DDR4_ddr4_0_0.sv" \
"../../../bd/DDR4/ip/DDR4_ddr4_0_0/tb/DDR4_ddr4_0_0_microblaze_mcs_0.sv" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_34  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/48f8/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_12  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/cc30/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_12 -93  -incr \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/cc30/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_12  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/cc30/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_34  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/8894/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_36  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/cb42/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_xbar_0/sim/DDR4_axi_interconnect_0_imp_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_35  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/2a7e/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_33  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/e59d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_35  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/e6c5/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_auto_us_cc_df_0/sim/DDR4_axi_interconnect_0_imp_auto_us_cc_df_0.v" \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_auto_us_cc_df_1/sim/DDR4_axi_interconnect_0_imp_auto_us_cc_df_1.v" \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_auto_us_cc_df_2/sim/DDR4_axi_interconnect_0_imp_auto_us_cc_df_2.v" \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_auto_us_cc_df_3/sim/DDR4_axi_interconnect_0_imp_auto_us_cc_df_3.v" \

vlog -work axi_mmu_v2_1_32  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/1da7/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_s00_mmu_0/sim/DDR4_axi_interconnect_0_imp_s00_mmu_0.v" \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_s01_mmu_0/sim/DDR4_axi_interconnect_0_imp_s01_mmu_0.v" \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_s02_mmu_0/sim/DDR4_axi_interconnect_0_imp_s02_mmu_0.v" \
"../../../bd/DDR4/ip/DDR4_axi_interconnect_0_imp_s03_mmu_0/sim/DDR4_axi_interconnect_0_imp_s03_mmu_0.v" \

vlog -work axi_vip_v1_1_20  -incr "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/0f82/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_20  -incr "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_zynq_ultra_ps_e_0_0/sim/DDR4_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/ip/DDR4_util_vector_logic_0_0/sim/DDR4_util_vector_logic_0_0.v" \
"../../../bd/DDR4/ip/DDR4_util_vector_logic_1_0/sim/DDR4_util_vector_logic_1_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/DDR4/ip/DDR4_proc_sys_reset_0_0/sim/DDR4_proc_sys_reset_0_0.vhd" \
"../../../bd/DDR4/ip/DDR4_ddr4_sync_reset_0/sim/DDR4_ddr4_sync_reset_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/ec67/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ipshared/fd24/hdl" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/ip_top" "+incdir+../../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_ddr4_0_0/rtl/cal" "+incdir+D:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_10 -l iomodule_v3_1_11 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l axi_dwidth_converter_v2_1_35 -l axi_mmu_v2_1_32 -l axi_vip_v1_1_20 -l zynq_ultra_ps_e_vip_v1_0_20 -l util_vector_logic_v2_0_4 \
"../../../bd/DDR4/sim/DDR4.v" \

vlog -work xil_defaultlib \
"glbl.v"

