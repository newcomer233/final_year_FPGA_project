//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Wed Jul 30 12:21:02 2025
//Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
//Command     : generate_target RGMII_wrapper.bd
//Design      : RGMII_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RGMII_wrapper
   (axi_txd_arstn,
    axis_clk,
    gtx_clk_125M,
    m_axis_rxd_tdata,
    m_axis_rxd_tlast,
    m_axis_rxd_tready,
    m_axis_rxd_tuser,
    m_axis_rxd_tvalid,
    mdio_io_1,
    mdio_mdc,
    phy_rst_n,
    refclk_100M,
    rgmii_rd,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_td,
    rgmii_tx_ctl,
    rgmii_txc,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wvalid,
    s_axis_txd_tdata,
    s_axis_txd_tkeep,
    s_axis_txd_tlast,
    s_axis_txd_tready,
    s_axis_txd_tuser,
    s_axis_txd_tvalid,
    tx_ifg_delay);
  input axi_txd_arstn;
  input axis_clk;
  input gtx_clk_125M;
  output [7:0]m_axis_rxd_tdata;
  output m_axis_rxd_tlast;
  input m_axis_rxd_tready;
  output [0:0]m_axis_rxd_tuser;
  output m_axis_rxd_tvalid;
  inout mdio_io_1;
  output mdio_mdc;
  output [0:0]phy_rst_n;
  input refclk_100M;
  input [3:0]rgmii_rd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output [3:0]rgmii_td;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [11:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [11:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input s_axi_wvalid;
  input [7:0]s_axis_txd_tdata;
  input [0:0]s_axis_txd_tkeep;
  input s_axis_txd_tlast;
  output s_axis_txd_tready;
  input [0:0]s_axis_txd_tuser;
  input s_axis_txd_tvalid;
  input [7:0]tx_ifg_delay;

  wire axi_txd_arstn;
  wire axis_clk;
  wire gtx_clk_125M;
  wire [7:0]m_axis_rxd_tdata;
  wire m_axis_rxd_tlast;
  wire m_axis_rxd_tready;
  wire [0:0]m_axis_rxd_tuser;
  wire m_axis_rxd_tvalid;
  wire mdio_io_1;
  wire mdio_mdc;
  wire [0:0]phy_rst_n;
  wire refclk_100M;
  wire [3:0]rgmii_rd;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_td;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [11:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [7:0]s_axis_txd_tdata;
  wire [0:0]s_axis_txd_tkeep;
  wire s_axis_txd_tlast;
  wire s_axis_txd_tready;
  wire [0:0]s_axis_txd_tuser;
  wire s_axis_txd_tvalid;
  wire [7:0]tx_ifg_delay;

  RGMII RGMII_i
       (.axi_txd_arstn(axi_txd_arstn),
        .axis_clk(axis_clk),
        .gtx_clk_125M(gtx_clk_125M),
        .m_axis_rxd_tdata(m_axis_rxd_tdata),
        .m_axis_rxd_tlast(m_axis_rxd_tlast),
        .m_axis_rxd_tready(m_axis_rxd_tready),
        .m_axis_rxd_tuser(m_axis_rxd_tuser),
        .m_axis_rxd_tvalid(m_axis_rxd_tvalid),
        .mdio_io_1(mdio_io_1),
        .mdio_mdc(mdio_mdc),
        .phy_rst_n(phy_rst_n),
        .refclk_100M(refclk_100M),
        .rgmii_rd(rgmii_rd),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_td(rgmii_td),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_txd_tdata(s_axis_txd_tdata),
        .s_axis_txd_tkeep(s_axis_txd_tkeep),
        .s_axis_txd_tlast(s_axis_txd_tlast),
        .s_axis_txd_tready(s_axis_txd_tready),
        .s_axis_txd_tuser(s_axis_txd_tuser),
        .s_axis_txd_tvalid(s_axis_txd_tvalid),
        .tx_ifg_delay(tx_ifg_delay));
endmodule
