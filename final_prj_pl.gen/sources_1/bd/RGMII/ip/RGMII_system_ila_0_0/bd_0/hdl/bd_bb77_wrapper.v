//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_bb77_wrapper.bd
//Design : bd_bb77_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_bb77_wrapper
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
  input [7:0]SLOT_0_AXIS_tdata;
  input [0:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input SLOT_1_RGMII_STATUS_duplex_status;
  input [1:0]SLOT_1_RGMII_STATUS_link_speed;
  input SLOT_1_RGMII_STATUS_link_status;
  input [31:0]SLOT_2_STATISTICS_statistics_data;
  input SLOT_2_STATISTICS_statistics_valid;
  input [27:0]SLOT_3_STATISTICS_statistics_data;
  input SLOT_3_STATISTICS_statistics_valid;
  input clk;
  input resetn;

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
  wire resetn;

  bd_bb77 bd_bb77_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .SLOT_1_RGMII_STATUS_duplex_status(SLOT_1_RGMII_STATUS_duplex_status),
        .SLOT_1_RGMII_STATUS_link_speed(SLOT_1_RGMII_STATUS_link_speed),
        .SLOT_1_RGMII_STATUS_link_status(SLOT_1_RGMII_STATUS_link_status),
        .SLOT_2_STATISTICS_statistics_data(SLOT_2_STATISTICS_statistics_data),
        .SLOT_2_STATISTICS_statistics_valid(SLOT_2_STATISTICS_statistics_valid),
        .SLOT_3_STATISTICS_statistics_data(SLOT_3_STATISTICS_statistics_data),
        .SLOT_3_STATISTICS_statistics_valid(SLOT_3_STATISTICS_statistics_valid),
        .clk(clk),
        .resetn(resetn));
endmodule
