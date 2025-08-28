`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/16 15:40:21
// Design Name: 
// Module Name: ADC_TOP
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


module ADC_TOP(
    // input sysclk_200m_p,
    // input sysclk_200m_n,
    input sysclk_200m,
    input axi_rstn,
    input ADC_ENABLE,
    //ADC digital interface
    inout           SPI_CLK,
    input           SPI_DIN_A,
    input           SPI_DIN_B,
    input           SPI_DIN_C,
    input           SPI_DIN_D,
    input           SPI_DIN_E,
    input           SPI_DIN_F,
    input           SPI_DIN_G,
    input           SPI_DIN_H,
    output          SPI_DOUT,
    inout           SPI_CS_N,
    //control interface
    output          ADC_CONVST,
    input           ADC_BUSY,
    // output [2:0]    ADC_OSR,
    output          ADC_RST,
    // Internal signals
    output  [15:0] spi_rx_data_A,
    output  [15:0] spi_rx_data_B,
    output  [15:0] spi_rx_data_C,
    output  [15:0] spi_rx_data_D,
    output  [15:0] spi_rx_data_E,
    output  [15:0] spi_rx_data_F,
    output  [15:0] spi_rx_data_G,
    output  [15:0] spi_rx_data_H,
    output         spi_rx_data_valid
    );
    assign ADC_RST = 1'b0;
    // clk_wiz_0 system_clock(
    //     // Diff Clock
    //     .clk_in1_p(sysclk_200m_p),
    //     .clk_in1_n(sysclk_200m_n),
    //     // SYSTEM CLOCK
    //     .clk_out1(sysclk_200m),           
    //     .locked(locked)
    // );
    //SPI interconnect port
    wire          spi_tx_valid;
    wire          spi_tx_ready;
    wire [15:0]   spi_tx_data;
    wire          spi_tx_last;

    wire          spi_rx_valid;
    wire          spi_rx_ready;
    wire [127:0]  spi_rx_data;
    wire          spi_rx_last;
    //SPI Control interface
    wire          spi_en;
    wire [31:0]   bits_len;
    wire          spi_busy;

    //ADC configuration interface
    // wire          ADC_ENABLE;
    wire          ADC_config_complete;
    //SPI PHY CONTROL INTERFACE
    wire          spi_phy_en;
    wire          spi_config_en;
    wire          spi_read_en;

    wire          spi_config_rx_ready;
    wire          spi_read_rx_ready;
    assign spi_phy_en = ADC_config_complete ==1'b1 ? spi_read_en : spi_config_en; 
    assign spi_rx_ready = ADC_config_complete ==1'b1 ? spi_read_rx_ready : spi_config_rx_ready; 
    ADC_SPI_LINK  ADC_SPI_LINK(
        .sysclk_200m    (sysclk_200m),
        .rst_n         (axi_rstn),
        //PHYSICAL INTERFACE
        .SPI_CLK        (SPI_CLK),
        .SPI_DIN_A      (SPI_DIN_A),
        .SPI_DIN_B      (SPI_DIN_B),
        .SPI_DIN_C      (SPI_DIN_C),
        .SPI_DIN_D      (SPI_DIN_D),
        .SPI_DIN_E      (SPI_DIN_E),
        .SPI_DIN_F      (SPI_DIN_F),
        .SPI_DIN_G      (SPI_DIN_G),
        .SPI_DIN_H      (SPI_DIN_H),

        .SPI_DOUT       (SPI_DOUT),
        .SPI_CS_N       (SPI_CS_N),
        //data interface axi-stream
        .spi_tx_valid   (spi_tx_valid),
        .spi_tx_ready   (spi_tx_ready),
        .spi_tx_data    (spi_tx_data ),
        .spi_tx_last    (spi_tx_last ),

        .spi_rx_valid   (spi_rx_valid),
        .spi_rx_ready   (spi_rx_ready), //always ready
        .spi_rx_data    (spi_rx_data ),
        .spi_rx_last    (spi_rx_last ),
        //control interface
        . spi_en              (spi_phy_en) ,
        . bits_len            (32'd16)   ,
        . spi_busy            (spi_busy) ,
        . ADC_config_complete (ADC_config_complete) 
    );

    ADC_CONFIG ADC_CONFIG(
        .sysclk_200M(sysclk_200m),
        //interface SPI tx
        .spi_busy       (spi_busy),
        .write_register (spi_tx_data)   ,
        .spi_tx_valid   (spi_tx_valid)  ,
        .spi_tx_ready   (spi_tx_ready)  ,

        .spi_rx_data    (spi_rx_data[127:112]),
        .spi_rx_valid   (spi_rx_valid)  ,
        .spi_rx_ready   (spi_config_rx_ready) ,
        .spi_config_en  (spi_config_en) ,
        // Configuration status interface
        .ADC_ENABLE     (ADC_ENABLE)    ,
        .ADC_config_complete (ADC_config_complete)
    ); 

    ADC_READ ADC_READ(
    .sysclk_200M(sysclk_200m),
    //interface SPI RX
    .spi_rx_valid           (spi_rx_valid),
    .spi_rx_ready           (spi_read_rx_ready),
    .spi_rx_data            (spi_rx_data ),
    .spi_rx_last            (spi_rx_last ),
    // Configuration status interface
    .ADC_ENABLE             (ADC_ENABLE),
    .ADC_config_complete    (ADC_config_complete),
    // interface to SPI PHY
    .spi_en                 (spi_read_en),
    .spi_busy               (spi_busy),
    // interface to ADC
    .ADC_CONVST             (ADC_CONVST),
    .ADC_BUSY               (ADC_BUSY),
    // Internal signals
    .spi_rx_data_A          (spi_rx_data_A),
    .spi_rx_data_B          (spi_rx_data_B),
    .spi_rx_data_C          (spi_rx_data_C),
    .spi_rx_data_D          (spi_rx_data_D),
    .spi_rx_data_E          (spi_rx_data_E),
    .spi_rx_data_F          (spi_rx_data_F),
    .spi_rx_data_G          (spi_rx_data_G),
    .spi_rx_data_H          (spi_rx_data_H),
    .spi_rx_data_valid      (spi_rx_data_valid)
    );

    // ADC_TOP_VIO ADC_TOP_VIO(
    // .clk         (sysclk_200m),

    // .probe_in0   (spi_busy),
    // .probe_in1   (ADC_config_complete),
    

    // .probe_out0  (ADC_ENABLE),
    // .probe_out1  (ADC_RST)
    // );
endmodule
