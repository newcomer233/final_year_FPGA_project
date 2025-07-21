`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/01 12:15:58
// Design Name: 
// Module Name: UDP_TOP
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


module UDP_TOP(
    input           axis_clk,
    input           gtx_clk_125M,
    input           refclk_100M,

    output          mdc,
    inout [0:0]     mdio,
    output [0:0]    phy_rst_n,

    input [3:0]     rgmii_rd,
    input           rgmii_rx_ctl,
    input           rgmii_rxc,
    output [3:0]    rgmii_td,
    output          rgmii_tx_ctl,
    output          rgmii_txc,

    //package data interface
    input           axi_txd_arstn,
    input           transmit_enable,
    output          transmit_busy,
    input   [15:0]  tx_data_length,
    input   [7:0]   sensor_data_tdata,
    input           sensor_data_tkeep,
    input           sensor_data_tlast,
    output          sensor_data_tready,
    input           sensor_data_tvalid,
    input   [0:0]   sensor_data_tuser
    );

    
    
    wire [11:0]   s_axi_araddr;
    wire          s_axi_arready;
    wire          s_axi_arvalid;
    wire [11:0]   s_axi_awaddr;
    wire          s_axi_awready;
    wire          s_axi_awvalid;
    wire          s_axi_bready;
    wire [1:0]    s_axi_bresp;
    wire          s_axi_bvalid;
    wire [31:0]   s_axi_rdata;
    wire          s_axi_rready;
    wire [1:0]    s_axi_rresp;
    wire          s_axi_rvalid;
    wire [31:0]   s_axi_wdata;
    wire          s_axi_wready;
    wire [3:0]    s_axi_wstrb;
    wire          s_axi_wvalid;

    wire  [7:0]   m_axis_rxd_tdata;
    wire          m_axis_rxd_tkeep;
    wire          m_axis_rxd_tlast;
    wire          m_axis_rxd_tready;
    wire          m_axis_rxd_tuser;
    wire          m_axis_rxd_tvalid;

    wire [7:0]    s_axis_txd_tdata;
    wire [1:0]    s_axis_txd_tkeep;
    wire          s_axis_txd_tlast;
    wire          s_axis_txd_tready;
    wire          s_axis_rxd_tuser;
    wire          s_axis_txd_tvalid;
  
    

  wire [7:0]    tx_ifg_delay;
RGMII_wrapper RGMII_wrapper(
    .axi_txd_arstn      (axi_txd_arstn  ),
    .axis_clk           (axis_clk       ),
    .gtx_clk_125M       (gtx_clk_125M   ),
    .refclk_100M        (refclk_100M    ),

    //physical interface
    .mdio_mdc           (mdc            ),
    .mdio_io_1          (mdio           ),
    .phy_rst_n          (phy_rst_n      ),
    .rgmii_rd           (rgmii_rd       ),
    .rgmii_rx_ctl       (rgmii_rx_ctl   ),
    .rgmii_rxc          (rgmii_rxc      ),
    .rgmii_td           (rgmii_td       ),
    .rgmii_tx_ctl       (rgmii_tx_ctl   ),
    .rgmii_txc          (rgmii_txc      ),
    // AXI4-Lite control interface
    .s_axi_araddr       (s_axi_araddr   ),
    .s_axi_arready      (s_axi_arready  ),
    .s_axi_arvalid      (s_axi_arvalid  ),
    .s_axi_awaddr       (s_axi_awaddr   ),
    .s_axi_awready      (s_axi_awready  ),
    .s_axi_awvalid      (s_axi_awvalid  ),
    .s_axi_bready       (s_axi_bready   ),
    .s_axi_bresp        (s_axi_bresp    ),
    .s_axi_bvalid       (s_axi_bvalid   ),
    .s_axi_rdata        (s_axi_rdata    ),
    .s_axi_rready       (s_axi_rready   ),
    .s_axi_rresp        (s_axi_rresp    ),
    .s_axi_rvalid       (s_axi_rvalid   ),
    .s_axi_wdata        (s_axi_wdata    ),
    .s_axi_wready       (s_axi_wready   ),
    .s_axi_wvalid       (s_axi_wvalid   ),
    // AXI4-Stream data interface
    // package data inerface
    .s_axis_txd_tdata   (s_axis_txd_tdata ),
    .s_axis_txd_tkeep   (s_axis_txd_tkeep ),
    .s_axis_txd_tlast   (s_axis_txd_tlast ),
    .s_axis_txd_tready  (s_axis_txd_tready),
    .s_axis_txd_tuser   (s_axis_rxd_tuser ),
    .s_axis_txd_tvalid  (s_axis_txd_tvalid),
    // package data interface
    .m_axis_rxd_tdata   (m_axis_rxd_tdata ),
    .m_axis_rxd_tlast   (m_axis_rxd_tlast ),
    .m_axis_rxd_tready  (m_axis_rxd_tready),
    .m_axis_rxd_tuser   (m_axis_rxd_tuser ),
    .m_axis_rxd_tvalid  (m_axis_rxd_tvalid),
    // configurable interface
    .tx_ifg_delay       (tx_ifg_delay   ) // 8-bit
    );

    UDP_CONFIG UDP_CONFIG(
        .axis_clk           (axis_clk       ),
        .axi_txd_arstn      (axi_txd_arstn  ),
        // AXI4-Lite control interface
        .S_AXI_araddr       (s_axi_araddr   ),
        .S_AXI_arready      (s_axi_arready  ),
        .S_AXI_arvalid      (s_axi_arvalid  ),
        .S_AXI_awaddr       (s_axi_awaddr   ),
        .S_AXI_awready      (s_axi_awready  ),
        .S_AXI_awvalid      (s_axi_awvalid  ),
        .S_AXI_bready       (s_axi_bready   ),
        .S_AXI_bresp        (s_axi_bresp    ),
        .S_AXI_bvalid       (s_axi_bvalid   ),
        .S_AXI_rdata        (s_axi_rdata    ),
        .S_AXI_rready       (s_axi_rready   ),
        .S_AXI_rresp        (s_axi_rresp    ),
        .S_AXI_rvalid       (s_axi_rvalid   ),
        .S_AXI_wdata        (s_axi_wdata    ),
        .S_AXI_wready       (s_axi_wready   ),
        .S_AXI_wstrb        (s_axi_wstrb    ),
        .S_AXI_wvalid       (s_axi_wvalid   )
    );

    UDP_PACKAGE UDP_PACKAGE (
        .axis_clk           (axis_clk       ),
        .axi_txd_arstn      (axi_txd_arstn  ),
        // AXI4-Stream data interface
        //package data inerface
        .s_axis_txd_tdata   (s_axis_txd_tdata ),
        .s_axis_txd_tkeep   (s_axis_txd_tkeep ),
        .s_axis_txd_tlast   (s_axis_txd_tlast ),
        .s_axis_txd_tready  (s_axis_txd_tready),
        .s_axis_txd_tvalid  (s_axis_txd_tvalid),
        // package data interface
        .m_axis_rxd_tdata   (m_axis_rxd_tdata ),
        .m_axis_rxd_tkeep   (m_axis_rxd_tkeep ),
        .m_axis_rxd_tlast   (m_axis_rxd_tlast ),
        .m_axis_rxd_tready  (m_axis_rxd_tready),
        .m_axis_rxd_tvalid  (m_axis_rxd_tvalid),
        // data interface
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
    
endmodule
