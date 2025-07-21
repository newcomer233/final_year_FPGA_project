transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+RGMII  -L xil_defaultlib -L xpm -L xbip_utils_v3_0_14 -L mult_gen_v12_0_22 -L axi_lite_ipif_v3_0_4 -L tri_mode_ethernet_mac_v9_0_37 -L axis_infrastructure_v1_1_1 -L axis_data_fifo_v2_0_16 -L util_vector_logic_v2_0_4 -L gigantic_mux -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_16 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RGMII xil_defaultlib.glbl

do {RGMII.udo}

run 1000ns

endsim

quit -force
