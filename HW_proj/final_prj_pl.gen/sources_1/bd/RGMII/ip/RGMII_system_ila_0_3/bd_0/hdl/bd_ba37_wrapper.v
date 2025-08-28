//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_ba37_wrapper.bd
//Design : bd_ba37_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_ba37_wrapper
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    clk,
    resetn);
  input [7:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input clk;
  input resetn;

  wire [7:0]SLOT_0_AXIS_tdata;
  wire SLOT_0_AXIS_tlast;
  wire [0:0]SLOT_0_AXIS_tuser;
  wire SLOT_0_AXIS_tvalid;
  wire clk;
  wire resetn;

  bd_ba37 bd_ba37_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
