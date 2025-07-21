//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Sat Jul 19 15:01:01 2025
//Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
//Command     : generate_target DDR4_wrapper.bd
//Design      : DDR4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DDR4_wrapper
   (ADC_AXI_araddr,
    ADC_AXI_arburst,
    ADC_AXI_arcache,
    ADC_AXI_arid,
    ADC_AXI_arlen,
    ADC_AXI_arlock,
    ADC_AXI_arprot,
    ADC_AXI_arqos,
    ADC_AXI_arready,
    ADC_AXI_arsize,
    ADC_AXI_arvalid,
    ADC_AXI_awaddr,
    ADC_AXI_awburst,
    ADC_AXI_awcache,
    ADC_AXI_awid,
    ADC_AXI_awlen,
    ADC_AXI_awlock,
    ADC_AXI_awprot,
    ADC_AXI_awqos,
    ADC_AXI_awready,
    ADC_AXI_awsize,
    ADC_AXI_awvalid,
    ADC_AXI_bid,
    ADC_AXI_bready,
    ADC_AXI_bresp,
    ADC_AXI_bvalid,
    ADC_AXI_rdata,
    ADC_AXI_rid,
    ADC_AXI_rlast,
    ADC_AXI_rready,
    ADC_AXI_rresp,
    ADC_AXI_rvalid,
    ADC_AXI_wdata,
    ADC_AXI_wlast,
    ADC_AXI_wready,
    ADC_AXI_wstrb,
    ADC_AXI_wvalid,
    DDR4_act_n,
    DDR4_adr,
    DDR4_ba,
    DDR4_bg,
    DDR4_ck_c,
    DDR4_ck_t,
    DDR4_cke,
    DDR4_cs_n,
    DDR4_dm_n,
    DDR4_dq,
    DDR4_dqs_c,
    DDR4_dqs_t,
    DDR4_odt,
    DDR4_reset_n,
    IMU_AXI_araddr,
    IMU_AXI_arburst,
    IMU_AXI_arcache,
    IMU_AXI_arid,
    IMU_AXI_arlen,
    IMU_AXI_arlock,
    IMU_AXI_arprot,
    IMU_AXI_arqos,
    IMU_AXI_arready,
    IMU_AXI_arsize,
    IMU_AXI_arvalid,
    IMU_AXI_awaddr,
    IMU_AXI_awburst,
    IMU_AXI_awcache,
    IMU_AXI_awid,
    IMU_AXI_awlen,
    IMU_AXI_awlock,
    IMU_AXI_awprot,
    IMU_AXI_awqos,
    IMU_AXI_awready,
    IMU_AXI_awsize,
    IMU_AXI_awvalid,
    IMU_AXI_bid,
    IMU_AXI_bready,
    IMU_AXI_bresp,
    IMU_AXI_bvalid,
    IMU_AXI_rdata,
    IMU_AXI_rid,
    IMU_AXI_rlast,
    IMU_AXI_rready,
    IMU_AXI_rresp,
    IMU_AXI_rvalid,
    IMU_AXI_wdata,
    IMU_AXI_wlast,
    IMU_AXI_wready,
    IMU_AXI_wstrb,
    IMU_AXI_wvalid,
    PL_ACLK,
    PL_ARESETN,
    ddr4_rst,
    ddr4_sysclk_200M);
  input [31:0]ADC_AXI_araddr;
  input [1:0]ADC_AXI_arburst;
  input [3:0]ADC_AXI_arcache;
  input [0:0]ADC_AXI_arid;
  input [7:0]ADC_AXI_arlen;
  input [0:0]ADC_AXI_arlock;
  input [2:0]ADC_AXI_arprot;
  input [3:0]ADC_AXI_arqos;
  output ADC_AXI_arready;
  input [2:0]ADC_AXI_arsize;
  input ADC_AXI_arvalid;
  input [31:0]ADC_AXI_awaddr;
  input [1:0]ADC_AXI_awburst;
  input [3:0]ADC_AXI_awcache;
  input [0:0]ADC_AXI_awid;
  input [7:0]ADC_AXI_awlen;
  input [0:0]ADC_AXI_awlock;
  input [2:0]ADC_AXI_awprot;
  input [3:0]ADC_AXI_awqos;
  output ADC_AXI_awready;
  input [2:0]ADC_AXI_awsize;
  input ADC_AXI_awvalid;
  output [0:0]ADC_AXI_bid;
  input ADC_AXI_bready;
  output [1:0]ADC_AXI_bresp;
  output ADC_AXI_bvalid;
  output [31:0]ADC_AXI_rdata;
  output [0:0]ADC_AXI_rid;
  output ADC_AXI_rlast;
  input ADC_AXI_rready;
  output [1:0]ADC_AXI_rresp;
  output ADC_AXI_rvalid;
  input [31:0]ADC_AXI_wdata;
  input ADC_AXI_wlast;
  output ADC_AXI_wready;
  input [3:0]ADC_AXI_wstrb;
  input ADC_AXI_wvalid;
  output DDR4_act_n;
  output [16:0]DDR4_adr;
  output [1:0]DDR4_ba;
  output [0:0]DDR4_bg;
  output [0:0]DDR4_ck_c;
  output [0:0]DDR4_ck_t;
  output [0:0]DDR4_cke;
  output [0:0]DDR4_cs_n;
  inout [3:0]DDR4_dm_n;
  inout [31:0]DDR4_dq;
  inout [3:0]DDR4_dqs_c;
  inout [3:0]DDR4_dqs_t;
  output [0:0]DDR4_odt;
  output DDR4_reset_n;
  input [31:0]IMU_AXI_araddr;
  input [1:0]IMU_AXI_arburst;
  input [3:0]IMU_AXI_arcache;
  input [0:0]IMU_AXI_arid;
  input [7:0]IMU_AXI_arlen;
  input [0:0]IMU_AXI_arlock;
  input [2:0]IMU_AXI_arprot;
  input [3:0]IMU_AXI_arqos;
  output IMU_AXI_arready;
  input [2:0]IMU_AXI_arsize;
  input IMU_AXI_arvalid;
  input [31:0]IMU_AXI_awaddr;
  input [1:0]IMU_AXI_awburst;
  input [3:0]IMU_AXI_awcache;
  input [0:0]IMU_AXI_awid;
  input [7:0]IMU_AXI_awlen;
  input [0:0]IMU_AXI_awlock;
  input [2:0]IMU_AXI_awprot;
  input [3:0]IMU_AXI_awqos;
  output IMU_AXI_awready;
  input [2:0]IMU_AXI_awsize;
  input IMU_AXI_awvalid;
  output [0:0]IMU_AXI_bid;
  input IMU_AXI_bready;
  output [1:0]IMU_AXI_bresp;
  output IMU_AXI_bvalid;
  output [31:0]IMU_AXI_rdata;
  output [0:0]IMU_AXI_rid;
  output IMU_AXI_rlast;
  input IMU_AXI_rready;
  output [1:0]IMU_AXI_rresp;
  output IMU_AXI_rvalid;
  input [31:0]IMU_AXI_wdata;
  input IMU_AXI_wlast;
  output IMU_AXI_wready;
  input [3:0]IMU_AXI_wstrb;
  input IMU_AXI_wvalid;
  input PL_ACLK;
  input PL_ARESETN;
  input ddr4_rst;
  input ddr4_sysclk_200M;

  wire [31:0]ADC_AXI_araddr;
  wire [1:0]ADC_AXI_arburst;
  wire [3:0]ADC_AXI_arcache;
  wire [0:0]ADC_AXI_arid;
  wire [7:0]ADC_AXI_arlen;
  wire [0:0]ADC_AXI_arlock;
  wire [2:0]ADC_AXI_arprot;
  wire [3:0]ADC_AXI_arqos;
  wire ADC_AXI_arready;
  wire [2:0]ADC_AXI_arsize;
  wire ADC_AXI_arvalid;
  wire [31:0]ADC_AXI_awaddr;
  wire [1:0]ADC_AXI_awburst;
  wire [3:0]ADC_AXI_awcache;
  wire [0:0]ADC_AXI_awid;
  wire [7:0]ADC_AXI_awlen;
  wire [0:0]ADC_AXI_awlock;
  wire [2:0]ADC_AXI_awprot;
  wire [3:0]ADC_AXI_awqos;
  wire ADC_AXI_awready;
  wire [2:0]ADC_AXI_awsize;
  wire ADC_AXI_awvalid;
  wire [0:0]ADC_AXI_bid;
  wire ADC_AXI_bready;
  wire [1:0]ADC_AXI_bresp;
  wire ADC_AXI_bvalid;
  wire [31:0]ADC_AXI_rdata;
  wire [0:0]ADC_AXI_rid;
  wire ADC_AXI_rlast;
  wire ADC_AXI_rready;
  wire [1:0]ADC_AXI_rresp;
  wire ADC_AXI_rvalid;
  wire [31:0]ADC_AXI_wdata;
  wire ADC_AXI_wlast;
  wire ADC_AXI_wready;
  wire [3:0]ADC_AXI_wstrb;
  wire ADC_AXI_wvalid;
  wire DDR4_act_n;
  wire [16:0]DDR4_adr;
  wire [1:0]DDR4_ba;
  wire [0:0]DDR4_bg;
  wire [0:0]DDR4_ck_c;
  wire [0:0]DDR4_ck_t;
  wire [0:0]DDR4_cke;
  wire [0:0]DDR4_cs_n;
  wire [3:0]DDR4_dm_n;
  wire [31:0]DDR4_dq;
  wire [3:0]DDR4_dqs_c;
  wire [3:0]DDR4_dqs_t;
  wire [0:0]DDR4_odt;
  wire DDR4_reset_n;
  wire [31:0]IMU_AXI_araddr;
  wire [1:0]IMU_AXI_arburst;
  wire [3:0]IMU_AXI_arcache;
  wire [0:0]IMU_AXI_arid;
  wire [7:0]IMU_AXI_arlen;
  wire [0:0]IMU_AXI_arlock;
  wire [2:0]IMU_AXI_arprot;
  wire [3:0]IMU_AXI_arqos;
  wire IMU_AXI_arready;
  wire [2:0]IMU_AXI_arsize;
  wire IMU_AXI_arvalid;
  wire [31:0]IMU_AXI_awaddr;
  wire [1:0]IMU_AXI_awburst;
  wire [3:0]IMU_AXI_awcache;
  wire [0:0]IMU_AXI_awid;
  wire [7:0]IMU_AXI_awlen;
  wire [0:0]IMU_AXI_awlock;
  wire [2:0]IMU_AXI_awprot;
  wire [3:0]IMU_AXI_awqos;
  wire IMU_AXI_awready;
  wire [2:0]IMU_AXI_awsize;
  wire IMU_AXI_awvalid;
  wire [0:0]IMU_AXI_bid;
  wire IMU_AXI_bready;
  wire [1:0]IMU_AXI_bresp;
  wire IMU_AXI_bvalid;
  wire [31:0]IMU_AXI_rdata;
  wire [0:0]IMU_AXI_rid;
  wire IMU_AXI_rlast;
  wire IMU_AXI_rready;
  wire [1:0]IMU_AXI_rresp;
  wire IMU_AXI_rvalid;
  wire [31:0]IMU_AXI_wdata;
  wire IMU_AXI_wlast;
  wire IMU_AXI_wready;
  wire [3:0]IMU_AXI_wstrb;
  wire IMU_AXI_wvalid;
  wire PL_ACLK;
  wire PL_ARESETN;
  wire ddr4_rst;
  wire ddr4_sysclk_200M;

  DDR4 DDR4_i
       (.ADC_AXI_araddr(ADC_AXI_araddr),
        .ADC_AXI_arburst(ADC_AXI_arburst),
        .ADC_AXI_arcache(ADC_AXI_arcache),
        .ADC_AXI_arid(ADC_AXI_arid),
        .ADC_AXI_arlen(ADC_AXI_arlen),
        .ADC_AXI_arlock(ADC_AXI_arlock),
        .ADC_AXI_arprot(ADC_AXI_arprot),
        .ADC_AXI_arqos(ADC_AXI_arqos),
        .ADC_AXI_arready(ADC_AXI_arready),
        .ADC_AXI_arsize(ADC_AXI_arsize),
        .ADC_AXI_arvalid(ADC_AXI_arvalid),
        .ADC_AXI_awaddr(ADC_AXI_awaddr),
        .ADC_AXI_awburst(ADC_AXI_awburst),
        .ADC_AXI_awcache(ADC_AXI_awcache),
        .ADC_AXI_awid(ADC_AXI_awid),
        .ADC_AXI_awlen(ADC_AXI_awlen),
        .ADC_AXI_awlock(ADC_AXI_awlock),
        .ADC_AXI_awprot(ADC_AXI_awprot),
        .ADC_AXI_awqos(ADC_AXI_awqos),
        .ADC_AXI_awready(ADC_AXI_awready),
        .ADC_AXI_awsize(ADC_AXI_awsize),
        .ADC_AXI_awvalid(ADC_AXI_awvalid),
        .ADC_AXI_bid(ADC_AXI_bid),
        .ADC_AXI_bready(ADC_AXI_bready),
        .ADC_AXI_bresp(ADC_AXI_bresp),
        .ADC_AXI_bvalid(ADC_AXI_bvalid),
        .ADC_AXI_rdata(ADC_AXI_rdata),
        .ADC_AXI_rid(ADC_AXI_rid),
        .ADC_AXI_rlast(ADC_AXI_rlast),
        .ADC_AXI_rready(ADC_AXI_rready),
        .ADC_AXI_rresp(ADC_AXI_rresp),
        .ADC_AXI_rvalid(ADC_AXI_rvalid),
        .ADC_AXI_wdata(ADC_AXI_wdata),
        .ADC_AXI_wlast(ADC_AXI_wlast),
        .ADC_AXI_wready(ADC_AXI_wready),
        .ADC_AXI_wstrb(ADC_AXI_wstrb),
        .ADC_AXI_wvalid(ADC_AXI_wvalid),
        .DDR4_act_n(DDR4_act_n),
        .DDR4_adr(DDR4_adr),
        .DDR4_ba(DDR4_ba),
        .DDR4_bg(DDR4_bg),
        .DDR4_ck_c(DDR4_ck_c),
        .DDR4_ck_t(DDR4_ck_t),
        .DDR4_cke(DDR4_cke),
        .DDR4_cs_n(DDR4_cs_n),
        .DDR4_dm_n(DDR4_dm_n),
        .DDR4_dq(DDR4_dq),
        .DDR4_dqs_c(DDR4_dqs_c),
        .DDR4_dqs_t(DDR4_dqs_t),
        .DDR4_odt(DDR4_odt),
        .DDR4_reset_n(DDR4_reset_n),
        .IMU_AXI_araddr(IMU_AXI_araddr),
        .IMU_AXI_arburst(IMU_AXI_arburst),
        .IMU_AXI_arcache(IMU_AXI_arcache),
        .IMU_AXI_arid(IMU_AXI_arid),
        .IMU_AXI_arlen(IMU_AXI_arlen),
        .IMU_AXI_arlock(IMU_AXI_arlock),
        .IMU_AXI_arprot(IMU_AXI_arprot),
        .IMU_AXI_arqos(IMU_AXI_arqos),
        .IMU_AXI_arready(IMU_AXI_arready),
        .IMU_AXI_arsize(IMU_AXI_arsize),
        .IMU_AXI_arvalid(IMU_AXI_arvalid),
        .IMU_AXI_awaddr(IMU_AXI_awaddr),
        .IMU_AXI_awburst(IMU_AXI_awburst),
        .IMU_AXI_awcache(IMU_AXI_awcache),
        .IMU_AXI_awid(IMU_AXI_awid),
        .IMU_AXI_awlen(IMU_AXI_awlen),
        .IMU_AXI_awlock(IMU_AXI_awlock),
        .IMU_AXI_awprot(IMU_AXI_awprot),
        .IMU_AXI_awqos(IMU_AXI_awqos),
        .IMU_AXI_awready(IMU_AXI_awready),
        .IMU_AXI_awsize(IMU_AXI_awsize),
        .IMU_AXI_awvalid(IMU_AXI_awvalid),
        .IMU_AXI_bid(IMU_AXI_bid),
        .IMU_AXI_bready(IMU_AXI_bready),
        .IMU_AXI_bresp(IMU_AXI_bresp),
        .IMU_AXI_bvalid(IMU_AXI_bvalid),
        .IMU_AXI_rdata(IMU_AXI_rdata),
        .IMU_AXI_rid(IMU_AXI_rid),
        .IMU_AXI_rlast(IMU_AXI_rlast),
        .IMU_AXI_rready(IMU_AXI_rready),
        .IMU_AXI_rresp(IMU_AXI_rresp),
        .IMU_AXI_rvalid(IMU_AXI_rvalid),
        .IMU_AXI_wdata(IMU_AXI_wdata),
        .IMU_AXI_wlast(IMU_AXI_wlast),
        .IMU_AXI_wready(IMU_AXI_wready),
        .IMU_AXI_wstrb(IMU_AXI_wstrb),
        .IMU_AXI_wvalid(IMU_AXI_wvalid),
        .PL_ACLK(PL_ACLK),
        .PL_ARESETN(PL_ARESETN),
        .ddr4_rst(ddr4_rst),
        .ddr4_sysclk_200M(ddr4_sysclk_200M));
endmodule
