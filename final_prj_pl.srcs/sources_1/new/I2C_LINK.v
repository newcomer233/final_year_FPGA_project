`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/08/10 14:13:54
// Design Name: 
// Module Name: I2C_LINK
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


module I2C_LINK(
    input           sysclk_100m,
    inout           SCL,
    inout           SDA,

    input           tx_axis_tvalid,
    output          tx_axis_tready,
    input [7 : 0]   tx_axis_tdata,
    input           tx_axis_tlast,

    output           rx_axis_tvalid,
    output           rx_axis_tlast,
    input            rx_axis_tready,
    output [7 : 0]   rx_axis_tdata,

    input           cfg_clk,
    input           cfg_rst,
    input           cfg_en,
    input           cfg_wr,
    input    [31:0] cfg_addr,
    input    [31:0] cfg_wdata,
    output   [31:0] cfg_rdata,

    output          i2c_int
    ); 
    wire        i2c_enable;
    wire        MATER_SLAVE_n;
    wire [2:0]  SPD_TYPE;
    wire [7:0]  chip_id;
    wire [15:0] addr_id;
    wire [31:0] addr_len;
    wire [31:0] data_len;


    wire m_axis_tvalid;
    wire m_axis_tready;
    wire [7 : 0] m_axis_tdata;

    wire [7:0] tx_data;
    wire [7:0] rx_data;
    wire [7:0] tx_tdata;
    wire [7:0] map_data;
    wire       s_axis_tready;
    wire       s_axis_tvalid;
    wire [7:0]  chip_id_map;
    wire [15:0] addr_id_map;   
    wire        tx_busy;
    I2C_PHY I2C_PHY(
    . sysclk_100m   (sysclk_100m),
    . SCL           (SCL),
    . SDA           (SDA),

    . MATER_SLAVE_n (MATER_SLAVE_n),
    . SPD_TYPE      (SPD_TYPE),

    . chip_id       (chip_id),
    . addr_id       (addr_id),
    . chip_id_map   (chip_id_map),
    . addr_id_map   (addr_id_map),   
    . addr_id_map_valid (addr_id_map_valid), 
    //master ctrl interface;
	. i2c_enable	(i2c_enable),
    . tx_data       (tx_data),
    . tx_en         (tx_en),
    . tx_busy       (tx_busy),
    . data_finish   (data_finish),
    . rx_data       (rx_data),
    . rx_data_valid (rx_data_valid),
    . rx_data_last  (rx_data_last),

    . addr_len      (addr_len),
    . data_len      (data_len)
    );
    assign tx_data          =   MATER_SLAVE_n ? tx_tdata        : map_data  ;
    assign tx_tdata_ready   =   MATER_SLAVE_n ? data_finish     : 1'b0  ;
    assign tx_en            =   MATER_SLAVE_n ? i2c_en          : 1'b0  ;
    assign s_axis_tvalid    =   MATER_SLAVE_n ? rx_data_valid   : 1'b0  ;
    I2C_FIFO I2C_WR_FIFO (
        .s_aclk         (sysclk_100m),           // input wire s_aclk
        .s_aresetn      (1'B1),         // input wire s_aresetn MATER_SLAVE_n & i2c_enable

        .s_axis_tvalid  (tx_axis_tvalid),        // input wire s_axis_tvalid
        .s_axis_tlast   (1'b0),
        .s_axis_tready  (tx_axis_tready),        // output wire s_axis_tready
        .s_axis_tdata   (tx_axis_tdata),         // input wire [7 : 0] s_axis_tdata

        .m_axis_tvalid  (tx_tdata_valid),       // output wire m_axis_tvalid
        .m_axis_tready  (tx_tdata_ready),       // input wire m_axis_tready
        .m_axis_tdata   (tx_tdata)              // output wire [7 : 0] m_axis_tdata
    );
     I2C_FIFO I2C_RD_FIFO(
        .s_aclk         (sysclk_100m),           // input wire s_aclk
        .s_aresetn      (1'B1),   				 // input wire s_aresetn

        .s_axis_tvalid  (s_axis_tvalid),         // input wire s_axis_tvalid
        .s_axis_tlast   (rx_data_last),
        .s_axis_tready  (s_axis_tready),         // output wire s_axis_tready
        .s_axis_tdata   (rx_data),               // input wire [7 : 0] s_axis_tdata

        .m_axis_tvalid  (rx_axis_tvalid),       // output wire m_axis_tvalid
        .m_axis_tready  (rx_axis_tready),       // input wire m_axis_tready
        .m_axis_tlast   (rx_axis_tlast),
        .m_axis_tdata   (rx_axis_tdata)         // output wire [7 : 0] m_axis_tdata


     );
    I2C_CONFIG I2C_CONFIG(
    . sysclk_100m (sysclk_100m),
    . cfg_clk     (cfg_clk),
    . cfg_rst     (cfg_rst),
    . cfg_en      (cfg_en),
    . cfg_wr      (cfg_wr),
    . cfg_addr    (cfg_addr),
    . cfg_wdata   (cfg_wdata),
    . cfg_rdata   (cfg_rdata),

    . i2c_enable    (i2c_enable),
    . i2c_en        (i2c_en),
    . MATER_SLAVE_n (MATER_SLAVE_n),
    . SPD_TYPE      (SPD_TYPE),
    . chip_id       (chip_id),
    . addr_id       (addr_id),  
    . addr_len      (addr_len),
    . data_len      (data_len),

    . chip_id_map   (chip_id_map),
    . addr_id_map   (addr_id_map),
    . addr_id_map_valid (addr_id_map_valid),
    . rx_data       (rx_data),
    . map_data      (map_data),
    . tx_busy       (tx_busy),
    . i2c_int       (i2c_int)
     );
        



endmodule
