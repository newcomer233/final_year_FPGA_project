//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_990f_wrapper.bd
//Design : bd_990f_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_990f_wrapper
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arid,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awid,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rid,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wvalid,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arid,
    SLOT_1_AXI_arlen,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arsize,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awid,
    SLOT_1_AXI_awlen,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awsize,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bresp,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rid,
    SLOT_1_AXI_rlast,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wlast,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arid,
    SLOT_2_AXI_arlen,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arsize,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awid,
    SLOT_2_AXI_awlen,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awsize,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rid,
    SLOT_2_AXI_rlast,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wlast,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wvalid,
    clk,
    resetn);
  input [31:0]SLOT_0_AXI_araddr;
  input [0:0]SLOT_0_AXI_arid;
  input [7:0]SLOT_0_AXI_arlen;
  input SLOT_0_AXI_arready;
  input [2:0]SLOT_0_AXI_arsize;
  input SLOT_0_AXI_arvalid;
  input [31:0]SLOT_0_AXI_awaddr;
  input [0:0]SLOT_0_AXI_awid;
  input [7:0]SLOT_0_AXI_awlen;
  input SLOT_0_AXI_awready;
  input [2:0]SLOT_0_AXI_awsize;
  input SLOT_0_AXI_awvalid;
  input [0:0]SLOT_0_AXI_bid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [127:0]SLOT_0_AXI_rdata;
  input [0:0]SLOT_0_AXI_rid;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input SLOT_0_AXI_rvalid;
  input [127:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input SLOT_0_AXI_wvalid;
  input [31:0]SLOT_1_AXI_araddr;
  input [0:0]SLOT_1_AXI_arid;
  input [7:0]SLOT_1_AXI_arlen;
  input SLOT_1_AXI_arready;
  input [2:0]SLOT_1_AXI_arsize;
  input SLOT_1_AXI_arvalid;
  input [31:0]SLOT_1_AXI_awaddr;
  input [0:0]SLOT_1_AXI_awid;
  input [7:0]SLOT_1_AXI_awlen;
  input SLOT_1_AXI_awready;
  input [2:0]SLOT_1_AXI_awsize;
  input SLOT_1_AXI_awvalid;
  input [0:0]SLOT_1_AXI_bid;
  input SLOT_1_AXI_bready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input [127:0]SLOT_1_AXI_rdata;
  input [0:0]SLOT_1_AXI_rid;
  input SLOT_1_AXI_rlast;
  input SLOT_1_AXI_rready;
  input SLOT_1_AXI_rvalid;
  input [127:0]SLOT_1_AXI_wdata;
  input SLOT_1_AXI_wlast;
  input SLOT_1_AXI_wready;
  input SLOT_1_AXI_wvalid;
  input [31:0]SLOT_2_AXI_araddr;
  input [0:0]SLOT_2_AXI_arid;
  input [7:0]SLOT_2_AXI_arlen;
  input SLOT_2_AXI_arready;
  input [2:0]SLOT_2_AXI_arsize;
  input SLOT_2_AXI_arvalid;
  input [31:0]SLOT_2_AXI_awaddr;
  input [0:0]SLOT_2_AXI_awid;
  input [7:0]SLOT_2_AXI_awlen;
  input SLOT_2_AXI_awready;
  input [2:0]SLOT_2_AXI_awsize;
  input SLOT_2_AXI_awvalid;
  input [0:0]SLOT_2_AXI_bid;
  input SLOT_2_AXI_bready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input [127:0]SLOT_2_AXI_rdata;
  input [0:0]SLOT_2_AXI_rid;
  input SLOT_2_AXI_rlast;
  input SLOT_2_AXI_rready;
  input SLOT_2_AXI_rvalid;
  input [127:0]SLOT_2_AXI_wdata;
  input SLOT_2_AXI_wlast;
  input SLOT_2_AXI_wready;
  input SLOT_2_AXI_wvalid;
  input clk;
  input resetn;

  wire [31:0]SLOT_0_AXI_araddr;
  wire [0:0]SLOT_0_AXI_arid;
  wire [7:0]SLOT_0_AXI_arlen;
  wire SLOT_0_AXI_arready;
  wire [2:0]SLOT_0_AXI_arsize;
  wire SLOT_0_AXI_arvalid;
  wire [31:0]SLOT_0_AXI_awaddr;
  wire [0:0]SLOT_0_AXI_awid;
  wire [7:0]SLOT_0_AXI_awlen;
  wire SLOT_0_AXI_awready;
  wire [2:0]SLOT_0_AXI_awsize;
  wire SLOT_0_AXI_awvalid;
  wire [0:0]SLOT_0_AXI_bid;
  wire SLOT_0_AXI_bready;
  wire [1:0]SLOT_0_AXI_bresp;
  wire SLOT_0_AXI_bvalid;
  wire [127:0]SLOT_0_AXI_rdata;
  wire [0:0]SLOT_0_AXI_rid;
  wire SLOT_0_AXI_rlast;
  wire SLOT_0_AXI_rready;
  wire SLOT_0_AXI_rvalid;
  wire [127:0]SLOT_0_AXI_wdata;
  wire SLOT_0_AXI_wlast;
  wire SLOT_0_AXI_wready;
  wire SLOT_0_AXI_wvalid;
  wire [31:0]SLOT_1_AXI_araddr;
  wire [0:0]SLOT_1_AXI_arid;
  wire [7:0]SLOT_1_AXI_arlen;
  wire SLOT_1_AXI_arready;
  wire [2:0]SLOT_1_AXI_arsize;
  wire SLOT_1_AXI_arvalid;
  wire [31:0]SLOT_1_AXI_awaddr;
  wire [0:0]SLOT_1_AXI_awid;
  wire [7:0]SLOT_1_AXI_awlen;
  wire SLOT_1_AXI_awready;
  wire [2:0]SLOT_1_AXI_awsize;
  wire SLOT_1_AXI_awvalid;
  wire [0:0]SLOT_1_AXI_bid;
  wire SLOT_1_AXI_bready;
  wire [1:0]SLOT_1_AXI_bresp;
  wire SLOT_1_AXI_bvalid;
  wire [127:0]SLOT_1_AXI_rdata;
  wire [0:0]SLOT_1_AXI_rid;
  wire SLOT_1_AXI_rlast;
  wire SLOT_1_AXI_rready;
  wire SLOT_1_AXI_rvalid;
  wire [127:0]SLOT_1_AXI_wdata;
  wire SLOT_1_AXI_wlast;
  wire SLOT_1_AXI_wready;
  wire SLOT_1_AXI_wvalid;
  wire [31:0]SLOT_2_AXI_araddr;
  wire [0:0]SLOT_2_AXI_arid;
  wire [7:0]SLOT_2_AXI_arlen;
  wire SLOT_2_AXI_arready;
  wire [2:0]SLOT_2_AXI_arsize;
  wire SLOT_2_AXI_arvalid;
  wire [31:0]SLOT_2_AXI_awaddr;
  wire [0:0]SLOT_2_AXI_awid;
  wire [7:0]SLOT_2_AXI_awlen;
  wire SLOT_2_AXI_awready;
  wire [2:0]SLOT_2_AXI_awsize;
  wire SLOT_2_AXI_awvalid;
  wire [0:0]SLOT_2_AXI_bid;
  wire SLOT_2_AXI_bready;
  wire [1:0]SLOT_2_AXI_bresp;
  wire SLOT_2_AXI_bvalid;
  wire [127:0]SLOT_2_AXI_rdata;
  wire [0:0]SLOT_2_AXI_rid;
  wire SLOT_2_AXI_rlast;
  wire SLOT_2_AXI_rready;
  wire SLOT_2_AXI_rvalid;
  wire [127:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wlast;
  wire SLOT_2_AXI_wready;
  wire SLOT_2_AXI_wvalid;
  wire clk;
  wire resetn;

  bd_990f bd_990f_i
       (.SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
        .SLOT_0_AXI_arid(SLOT_0_AXI_arid),
        .SLOT_0_AXI_arlen(SLOT_0_AXI_arlen),
        .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
        .SLOT_0_AXI_arsize(SLOT_0_AXI_arsize),
        .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
        .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
        .SLOT_0_AXI_awid(SLOT_0_AXI_awid),
        .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
        .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
        .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
        .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
        .SLOT_0_AXI_bid(SLOT_0_AXI_bid),
        .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
        .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
        .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
        .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
        .SLOT_0_AXI_rid(SLOT_0_AXI_rid),
        .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
        .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
        .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
        .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
        .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
        .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
        .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
        .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
        .SLOT_1_AXI_arid(SLOT_1_AXI_arid),
        .SLOT_1_AXI_arlen(SLOT_1_AXI_arlen),
        .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
        .SLOT_1_AXI_arsize(SLOT_1_AXI_arsize),
        .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
        .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
        .SLOT_1_AXI_awid(SLOT_1_AXI_awid),
        .SLOT_1_AXI_awlen(SLOT_1_AXI_awlen),
        .SLOT_1_AXI_awready(SLOT_1_AXI_awready),
        .SLOT_1_AXI_awsize(SLOT_1_AXI_awsize),
        .SLOT_1_AXI_awvalid(SLOT_1_AXI_awvalid),
        .SLOT_1_AXI_bid(SLOT_1_AXI_bid),
        .SLOT_1_AXI_bready(SLOT_1_AXI_bready),
        .SLOT_1_AXI_bresp(SLOT_1_AXI_bresp),
        .SLOT_1_AXI_bvalid(SLOT_1_AXI_bvalid),
        .SLOT_1_AXI_rdata(SLOT_1_AXI_rdata),
        .SLOT_1_AXI_rid(SLOT_1_AXI_rid),
        .SLOT_1_AXI_rlast(SLOT_1_AXI_rlast),
        .SLOT_1_AXI_rready(SLOT_1_AXI_rready),
        .SLOT_1_AXI_rvalid(SLOT_1_AXI_rvalid),
        .SLOT_1_AXI_wdata(SLOT_1_AXI_wdata),
        .SLOT_1_AXI_wlast(SLOT_1_AXI_wlast),
        .SLOT_1_AXI_wready(SLOT_1_AXI_wready),
        .SLOT_1_AXI_wvalid(SLOT_1_AXI_wvalid),
        .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
        .SLOT_2_AXI_arid(SLOT_2_AXI_arid),
        .SLOT_2_AXI_arlen(SLOT_2_AXI_arlen),
        .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
        .SLOT_2_AXI_arsize(SLOT_2_AXI_arsize),
        .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
        .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
        .SLOT_2_AXI_awid(SLOT_2_AXI_awid),
        .SLOT_2_AXI_awlen(SLOT_2_AXI_awlen),
        .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
        .SLOT_2_AXI_awsize(SLOT_2_AXI_awsize),
        .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
        .SLOT_2_AXI_bid(SLOT_2_AXI_bid),
        .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
        .SLOT_2_AXI_bresp(SLOT_2_AXI_bresp),
        .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
        .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
        .SLOT_2_AXI_rid(SLOT_2_AXI_rid),
        .SLOT_2_AXI_rlast(SLOT_2_AXI_rlast),
        .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
        .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
        .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
        .SLOT_2_AXI_wlast(SLOT_2_AXI_wlast),
        .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
        .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
