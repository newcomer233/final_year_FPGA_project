set_property SRC_FILE_INFO {cfile:e:/final_prj/final_prj_pl/final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_dpuczdx8g_0_0/DDR4_dpuczdx8g_0_0.xdc rfile:../../../final_prj_pl.gen/sources_1/bd/DDR4/ip/DDR4_dpuczdx8g_0_0/DDR4_dpuczdx8g_0_0.xdc id:1 order:LATE scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 2 -setup -start -from [get_clocks -of_objects [get_ports dpu_2x_clk]]   -to [get_clocks -of_objects [get_ports m_axi_dpu_aclk]]
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 2 -setup -end   -from [get_clocks -of_objects [get_ports m_axi_dpu_aclk]]   -to [get_clocks -of_objects [get_ports dpu_2x_clk]]
