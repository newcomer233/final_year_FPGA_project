set_property PACKAGE_PIN AL8 [get_ports sysclk_200m_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sysclk_200m_p]
create_clock -name sysclk_200m -period 5.000 [get_ports sysclk_200m_p]

set_property PACKAGE_PIN G19 [get_ports SPI_DIN_A]
set_property PACKAGE_PIN B19 [get_ports SPI_DIN_B]
set_property PACKAGE_PIN C19 [get_ports SPI_DIN_C]
set_property PACKAGE_PIN A12 [get_ports SPI_DIN_D]
set_property PACKAGE_PIN B13 [get_ports SPI_DIN_E]
set_property PACKAGE_PIN A20 [get_ports SPI_DIN_F]
set_property PACKAGE_PIN A15 [get_ports SPI_DIN_G]
set_property PACKAGE_PIN A22 [get_ports SPI_DIN_H]

set_property PACKAGE_PIN J15 [get_ports SPI_DOUT]
set_property PACKAGE_PIN G16 [get_ports SPI_CLK]
set_property PACKAGE_PIN AP14 [get_ports SPI_CS_N]


set_property PACKAGE_PIN J16 [get_ports ADC_BUSY]
set_property PACKAGE_PIN H16 [get_ports ADC_CONVST]
set_property PACKAGE_PIN AN14 [get_ports ADC_RST]


set_property IOSTANDARD LVCMOS33 [get_ports SPI_DIN_A]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_DIN_B]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_DIN_C]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_DIN_D]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_DIN_E]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_DIN_F]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_DIN_G]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_DIN_H]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_DOUT]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CS_N]

set_property IOSTANDARD LVCMOS33 [get_ports ADC_CONVST]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_BUSY]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_RST]
