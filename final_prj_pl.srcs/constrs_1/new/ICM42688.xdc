set_property PACKAGE_PIN AL8 [get_ports sysclk_200m_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sysclk_200m_p]



set_property PACKAGE_PIN G18 [get_ports IMU_SPI_DOUT]
set_property PACKAGE_PIN B18 [get_ports IMU_SPI_DIN]
set_property PACKAGE_PIN C18 [get_ports IMU_SPI_CLK]
set_property PACKAGE_PIN A13 [get_ports IMU_SPI_CS_N]
# set_property PACKAGE_PIN AF15 [get_ports IMU_int2]
# set_property PACKAGE_PIN C12  [get_ports IMU_int1]

set_property IOSTANDARD LVCMOS33 [get_ports IMU_SPI_DIN]
set_property IOSTANDARD LVCMOS33 [get_ports IMU_SPI_DOUT]
set_property IOSTANDARD LVCMOS33 [get_ports IMU_SPI_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports IMU_SPI_CS_N]
# set_property IOSTANDARD LVCMOS33 [get_ports IMU_int1]
# set_property IOSTANDARD LVCMOS33 [get_ports IMU_int2]

set_property PACKAGE_PIN C13 [get_ports IMU_SPI_DOUT_2]
set_property PACKAGE_PIN B20 [get_ports IMU_SPI_DIN_2]
set_property PACKAGE_PIN B15 [get_ports IMU_SPI_CLK_2]
set_property PACKAGE_PIN A21 [get_ports IMU_SPI_CS_N_2]


set_property IOSTANDARD LVCMOS33 [get_ports IMU_SPI_DIN_2]
set_property IOSTANDARD LVCMOS33 [get_ports IMU_SPI_DOUT_2]
set_property IOSTANDARD LVCMOS33 [get_ports IMU_SPI_CLK_2]
set_property IOSTANDARD LVCMOS33 [get_ports IMU_SPI_CS_N_2]
