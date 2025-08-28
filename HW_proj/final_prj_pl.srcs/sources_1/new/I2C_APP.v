`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/08/05 17:09:10
// Design Name: 
// Module Name: I2C_APP
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


module I2C_APP(
    input sysclk_100m,
    inout SCL,//I2C CLK
    inout SDA,//I2C DATA

    input           tx_axis_tvalid,
    output          tx_axis_tready,
    input [7 : 0]   tx_axis_tdata,

    output           rx_axis_tvalid,
    input            rx_axis_tready,
    output           rx_axis_tlast,
    output [7 : 0]   rx_axis_tdata,

    input           s_axi_aclk,
    input           s_axi_aresetn,
    input [11 : 0]  s_axi_awaddr,
    input [2 : 0]   s_axi_awprot,
    input           s_axi_awvalid,
    output          s_axi_awready,
    input [31 : 0]  s_axi_wdata,
    input [3 : 0]   s_axi_wstrb,
    input           s_axi_wvalid,
    output          s_axi_wready,
    output [1 : 0]  s_axi_bresp,
    output          s_axi_bvalid,
    input           s_axi_bready,
    input [11 : 0]  s_axi_araddr,
    input [2 : 0]   s_axi_arprot,
    input           s_axi_arvalid,
    output          s_axi_arready,
    output [31 : 0] s_axi_rdata,
    output [1 : 0]  s_axi_rresp,
    output          s_axi_rvalid,
    input           s_axi_rready,

    output          i2c_int
    );
    wire            cfg_rst;
    wire            cfg_clk;
    wire            cfg_en;
    wire [3 : 0]    cfg_we;
    wire [11 : 0]   cfg_addr;
    wire [31 : 0]   cfg_wdata;
    wire [31 : 0]   cfg_rdata;
    AXI2BRAM AXI2BRAM (
    .s_axi_aclk     (s_axi_aclk),        // input wire s_axi_aclk
    .s_axi_aresetn  (s_axi_aresetn),  // input wire s_axi_aresetn
    .s_axi_awaddr   (s_axi_awaddr),    // input wire [11 : 0] s_axi_awaddr
    .s_axi_awprot   (s_axi_awprot),    // input wire [2 : 0] s_axi_awprot
    .s_axi_awvalid  (s_axi_awvalid),  // input wire s_axi_awvalid
    .s_axi_awready  (s_axi_awready),  // output wire s_axi_awready
    .s_axi_wdata    (s_axi_wdata),      // input wire [31 : 0] s_axi_wdata
    .s_axi_wstrb    (s_axi_wstrb),      // input wire [3 : 0] s_axi_wstrb
    .s_axi_wvalid   (s_axi_wvalid),    // input wire s_axi_wvalid
    .s_axi_wready   (s_axi_wready),    // output wire s_axi_wready
    .s_axi_bresp    (s_axi_bresp),      // output wire [1 : 0] s_axi_bresp
    .s_axi_bvalid   (s_axi_bvalid),    // output wire s_axi_bvalid
    .s_axi_bready   (s_axi_bready),    // input wire s_axi_bready
    .s_axi_araddr   (s_axi_araddr),    // input wire [11 : 0] s_axi_araddr
    .s_axi_arprot   (s_axi_arprot),    // input wire [2 : 0] s_axi_arprot
    .s_axi_arvalid  (s_axi_arvalid),  // input wire s_axi_arvalid
    .s_axi_arready  (s_axi_arready),  // output wire s_axi_arready
    .s_axi_rdata    (s_axi_rdata),      // output wire [31 : 0] s_axi_rdata
    .s_axi_rresp    (s_axi_rresp),      // output wire [1 : 0] s_axi_rresp
    .s_axi_rvalid   (s_axi_rvalid),    // output wire s_axi_rvalid
    .s_axi_rready   (s_axi_rready),    // input wire s_axi_rready
    .bram_rst_a     (cfg_rst),        // output wire bram_rst_a
    .bram_clk_a     (cfg_clk),        // output wire bram_clk_a
    .bram_en_a      (cfg_en),          // output wire bram_en_a
    .bram_we_a      (cfg_we),          // output wire [3 : 0] bram_we_a
    .bram_addr_a    (cfg_addr),      // output wire [11 : 0] bram_addr_a
    .bram_wrdata_a  (cfg_wdata),  // output wire [31 : 0] bram_wrdata_a
    .bram_rddata_a  (cfg_rdata)  // input wire [31 : 0] bram_rddata_a
    );
    I2C_LINK I2C_LINK(
    .sysclk_100m        (sysclk_100m        ),
    .SCL                (SCL                ),
    .SDA                (SDA                ),

    .tx_axis_tvalid     (tx_axis_tvalid     ),
    .tx_axis_tready     (tx_axis_tready     ),
    .tx_axis_tdata      (tx_axis_tdata      ),
    .rx_axis_tvalid     (rx_axis_tvalid     ),
    .rx_axis_tlast      (rx_axis_tlast      ),
    .rx_axis_tready     (rx_axis_tready     ),
    .rx_axis_tdata      (rx_axis_tdata      ),
    

    .cfg_clk            (cfg_clk            ),
    .cfg_rst            (cfg_rst            ),
    .cfg_en             (cfg_en             ),
    .cfg_wr             (cfg_we             ),
    .cfg_addr           (cfg_addr           ),
    .cfg_wdata          (cfg_wdata          ),
    .cfg_rdata          (cfg_rdata          ),
    
    .i2c_int            (i2c_int            )
    );
    
endmodule
