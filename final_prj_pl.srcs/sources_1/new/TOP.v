`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/30 16:29:19
// Design Name: 
// Module Name: TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP(
    //System clock
    //200MHz differential clock
    input sysclk_200m_p,
    input sysclk_200m_n,
    //IMU PHYSICAL interface
    inout   IMU_SPI_CLK,
    input   IMU_SPI_DIN,
    output  IMU_SPI_DOUT,
    inout   IMU_SPI_CS_N,
    //ADC PHYSICLA interface
    inout   SPI_CLK,
    input   SPI_DIN_A,
    input   SPI_DIN_B,
    input   SPI_DIN_C,
    input   SPI_DIN_D,
    input   SPI_DIN_E,
    input   SPI_DIN_F,
    input   SPI_DIN_G,
    input   SPI_DIN_H,
    output  SPI_DOUT,
    inout   SPI_CS_N,
    output  ADC_CONVST,
    input   ADC_BUSY,
    output  ADC_RST,
    //I2C physical interface
    inout I2C_SCL,
    inout I2C_SDA,
    //ETHernet physical interface
    output          mdc,
    inout [0:0]     mdio,
    output [0:0]    phy_rst_n,

    input [3:0]     rgmii_rd,
    input           rgmii_rx_ctl,
    input           rgmii_rxc,
    output [3:0]    rgmii_td,
    output          rgmii_tx_ctl,
    output          rgmii_txc


    );
    //System clock
    wire         axis_clk;      // 200MHz clock for AXI interface and Global logic
    wire         gtx_clk_125M;  // 125MHz clock for Ethernet interface
    wire         refclk_100M;   // 100MHz reference clock for Ethernet PHY
    //UDP TOP interface
    wire         axi_txd_arstn;
    wire         transmit_enable;
    wire         transmit_busy;
    wire [15:0]  tx_data_length;
    wire [7:0]   sensor_data_tdata;
    wire         sensor_data_tkeep;
    wire         sensor_data_tlast;
    wire         sensor_data_tready;
    wire         sensor_data_tvalid;
    wire [0:0]   sensor_data_tuser;
    //ADC data interface
    wire [127:0] adc_data;          // 8 channels, 16 bits each
    wire         adc_data_valid;    // ADC data valid signal
    //IMU data interface
    wire         imu_data_valid;    // IMU data valid signal
    wire [111:0] imu_data;          // IMU data, 7 channels

    system_clock system_clock_inst (
        .clk_in1_p(sysclk_200m_p),
        .clk_in1_n(sysclk_200m_n),

        .sysclk_200M    (axis_clk),
        .eth_125M       (gtx_clk_125M),
        .refclk_100M    (refclk_100M)
    );


    SENSOR_TOP SENSOR_TOP(
    .sysclk_200m    (axis_clk   ),
    .axi_rstn       (axi_txd_arstn),
    //IMU PHYSICAL interface
    .IMU_SPI_CLK    (IMU_SPI_CLK ),
    .IMU_SPI_DIN    (IMU_SPI_DIN ),
    .IMU_SPI_DOUT   (IMU_SPI_DOUT),
    .IMU_SPI_CS_N   (IMU_SPI_CS_N),
    //ADC PHYSICLA interface
    .SPI_CLK    (SPI_CLK    ),
    .SPI_DIN_A  (SPI_DIN_A  ),
    .SPI_DIN_B  (SPI_DIN_B  ),
    .SPI_DIN_C  (SPI_DIN_C  ),
    .SPI_DIN_D  (SPI_DIN_D  ),
    .SPI_DIN_E  (SPI_DIN_E  ),
    .SPI_DIN_F  (SPI_DIN_F  ),
    .SPI_DIN_G  (SPI_DIN_G  ),
    .SPI_DIN_H  (SPI_DIN_H  ),
    .SPI_DOUT   (SPI_DOUT   ),
    .SPI_CS_N   (SPI_CS_N   ),
    .ADC_CONVST (ADC_CONVST),
    .ADC_BUSY   (ADC_BUSY),
    // output [2:0]    ADC_OSR,
    .ADC_RST    (ADC_RST),
    //I2C interface
    .I2C_SCL    (I2C_SCL),
    .I2C_SDA    (I2C_SDA),
    //ADC internal interface
    .adc_data           (adc_data ),
    .adc_data_valid     (adc_data_valid ),

    .imu_data_valid     (imu_data_valid ),
    .imu_data           (imu_data   )

    );

    UDP_TOP UDP_TOP(
    .axis_clk               (axis_clk       ),
    .gtx_clk_125M           (gtx_clk_125M   ),
    .refclk_100M            (refclk_100M    ),
    .axi_txd_arstn          (axi_txd_arstn  ),
    //physical interface
    .mdc                    (mdc            ),
    .mdio                   (mdio           ),
    .phy_rst_n              (phy_rst_n      ),
    .rgmii_rd               (rgmii_rd       ),
    .rgmii_rx_ctl           (rgmii_rx_ctl   ),
    .rgmii_rxc              (rgmii_rxc      ),
    .rgmii_td               (rgmii_td       ),
    .rgmii_tx_ctl           (rgmii_tx_ctl   ),
    .rgmii_txc              (rgmii_txc      ),
    //package data interface
    .transmit_enable        (transmit_enable   ),
    .transmit_busy          (transmit_busy     ),
    .tx_data_length         (tx_data_length    ),
    .sensor_data_tdata      (sensor_data_tdata ),
    .sensor_data_tkeep      (sensor_data_tkeep ),
    .sensor_data_tlast      (sensor_data_tlast ),
    .sensor_data_tready     (sensor_data_tready),
    .sensor_data_tvalid     (sensor_data_tvalid),
    .sensor_data_tuser      (sensor_data_tuser )
    );

    DATA_PROCESS_TOP    DATA_PROCESS_TOP(
    //System clock
    .sysclk_200m    (axis_clk),
    .axi_rstn       (axi_txd_arstn),
    //ADC data interface
    .adc_data       (adc_data),
    .adc_data_valid (adc_data_valid),
    //IMU data interface
    .imu_data_valid (imu_data_valid),
    .imu_data       (imu_data),
    //UDP data interface
    .sensor_data_tdata  (sensor_data_tdata ),
    .sensor_data_tkeep  (sensor_data_tkeep ),
    .sensor_data_tlast  (sensor_data_tlast ),
    .sensor_data_tready (sensor_data_tready),
    .sensor_data_tvalid (sensor_data_tvalid),
    .sensor_data_tuser  (sensor_data_tuser ),
    .transmit_enable    (transmit_enable),
    .transmit_busy      (transmit_busy),
    .udp_data_length    (tx_data_length)
    );

    top_vio(
    .clk(axis_clk),
    .probe_out0(axi_txd_arstn)
    );
endmodule
