transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/xbip_utils_v3_0_14
vlib activehdl/mult_gen_v12_0_22
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/tri_mode_ethernet_mac_v9_0_37
vlib activehdl/axis_infrastructure_v1_1_1
vlib activehdl/axis_data_fifo_v2_0_16
vlib activehdl/util_vector_logic_v2_0_4
vlib activehdl/gigantic_mux
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xbip_utils_v3_0_14 activehdl/xbip_utils_v3_0_14
vmap mult_gen_v12_0_22 activehdl/mult_gen_v12_0_22
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap tri_mode_ethernet_mac_v9_0_37 activehdl/tri_mode_ethernet_mac_v9_0_37
vmap axis_infrastructure_v1_1_1 activehdl/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_16 activehdl/axis_data_fifo_v2_0_16
vmap util_vector_logic_v2_0_4 activehdl/util_vector_logic_v2_0_4
vmap gigantic_mux activehdl/gigantic_mux
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16

vlog -work xpm  -sv2k12 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/RGMII/sim/RGMII.v" \

vcom -work xbip_utils_v3_0_14 -93  \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/b27f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_22 -93  \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/e765/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vlog -work tri_mode_ethernet_mac_v9_0_37  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/2068/hdl/tri_mode_ethernet_mac_v9_0_rfs.v" \

vcom -work tri_mode_ethernet_mac_v9_0_37 -93  \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/2068/hdl/tri_mode_ethernet_mac_v9_0_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/RGMII/ip/RGMII_tri_mode_ethernet_mac_0_0/synth/common/RGMII_tri_mode_ethernet_mac_0_0_block_sync_block.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/RGMII/ip/RGMII_tri_mode_ethernet_mac_0_0/synth/RGMII_tri_mode_ethernet_mac_0_0_axi4_lite_ipif_top.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/RGMII/ip/RGMII_tri_mode_ethernet_mac_0_0/synth/RGMII_tri_mode_ethernet_mac_0_0_axi4_lite_ipif_wrapper.v" \
"../../../bd/RGMII/ip/RGMII_tri_mode_ethernet_mac_0_0/synth/RGMII_tri_mode_ethernet_mac_0_0_clk_en_gen.v" \
"../../../bd/RGMII/ip/RGMII_tri_mode_ethernet_mac_0_0/synth/physical/RGMII_tri_mode_ethernet_mac_0_0_rgmii_v2_0_if.v" \
"../../../bd/RGMII/ip/RGMII_tri_mode_ethernet_mac_0_0/synth/statistics/RGMII_tri_mode_ethernet_mac_0_0_vector_decode.v" \
"../../../bd/RGMII/ip/RGMII_tri_mode_ethernet_mac_0_0/synth/RGMII_tri_mode_ethernet_mac_0_0_block.v" \
"../../../bd/RGMII/ip/RGMII_tri_mode_ethernet_mac_0_0/synth/RGMII_tri_mode_ethernet_mac_0_0.v" \

vlog -work axis_infrastructure_v1_1_1  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_16  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/5431/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/RGMII/ip/RGMII_axis_data_fifo_0_0/sim/RGMII_axis_data_fifo_0_0.v" \
"../../../bd/RGMII/ip/RGMII_axis_TX_data_fifo_0/sim/RGMII_axis_TX_data_fifo_0.v" \

vlog -work util_vector_logic_v2_0_4  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/RGMII/ip/RGMII_util_vector_logic_0_0/sim/RGMII_util_vector_logic_0_0.v" \
"../../../bd/RGMII/ip/RGMII_util_vector_logic_0_1/sim/RGMII_util_vector_logic_0_1.v" \
"../../../bd/RGMII/ip/RGMII_system_ila_0_0/bd_0/ip/ip_0/sim/bd_bb77_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/96a0/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/RGMII/ip/RGMII_system_ila_0_0/bd_0/ip/ip_1/bd_bb77_g_inst_0_gigantic_mux.v" \
"../../../bd/RGMII/ip/RGMII_system_ila_0_0/bd_0/ip/ip_1/sim/bd_bb77_g_inst_0.v" \
"../../../bd/RGMII/ip/RGMII_system_ila_0_0/bd_0/sim/bd_bb77.v" \
"../../../bd/RGMII/ip/RGMII_system_ila_0_0/sim/RGMII_system_ila_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/RGMII/ip/RGMII_rst_TEMAC_125M_0/sim/RGMII_rst_TEMAC_125M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_prj_pl.gen/sources_1/bd/RGMII/ipshared/434f/hdl" -l xpm -l xil_defaultlib -l xbip_utils_v3_0_14 -l mult_gen_v12_0_22 -l axi_lite_ipif_v3_0_4 -l tri_mode_ethernet_mac_v9_0_37 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_16 -l util_vector_logic_v2_0_4 -l gigantic_mux -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/RGMII/ip/RGMII_vio_0_0/sim/RGMII_vio_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

