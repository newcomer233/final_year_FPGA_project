//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Tue Jul  1 16:25:49 2025
//Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
//Command     : generate_target RGMII.bd
//Design      : RGMII
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RGMII,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RGMII,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=5,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "RGMII.hwdef" *) 
module RGMII
   (axi_txd_arstn,
    axis_clk,
    gtx_clk_125M,
    m_axis_rxd_tdata,
    m_axis_rxd_tlast,
    m_axis_rxd_tready,
    m_axis_rxd_tuser,
    m_axis_rxd_tvalid,
    mdio_io,
    mdio_mdc,
    phy_rst_n,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_TXD_ARSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_TXD_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_txd_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK, ASSOCIATED_BUSIF s_axi:s_axis_txd:m_axis_rxd, ASSOCIATED_RESET axi_txd_arstn, CLK_DOMAIN RGMII_axis_clk_0, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input axis_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GTX_CLK_125M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GTX_CLK_125M, CLK_DOMAIN RGMII_gtx_clk_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input gtx_clk_125M;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxd, CLK_DOMAIN RGMII_axis_clk_0, FREQ_HZ 200000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [7:0]m_axis_rxd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TLAST" *) output m_axis_rxd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TREADY" *) input m_axis_rxd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TUSER" *) output [0:0]m_axis_rxd_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TVALID" *) output m_axis_rxd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio IO" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio, CAN_DEBUG false" *) inout mdio_io;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDC" *) output mdio_mdc;
  output [0:0]phy_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RD" *) (* X_INTERFACE_MODE = "Master" *) input [3:0]rgmii_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RX_CTL" *) input rgmii_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RXC" *) input rgmii_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TD" *) output [3:0]rgmii_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TX_CTL" *) output rgmii_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TXC" *) output rgmii_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN RGMII_axis_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [11:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [11:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_txd, CLK_DOMAIN RGMII_axis_clk_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [7:0]s_axis_txd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TKEEP" *) input [0:0]s_axis_txd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TLAST" *) input s_axis_txd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TREADY" *) output s_axis_txd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TUSER" *) input [0:0]s_axis_txd_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TVALID" *) input s_axis_txd_tvalid;
  input [7:0]tx_ifg_delay;

  wire [7:0]TEMAC_m_axis_rx_TDATA;
  wire TEMAC_m_axis_rx_TLAST;
  wire TEMAC_m_axis_rx_TUSER;
  wire TEMAC_m_axis_rx_TVALID;
  (* CONN_BUS_INFO = "TEMAC_rgmii_status xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 None duplex_status" *) (* DONT_TOUCH *) wire TEMAC_rgmii_status_duplex_status;
  (* CONN_BUS_INFO = "TEMAC_rgmii_status xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 None link_speed" *) (* DONT_TOUCH *) wire [1:0]TEMAC_rgmii_status_link_speed;
  (* CONN_BUS_INFO = "TEMAC_rgmii_status xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 None link_status" *) (* DONT_TOUCH *) wire TEMAC_rgmii_status_link_status;
  wire TEMAC_rx_mac_aclk;
  wire TEMAC_rx_reset;
  (* CONN_BUS_INFO = "TEMAC_rx_statistics xilinx.com:display_tri_mode_ethernet_mac:statistics:1.0 None statistics_data" *) (* DONT_TOUCH *) wire [27:0]TEMAC_rx_statistics_statistics_data;
  (* CONN_BUS_INFO = "TEMAC_rx_statistics xilinx.com:display_tri_mode_ethernet_mac:statistics:1.0 None statistics_valid" *) (* DONT_TOUCH *) wire TEMAC_rx_statistics_statistics_valid;
  wire TEMAC_tx_mac_aclk;
  wire TEMAC_tx_reset;
  (* CONN_BUS_INFO = "TEMAC_tx_statistics xilinx.com:display_tri_mode_ethernet_mac:statistics:1.0 None statistics_data" *) (* DONT_TOUCH *) wire [31:0]TEMAC_tx_statistics_statistics_data;
  (* CONN_BUS_INFO = "TEMAC_tx_statistics xilinx.com:display_tri_mode_ethernet_mac:statistics:1.0 None statistics_valid" *) (* DONT_TOUCH *) wire TEMAC_tx_statistics_statistics_valid;
  wire axi_txd_arstn;
  wire axis_clk_1;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [7:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [0:0]axis_dwidth_converter_0_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire axis_dwidth_converter_0_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire axis_dwidth_converter_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]axis_dwidth_converter_0_M_AXIS_TUSER;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire axis_dwidth_converter_0_M_AXIS_TVALID;
  wire gtx_clk_125M;
  wire [7:0]m_axis_rxd_tdata;
  wire m_axis_rxd_tlast;
  wire m_axis_rxd_tready;
  wire [0:0]m_axis_rxd_tuser;
  wire m_axis_rxd_tvalid;
  wire mdio_io;
  wire mdio_mdc;
  wire [0:0]phy_rst_n;
  wire [3:0]rgmii_rd;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_td;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [0:0]rst_TEMAC_125M_peripheral_aresetn;
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
  wire speedis100;
  wire speedis10100;
  wire [7:0]tx_ifg_delay;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;

  assign axis_clk_1 = axis_clk;
  RGMII_tri_mode_ethernet_mac_0_0 TEMAC
       (.glbl_rstn(axi_txd_arstn),
        .gtx_clk(gtx_clk_125M),
        .inband_clock_speed(TEMAC_rgmii_status_link_speed),
        .inband_duplex_status(TEMAC_rgmii_status_duplex_status),
        .inband_link_status(TEMAC_rgmii_status_link_status),
        .mdc(mdio_mdc),
        .mdio(mdio_io),
        .pause_req(1'b0),
        .pause_val({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_td),
        .rx_axi_rstn(axi_txd_arstn),
        .rx_axis_mac_tdata(TEMAC_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(TEMAC_m_axis_rx_TLAST),
        .rx_axis_mac_tuser(TEMAC_m_axis_rx_TUSER),
        .rx_axis_mac_tvalid(TEMAC_m_axis_rx_TVALID),
        .rx_mac_aclk(TEMAC_rx_mac_aclk),
        .rx_reset(TEMAC_rx_reset),
        .rx_statistics_valid(TEMAC_rx_statistics_statistics_valid),
        .rx_statistics_vector(TEMAC_rx_statistics_statistics_data),
        .s_axi_aclk(axis_clk_1),
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
        .s_axi_resetn(axi_txd_arstn),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .speedis100(speedis100),
        .speedis10100(speedis10100),
        .tx_axi_rstn(axi_txd_arstn),
        .tx_axis_mac_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .tx_axis_mac_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .tx_axis_mac_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .tx_axis_mac_tuser(axis_dwidth_converter_0_M_AXIS_TUSER),
        .tx_axis_mac_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .tx_ifg_delay(tx_ifg_delay),
        .tx_mac_aclk(TEMAC_tx_mac_aclk),
        .tx_reset(TEMAC_tx_reset),
        .tx_statistics_valid(TEMAC_tx_statistics_statistics_valid),
        .tx_statistics_vector(TEMAC_tx_statistics_statistics_data));
  RGMII_axis_TX_data_fifo_0 axis_RX_data_fifo
       (.m_axis_aclk(axis_clk_1),
        .m_axis_tdata(m_axis_rxd_tdata),
        .m_axis_tlast(m_axis_rxd_tlast),
        .m_axis_tready(m_axis_rxd_tready),
        .m_axis_tuser(m_axis_rxd_tuser),
        .m_axis_tvalid(m_axis_rxd_tvalid),
        .s_axis_aclk(TEMAC_rx_mac_aclk),
        .s_axis_aresetn(util_vector_logic_1_Res),
        .s_axis_tdata(TEMAC_m_axis_rx_TDATA),
        .s_axis_tlast(TEMAC_m_axis_rx_TLAST),
        .s_axis_tuser(TEMAC_m_axis_rx_TUSER),
        .s_axis_tvalid(TEMAC_m_axis_rx_TVALID));
  RGMII_axis_data_fifo_0_0 axis_TX_data_fifo
       (.m_axis_aclk(TEMAC_tx_mac_aclk),
        .m_axis_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_dwidth_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_dwidth_converter_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(axis_clk_1),
        .s_axis_aresetn(util_vector_logic_0_Res),
        .s_axis_tdata(s_axis_txd_tdata),
        .s_axis_tkeep(s_axis_txd_tkeep),
        .s_axis_tlast(s_axis_txd_tlast),
        .s_axis_tready(s_axis_txd_tready),
        .s_axis_tuser(s_axis_txd_tuser),
        .s_axis_tvalid(s_axis_txd_tvalid));
  RGMII_rst_TEMAC_125M_0 rst_TEMAC_125M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(TEMAC_rx_reset),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_TEMAC_125M_peripheral_aresetn),
        .slowest_sync_clk(TEMAC_tx_mac_aclk));
  RGMII_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .SLOT_0_AXIS_tkeep(axis_dwidth_converter_0_M_AXIS_TKEEP),
        .SLOT_0_AXIS_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .SLOT_0_AXIS_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .SLOT_0_AXIS_tuser(axis_dwidth_converter_0_M_AXIS_TUSER),
        .SLOT_0_AXIS_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .SLOT_1_RGMII_STATUS_duplex_status(TEMAC_rgmii_status_duplex_status),
        .SLOT_1_RGMII_STATUS_link_speed(TEMAC_rgmii_status_link_speed),
        .SLOT_1_RGMII_STATUS_link_status(TEMAC_rgmii_status_link_status),
        .SLOT_2_STATISTICS_statistics_data(TEMAC_tx_statistics_statistics_data),
        .SLOT_2_STATISTICS_statistics_valid(TEMAC_tx_statistics_statistics_valid),
        .SLOT_3_STATISTICS_statistics_data(TEMAC_rx_statistics_statistics_data),
        .SLOT_3_STATISTICS_statistics_valid(TEMAC_rx_statistics_statistics_valid),
        .clk(TEMAC_tx_mac_aclk),
        .resetn(rst_TEMAC_125M_peripheral_aresetn));
  RGMII_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(TEMAC_tx_reset),
        .Res(util_vector_logic_0_Res));
  RGMII_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(TEMAC_rx_reset),
        .Res(util_vector_logic_1_Res));
  RGMII_vio_0_0 vio
       (.clk(axis_clk_1),
        .probe_in0(speedis100),
        .probe_in1(speedis10100),
        .probe_out0(phy_rst_n));
endmodule
