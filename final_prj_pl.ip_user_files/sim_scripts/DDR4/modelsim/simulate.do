onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xilinx_vip -L xpm -L microblaze_v11_0_14 -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_16 -L lmb_v10_v3_0_14 -L lmb_bram_if_cntlr_v4_0_25 -L blk_mem_gen_v8_4_10 -L iomodule_v3_1_11 -L generic_baseblocks_v2_1_2 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_34 -L fifo_generator_v13_2_12 -L axi_data_fifo_v2_1_34 -L axi_crossbar_v2_1_36 -L axi_protocol_converter_v2_1_35 -L axi_clock_converter_v2_1_33 -L axi_dwidth_converter_v2_1_35 -L axi_mmu_v2_1_32 -L axi_vip_v1_1_20 -L zynq_ultra_ps_e_vip_v1_0_20 -L util_vector_logic_v2_0_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.DDR4 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {DDR4.udo}

run 1000ns

quit -force
