`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/20 16:02:05
// Design Name: 
// Module Name: IMU_SPI_LINK
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


module IMU_SPI_LINK(
    input sysclk_200m,
    input rst_n,
    //physical layer
    inout           SPI_CLK,
    input           SPI_DIN,
    output          SPI_DOUT,
    inout           SPI_CS_N,
    //data interface axi-stream
    input           spi_tx_valid,
    output          spi_tx_ready,
    input  [15:0]   spi_tx_data,
    input           spi_tx_last,

    output          spi_rx_valid,
    input           spi_rx_ready,
    output [15:0]   spi_rx_data,
    output          spi_rx_last,
    //control interface
    input           spi_en,
    input  [31:0]   bits_len,
    output          spi_busy
    
    );
    wire   [15:0]   tx_data             ;
    wire            tx_data_valid       ;
    wire            tx_data_ready       ;
    wire   [15:0]   rx_data             ;
    wire            rx_valid            ;
    wire            rx_tlast            ;

    wire            fifo_tx_data_valid  ;
    wire            fifo_tx_data_ready  ;
    wire   [15:0]   fifo_tx_data        ;


	  wire		       rx_tready;
    wire   [1:0]   SPI_MODE;
    assign tx_data              = fifo_tx_data;    
    assign tx_data_valid        = fifo_tx_data_valid;
    assign fifo_tx_data_ready   = tx_data_ready;
    assign SPI_MODE             = 2'b11;
 spi_tx_fifo spi_tx_fifo (
  .s_aclk(sysclk_200m),                // input wire s_aclk

  .s_aresetn        (rst_n),            // input wire s_aresetn
  .s_axis_tvalid    (spi_tx_valid),     // input wire s_axis_tvalid
  .s_axis_tready    (spi_tx_ready),     // output wire s_axis_tready
  .s_axis_tdata     (spi_tx_data),      // input wire [31 : 0] s_axis_tdata
  .s_axis_tlast     (spi_tx_last),      // input wire s_axis_tlast

  .m_axis_tvalid    (fifo_tx_data_valid),   // output wire m_axis_tvalid
  .m_axis_tready    (fifo_tx_data_ready),   // input wire m_axis_tready
  .m_axis_tdata     (fifo_tx_data),         // output wire [31 : 0] m_axis_tdata
  .m_axis_tlast()                           // output wire m_axis_tlast
);

 spi_rx_fifo_16bit spi_rx_fifo (
  .s_aclk(sysclk_200m),             // input wire s_aclk

  .s_aresetn        (rst_n),         // input wire s_aresetn
  .s_axis_tvalid    (rx_valid),      // input wire s_axis_tvalid
  .s_axis_tready    (rx_tready),     // output wire s_axis_tready
  .s_axis_tdata     (rx_data),       // input wire [31 : 0] s_axis_tdata
  .s_axis_tlast     (rx_tlast),      // input wire s_axis_tlast

  .m_axis_tvalid    (spi_rx_valid),  // output wire m_axis_tvalid
  .m_axis_tready    (spi_rx_ready),  // input wire m_axis_tready
  .m_axis_tdata     (spi_rx_data),   // output wire [31 : 0] m_axis_tdata
  .m_axis_tlast     (spi_rx_last)    // output wire m_axis_tlast
  );    
    

    IMU_SPI_PHY IMU_SPI_PHY(
        .sysclk_200m    (sysclk_200m),
        //PHYSICAL INTERFACE
        .SPI_CLK        (SPI_CLK),
        .SPI_DIN        (SPI_DIN),

        .SPI_DOUT       (SPI_DOUT),
        .SPI_CS_N       (SPI_CS_N),
        //INTERNAL DATA INTERFACE
        .tx_data        (tx_data      ),
        .tx_data_valid  (tx_data_valid),
        .tx_data_ready  (tx_data_ready),

        .rx_data        (rx_data      ),
        .rx_valid       (rx_valid     ),
        .rx_tlast       (rx_tlast     ),

        .spi_en         (spi_en       ),
        .spi_busy       (spi_busy     ),
        //INTERNAL CONTROL INTERFACE
        .SPI_enable (1'b1),
        .SPI_master (1'b1),
        .SPI_MODE   (SPI_MODE),
        .SPI_HZ     (32'd10),
        .bits_len   (bits_len)
        );

endmodule
