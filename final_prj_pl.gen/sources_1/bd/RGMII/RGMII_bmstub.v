// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module RGMII (
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
  rgmii_rd,
  rgmii_rx_ctl,
  rgmii_rxc,
  rgmii_td,
  rgmii_tx_ctl,
  rgmii_txc,
  m_axis_rxd_tdata,
  m_axis_rxd_tready,
  m_axis_rxd_tvalid,
  m_axis_rxd_tlast,
  m_axis_rxd_tuser,
  s_axis_txd_tdata,
  s_axis_txd_tkeep,
  s_axis_txd_tlast,
  s_axis_txd_tready,
  s_axis_txd_tuser,
  s_axis_txd_tvalid,
  mdio_io_1,
  mdio_mdc,
  axis_clk,
  gtx_clk_125M,
  axi_txd_arstn,
  tx_ifg_delay,
  phy_rst_n,
  refclk_100M
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
  (* X_INTERFACE_MODE = "slave s_axi" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN RGMII_axis_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [11:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
  output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
  input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
  input [11:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
  output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
  input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
  input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
  output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
  output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
  output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
  input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
  output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
  output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
  input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
  output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
  input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RD" *)
  (* X_INTERFACE_MODE = "master rgmii" *)
  input [3:0]rgmii_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RX_CTL" *)
  input rgmii_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RXC" *)
  input rgmii_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TD" *)
  output [3:0]rgmii_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TX_CTL" *)
  output rgmii_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TXC" *)
  output rgmii_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TDATA" *)
  (* X_INTERFACE_MODE = "master m_axis_rxd" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxd, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN RGMII_axis_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
  output [7:0]m_axis_rxd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TREADY" *)
  input m_axis_rxd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TVALID" *)
  output m_axis_rxd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TLAST" *)
  output m_axis_rxd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TUSER" *)
  output [0:0]m_axis_rxd_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TDATA" *)
  (* X_INTERFACE_MODE = "slave s_axis_txd" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_txd, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN RGMII_axis_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
  input [7:0]s_axis_txd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TKEEP" *)
  input [0:0]s_axis_txd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TLAST" *)
  input s_axis_txd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TREADY" *)
  output s_axis_txd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TUSER" *)
  input [0:0]s_axis_txd_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TVALID" *)
  input s_axis_txd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio IO" *)
  (* X_INTERFACE_MODE = "master mdio" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio, CAN_DEBUG false" *)
  inout mdio_io_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDC" *)
  output mdio_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AXIS_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN RGMII_axis_clk_0, ASSOCIATED_BUSIF s_axi:s_axis_txd:m_axis_rxd, ASSOCIATED_RESET axi_txd_arstn, INSERT_VIP 0" *)
  input axis_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GTX_CLK_125M CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.GTX_CLK_125M" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GTX_CLK_125M, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN RGMII_gtx_clk_0, INSERT_VIP 0" *)
  input gtx_clk_125M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_TXD_ARSTN RST" *)
  (* X_INTERFACE_MODE = "slave RST.AXI_TXD_ARSTN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_TXD_ARSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input axi_txd_arstn;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]tx_ifg_delay;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]phy_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.REFCLK_100M CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.REFCLK_100M" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.REFCLK_100M, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN RGMII_refclk_0, INSERT_VIP 0" *)
  input refclk_100M;

  // stub module has no contents

endmodule
