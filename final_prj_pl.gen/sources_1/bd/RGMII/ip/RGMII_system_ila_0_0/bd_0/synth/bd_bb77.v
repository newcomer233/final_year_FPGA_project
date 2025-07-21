//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_bb77.bd
//Design : bd_bb77
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_bb77,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_bb77,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "RGMII_system_ila_0_0.hwdef" *) 
module bd_bb77
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    SLOT_1_RGMII_STATUS_duplex_status,
    SLOT_1_RGMII_STATUS_link_speed,
    SLOT_1_RGMII_STATUS_link_status,
    SLOT_2_STATISTICS_statistics_data,
    SLOT_2_STATISTICS_statistics_valid,
    SLOT_3_STATISTICS_statistics_data,
    SLOT_3_STATISTICS_statistics_valid,
    clk,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN RGMII_gtx_clk_0, FREQ_HZ 125000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [7:0]SLOT_0_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP" *) input [0:0]SLOT_0_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input SLOT_0_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *) input SLOT_0_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TUSER" *) input [0:0]SLOT_0_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input SLOT_0_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 SLOT_1_RGMII_STATUS duplex_status" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) input SLOT_1_RGMII_STATUS_duplex_status;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 SLOT_1_RGMII_STATUS link_speed" *) input [1:0]SLOT_1_RGMII_STATUS_link_speed;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 SLOT_1_RGMII_STATUS link_status" *) input SLOT_1_RGMII_STATUS_link_status;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:statistics:1.0 SLOT_2_STATISTICS statistics_data" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) input [31:0]SLOT_2_STATISTICS_statistics_data;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:statistics:1.0 SLOT_2_STATISTICS statistics_valid" *) input SLOT_2_STATISTICS_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:statistics:1.0 SLOT_3_STATISTICS statistics_data" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) input [27:0]SLOT_3_STATISTICS_statistics_data;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:statistics:1.0 SLOT_3_STATISTICS statistics_valid" *) input SLOT_3_STATISTICS_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN RGMII_gtx_clk_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [7:0]SLOT_0_AXIS_tdata;
  wire [0:0]SLOT_0_AXIS_tkeep;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire [0:0]SLOT_0_AXIS_tuser;
  wire SLOT_0_AXIS_tvalid;
  wire SLOT_1_RGMII_STATUS_duplex_status;
  wire [1:0]SLOT_1_RGMII_STATUS_link_speed;
  wire SLOT_1_RGMII_STATUS_link_status;
  wire [31:0]SLOT_2_STATISTICS_statistics_data;
  wire SLOT_2_STATISTICS_statistics_valid;
  wire [27:0]SLOT_3_STATISTICS_statistics_data;
  wire SLOT_3_STATISTICS_statistics_valid;
  wire clk;
  wire [7:0]net_slot_0_axis_tdata;
  wire [0:0]net_slot_0_axis_tkeep;
  wire net_slot_0_axis_tlast;
  wire net_slot_0_axis_tready;
  wire [0:0]net_slot_0_axis_tuser;
  wire net_slot_0_axis_tvalid;
  wire resetn;

  bd_bb77_g_inst_0 g_inst
       (.aclk(clk),
        .aresetn(resetn),
        .m_slot_0_axis_tdata(net_slot_0_axis_tdata),
        .m_slot_0_axis_tkeep(net_slot_0_axis_tkeep),
        .m_slot_0_axis_tlast(net_slot_0_axis_tlast),
        .m_slot_0_axis_tready(net_slot_0_axis_tready),
        .m_slot_0_axis_tuser(net_slot_0_axis_tuser),
        .m_slot_0_axis_tvalid(net_slot_0_axis_tvalid),
        .slot_0_axis_tdata(SLOT_0_AXIS_tdata),
        .slot_0_axis_tkeep(SLOT_0_AXIS_tkeep),
        .slot_0_axis_tlast(SLOT_0_AXIS_tlast),
        .slot_0_axis_tready(SLOT_0_AXIS_tready),
        .slot_0_axis_tuser(SLOT_0_AXIS_tuser),
        .slot_0_axis_tvalid(SLOT_0_AXIS_tvalid));
  bd_bb77_ila_lib_0 ila_lib
       (.clk(clk),
        .probe0(net_slot_0_axis_tdata),
        .probe1(net_slot_0_axis_tkeep),
        .probe10(SLOT_2_STATISTICS_statistics_valid),
        .probe11(SLOT_3_STATISTICS_statistics_data),
        .probe12(SLOT_3_STATISTICS_statistics_valid),
        .probe2(net_slot_0_axis_tuser),
        .probe3(net_slot_0_axis_tvalid),
        .probe4(net_slot_0_axis_tready),
        .probe5(net_slot_0_axis_tlast),
        .probe6(SLOT_1_RGMII_STATUS_duplex_status),
        .probe7(SLOT_1_RGMII_STATUS_link_speed),
        .probe8(SLOT_1_RGMII_STATUS_link_status),
        .probe9(SLOT_2_STATISTICS_statistics_data));
endmodule
