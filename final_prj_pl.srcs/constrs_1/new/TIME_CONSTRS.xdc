# # 仅对 TEMAC 输出到 VIO 的这些信号屏蔽时序
# set_false_path -from [get_pins UDP_TOP/RGMII_wrapper/RGMII_i/TEMAC/tx_enable] -to [get_pins {UDP_TOP/RGMII_wrapper/RGMII_i/vio/probe_in5[0]}]
# set_false_path -from [get_pins UDP_TOP/RGMII_wrapper/RGMII_i/TEMAC/rx_enable] -to [get_pins {UDP_TOP/RGMII_wrapper/RGMII_i/vio/probe_in4[0]}]
# set_false_path -from [get_pins UDP_TOP/RGMII_wrapper/RGMII_i/TEMAC/tx_reset] -to [get_pins {UDP_TOP/RGMII_wrapper/RGMII_i/vio/probe_in3[0]}]
# set_false_path -from [get_pins UDP_TOP/RGMII_wrapper/RGMII_i/TEMAC/rx_reset] -to [get_pins {UDP_TOP/RGMII_wrapper/RGMII_i/vio/probe_in2[0]}]
