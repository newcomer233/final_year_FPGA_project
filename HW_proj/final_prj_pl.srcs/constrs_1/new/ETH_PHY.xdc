# ===== MDIO/MDC/PHY reset =====
set_property PACKAGE_PIN L10 [get_ports mdio]
set_property IOSTANDARD LVCMOS18 [get_ports mdio]

set_property PACKAGE_PIN M10 [get_ports mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdc]

set_property PACKAGE_PIN R9 [get_ports phy_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports phy_rst_n]

# ===== RGMII RX (BANK66 - 1.8V) =====
set_property PACKAGE_PIN U4 [get_ports {rgmii_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[0]}]

set_property PACKAGE_PIN U5 [get_ports {rgmii_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[1]}]

set_property PACKAGE_PIN Y9 [get_ports {rgmii_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[2]}]

set_property PACKAGE_PIN Y10 [get_ports {rgmii_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[3]}]

set_property PACKAGE_PIN AA6 [get_ports rgmii_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_rx_ctl]

set_property PACKAGE_PIN AA7 [get_ports rgmii_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_rxc]

# ===== RGMII TX (BANK66 - 1.8V) =====
set_property PACKAGE_PIN AC9 [get_ports {rgmii_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[0]}]

set_property PACKAGE_PIN AB9 [get_ports {rgmii_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[1]}]

set_property PACKAGE_PIN AB5 [get_ports {rgmii_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[2]}]

set_property PACKAGE_PIN AB6 [get_ports {rgmii_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[3]}]

set_property PACKAGE_PIN V4 [get_ports rgmii_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_tx_ctl]

set_property PACKAGE_PIN V3 [get_ports rgmii_txc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_txc]
# ===== RGMII TX DELAY ==============UDP_TOP/RGMII_wrapper/RGMII_i/TEMAC/inst/tri_mode_ethernet_mac_i/rgmii_interface/delay_rgmii_tx_ctl

set_property DELAY_VALUE 950 [get_cells {UDP_TOP/RGMII_wrapper/RGMII_i/TEMAC/inst/tri_mode_ethernet_mac_i/rgmii_interface/delay_rgmii_tx_clk}]
# set_property DELAY_VALUE 1000 [get_cells {UDP_TOP/RGMII_wrapper/RGMII_i/TEMAC/inst/tri_mode_ethernet_mac_i/rgmii_interface/delay_rgmii_tx_clk_casc}]
# set_property DELAY_VALUE 500 [get_cells {UDP_TOP/RGMII_wrapper/RGMII_i/TEMAC/inst/tri_mode_ethernet_mac_i/rgmii_interface/delay_rgmii_tx_ctl}]