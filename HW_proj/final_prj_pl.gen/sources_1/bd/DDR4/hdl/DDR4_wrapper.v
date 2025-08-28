//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Wed Aug 27 16:02:31 2025
//Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
//Command     : generate_target DDR4_wrapper.bd
//Design      : DDR4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DDR4_wrapper
   (ADC_AXI_arready,
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
    ADC_AXI_rlast,
    ADC_AXI_rvalid,
    ADC_AXI_wdata,
    ADC_AXI_wlast,
    ADC_AXI_wready,
    ADC_AXI_wstrb,
    ADC_AXI_wvalid,
    DDR_AXI_lite_araddr,
    DDR_AXI_lite_arprot,
    DDR_AXI_lite_arready,
    DDR_AXI_lite_arvalid,
    DDR_AXI_lite_awaddr,
    DDR_AXI_lite_awprot,
    DDR_AXI_lite_awready,
    DDR_AXI_lite_awvalid,
    DDR_AXI_lite_bready,
    DDR_AXI_lite_bresp,
    DDR_AXI_lite_bvalid,
    DDR_AXI_lite_rdata,
    DDR_AXI_lite_rready,
    DDR_AXI_lite_rresp,
    DDR_AXI_lite_rvalid,
    DDR_AXI_lite_wdata,
    DDR_AXI_lite_wready,
    DDR_AXI_lite_wstrb,
    DDR_AXI_lite_wvalid,
    IMU_AXI0_arready,
    IMU_AXI0_awaddr,
    IMU_AXI0_awburst,
    IMU_AXI0_awcache,
    IMU_AXI0_awid,
    IMU_AXI0_awlen,
    IMU_AXI0_awlock,
    IMU_AXI0_awprot,
    IMU_AXI0_awqos,
    IMU_AXI0_awready,
    IMU_AXI0_awsize,
    IMU_AXI0_awvalid,
    IMU_AXI0_bid,
    IMU_AXI0_bready,
    IMU_AXI0_bresp,
    IMU_AXI0_bvalid,
    IMU_AXI0_rdata,
    IMU_AXI0_rlast,
    IMU_AXI0_rvalid,
    IMU_AXI0_wdata,
    IMU_AXI0_wlast,
    IMU_AXI0_wready,
    IMU_AXI0_wstrb,
    IMU_AXI0_wvalid,
    IMU_AXI1_arready,
    IMU_AXI1_awaddr,
    IMU_AXI1_awburst,
    IMU_AXI1_awcache,
    IMU_AXI1_awid,
    IMU_AXI1_awlen,
    IMU_AXI1_awlock,
    IMU_AXI1_awprot,
    IMU_AXI1_awqos,
    IMU_AXI1_awready,
    IMU_AXI1_awsize,
    IMU_AXI1_awvalid,
    IMU_AXI1_bid,
    IMU_AXI1_bready,
    IMU_AXI1_bresp,
    IMU_AXI1_bvalid,
    IMU_AXI1_rdata,
    IMU_AXI1_rlast,
    IMU_AXI1_rvalid,
    IMU_AXI1_wdata,
    IMU_AXI1_wlast,
    IMU_AXI1_wready,
    IMU_AXI1_wstrb,
    IMU_AXI1_wvalid,
    PL_ACLK,
    PL_ARESETN,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    c0_sys_clk_i,
    ddr4_rst);
  output ADC_AXI_arready;
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
  output [127:0]ADC_AXI_rdata;
  output ADC_AXI_rlast;
  output ADC_AXI_rvalid;
  input [127:0]ADC_AXI_wdata;
  input ADC_AXI_wlast;
  output ADC_AXI_wready;
  input [15:0]ADC_AXI_wstrb;
  input ADC_AXI_wvalid;
  input [31:0]DDR_AXI_lite_araddr;
  input [2:0]DDR_AXI_lite_arprot;
  output DDR_AXI_lite_arready;
  input DDR_AXI_lite_arvalid;
  input [31:0]DDR_AXI_lite_awaddr;
  input [2:0]DDR_AXI_lite_awprot;
  output DDR_AXI_lite_awready;
  input DDR_AXI_lite_awvalid;
  input DDR_AXI_lite_bready;
  output [1:0]DDR_AXI_lite_bresp;
  output DDR_AXI_lite_bvalid;
  output [31:0]DDR_AXI_lite_rdata;
  input DDR_AXI_lite_rready;
  output [1:0]DDR_AXI_lite_rresp;
  output DDR_AXI_lite_rvalid;
  input [31:0]DDR_AXI_lite_wdata;
  output DDR_AXI_lite_wready;
  input [3:0]DDR_AXI_lite_wstrb;
  input DDR_AXI_lite_wvalid;
  output IMU_AXI0_arready;
  input [31:0]IMU_AXI0_awaddr;
  input [1:0]IMU_AXI0_awburst;
  input [3:0]IMU_AXI0_awcache;
  input [0:0]IMU_AXI0_awid;
  input [7:0]IMU_AXI0_awlen;
  input [0:0]IMU_AXI0_awlock;
  input [2:0]IMU_AXI0_awprot;
  input [3:0]IMU_AXI0_awqos;
  output IMU_AXI0_awready;
  input [2:0]IMU_AXI0_awsize;
  input IMU_AXI0_awvalid;
  output [0:0]IMU_AXI0_bid;
  input IMU_AXI0_bready;
  output [1:0]IMU_AXI0_bresp;
  output IMU_AXI0_bvalid;
  output [127:0]IMU_AXI0_rdata;
  output IMU_AXI0_rlast;
  output IMU_AXI0_rvalid;
  input [127:0]IMU_AXI0_wdata;
  input IMU_AXI0_wlast;
  output IMU_AXI0_wready;
  input [15:0]IMU_AXI0_wstrb;
  input IMU_AXI0_wvalid;
  output IMU_AXI1_arready;
  input [31:0]IMU_AXI1_awaddr;
  input [1:0]IMU_AXI1_awburst;
  input [3:0]IMU_AXI1_awcache;
  input [0:0]IMU_AXI1_awid;
  input [7:0]IMU_AXI1_awlen;
  input [0:0]IMU_AXI1_awlock;
  input [2:0]IMU_AXI1_awprot;
  input [3:0]IMU_AXI1_awqos;
  output IMU_AXI1_awready;
  input [2:0]IMU_AXI1_awsize;
  input IMU_AXI1_awvalid;
  output [0:0]IMU_AXI1_bid;
  input IMU_AXI1_bready;
  output [1:0]IMU_AXI1_bresp;
  output IMU_AXI1_bvalid;
  output [127:0]IMU_AXI1_rdata;
  output IMU_AXI1_rlast;
  output IMU_AXI1_rvalid;
  input [127:0]IMU_AXI1_wdata;
  input IMU_AXI1_wlast;
  output IMU_AXI1_wready;
  input [15:0]IMU_AXI1_wstrb;
  input IMU_AXI1_wvalid;
  input PL_ACLK;
  input PL_ARESETN;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [0:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [3:0]c0_ddr4_dm_n;
  inout [31:0]c0_ddr4_dq;
  inout [3:0]c0_ddr4_dqs_c;
  inout [3:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_reset_n;
  input c0_sys_clk_i;
  input ddr4_rst;

  wire ADC_AXI_arready;
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
  wire [127:0]ADC_AXI_rdata;
  wire ADC_AXI_rlast;
  wire ADC_AXI_rvalid;
  wire [127:0]ADC_AXI_wdata;
  wire ADC_AXI_wlast;
  wire ADC_AXI_wready;
  wire [15:0]ADC_AXI_wstrb;
  wire ADC_AXI_wvalid;
  wire [31:0]DDR_AXI_lite_araddr;
  wire [2:0]DDR_AXI_lite_arprot;
  wire DDR_AXI_lite_arready;
  wire DDR_AXI_lite_arvalid;
  wire [31:0]DDR_AXI_lite_awaddr;
  wire [2:0]DDR_AXI_lite_awprot;
  wire DDR_AXI_lite_awready;
  wire DDR_AXI_lite_awvalid;
  wire DDR_AXI_lite_bready;
  wire [1:0]DDR_AXI_lite_bresp;
  wire DDR_AXI_lite_bvalid;
  wire [31:0]DDR_AXI_lite_rdata;
  wire DDR_AXI_lite_rready;
  wire [1:0]DDR_AXI_lite_rresp;
  wire DDR_AXI_lite_rvalid;
  wire [31:0]DDR_AXI_lite_wdata;
  wire DDR_AXI_lite_wready;
  wire [3:0]DDR_AXI_lite_wstrb;
  wire DDR_AXI_lite_wvalid;
  wire IMU_AXI0_arready;
  wire [31:0]IMU_AXI0_awaddr;
  wire [1:0]IMU_AXI0_awburst;
  wire [3:0]IMU_AXI0_awcache;
  wire [0:0]IMU_AXI0_awid;
  wire [7:0]IMU_AXI0_awlen;
  wire [0:0]IMU_AXI0_awlock;
  wire [2:0]IMU_AXI0_awprot;
  wire [3:0]IMU_AXI0_awqos;
  wire IMU_AXI0_awready;
  wire [2:0]IMU_AXI0_awsize;
  wire IMU_AXI0_awvalid;
  wire [0:0]IMU_AXI0_bid;
  wire IMU_AXI0_bready;
  wire [1:0]IMU_AXI0_bresp;
  wire IMU_AXI0_bvalid;
  wire [127:0]IMU_AXI0_rdata;
  wire IMU_AXI0_rlast;
  wire IMU_AXI0_rvalid;
  wire [127:0]IMU_AXI0_wdata;
  wire IMU_AXI0_wlast;
  wire IMU_AXI0_wready;
  wire [15:0]IMU_AXI0_wstrb;
  wire IMU_AXI0_wvalid;
  wire IMU_AXI1_arready;
  wire [31:0]IMU_AXI1_awaddr;
  wire [1:0]IMU_AXI1_awburst;
  wire [3:0]IMU_AXI1_awcache;
  wire [0:0]IMU_AXI1_awid;
  wire [7:0]IMU_AXI1_awlen;
  wire [0:0]IMU_AXI1_awlock;
  wire [2:0]IMU_AXI1_awprot;
  wire [3:0]IMU_AXI1_awqos;
  wire IMU_AXI1_awready;
  wire [2:0]IMU_AXI1_awsize;
  wire IMU_AXI1_awvalid;
  wire [0:0]IMU_AXI1_bid;
  wire IMU_AXI1_bready;
  wire [1:0]IMU_AXI1_bresp;
  wire IMU_AXI1_bvalid;
  wire [127:0]IMU_AXI1_rdata;
  wire IMU_AXI1_rlast;
  wire IMU_AXI1_rvalid;
  wire [127:0]IMU_AXI1_wdata;
  wire IMU_AXI1_wlast;
  wire IMU_AXI1_wready;
  wire [15:0]IMU_AXI1_wstrb;
  wire IMU_AXI1_wvalid;
  wire PL_ACLK;
  wire PL_ARESETN;
  wire c0_ddr4_act_n;
  wire [16:0]c0_ddr4_adr;
  wire [1:0]c0_ddr4_ba;
  wire [0:0]c0_ddr4_bg;
  wire [0:0]c0_ddr4_ck_c;
  wire [0:0]c0_ddr4_ck_t;
  wire [0:0]c0_ddr4_cke;
  wire [0:0]c0_ddr4_cs_n;
  wire [3:0]c0_ddr4_dm_n;
  wire [31:0]c0_ddr4_dq;
  wire [3:0]c0_ddr4_dqs_c;
  wire [3:0]c0_ddr4_dqs_t;
  wire [0:0]c0_ddr4_odt;
  wire c0_ddr4_reset_n;
  wire c0_sys_clk_i;
  wire ddr4_rst;

  DDR4 DDR4_i
       (.ADC_AXI_arready(ADC_AXI_arready),
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
        .ADC_AXI_rlast(ADC_AXI_rlast),
        .ADC_AXI_rvalid(ADC_AXI_rvalid),
        .ADC_AXI_wdata(ADC_AXI_wdata),
        .ADC_AXI_wlast(ADC_AXI_wlast),
        .ADC_AXI_wready(ADC_AXI_wready),
        .ADC_AXI_wstrb(ADC_AXI_wstrb),
        .ADC_AXI_wvalid(ADC_AXI_wvalid),
        .DDR_AXI_lite_araddr(DDR_AXI_lite_araddr),
        .DDR_AXI_lite_arprot(DDR_AXI_lite_arprot),
        .DDR_AXI_lite_arready(DDR_AXI_lite_arready),
        .DDR_AXI_lite_arvalid(DDR_AXI_lite_arvalid),
        .DDR_AXI_lite_awaddr(DDR_AXI_lite_awaddr),
        .DDR_AXI_lite_awprot(DDR_AXI_lite_awprot),
        .DDR_AXI_lite_awready(DDR_AXI_lite_awready),
        .DDR_AXI_lite_awvalid(DDR_AXI_lite_awvalid),
        .DDR_AXI_lite_bready(DDR_AXI_lite_bready),
        .DDR_AXI_lite_bresp(DDR_AXI_lite_bresp),
        .DDR_AXI_lite_bvalid(DDR_AXI_lite_bvalid),
        .DDR_AXI_lite_rdata(DDR_AXI_lite_rdata),
        .DDR_AXI_lite_rready(DDR_AXI_lite_rready),
        .DDR_AXI_lite_rresp(DDR_AXI_lite_rresp),
        .DDR_AXI_lite_rvalid(DDR_AXI_lite_rvalid),
        .DDR_AXI_lite_wdata(DDR_AXI_lite_wdata),
        .DDR_AXI_lite_wready(DDR_AXI_lite_wready),
        .DDR_AXI_lite_wstrb(DDR_AXI_lite_wstrb),
        .DDR_AXI_lite_wvalid(DDR_AXI_lite_wvalid),
        .IMU_AXI0_arready(IMU_AXI0_arready),
        .IMU_AXI0_awaddr(IMU_AXI0_awaddr),
        .IMU_AXI0_awburst(IMU_AXI0_awburst),
        .IMU_AXI0_awcache(IMU_AXI0_awcache),
        .IMU_AXI0_awid(IMU_AXI0_awid),
        .IMU_AXI0_awlen(IMU_AXI0_awlen),
        .IMU_AXI0_awlock(IMU_AXI0_awlock),
        .IMU_AXI0_awprot(IMU_AXI0_awprot),
        .IMU_AXI0_awqos(IMU_AXI0_awqos),
        .IMU_AXI0_awready(IMU_AXI0_awready),
        .IMU_AXI0_awsize(IMU_AXI0_awsize),
        .IMU_AXI0_awvalid(IMU_AXI0_awvalid),
        .IMU_AXI0_bid(IMU_AXI0_bid),
        .IMU_AXI0_bready(IMU_AXI0_bready),
        .IMU_AXI0_bresp(IMU_AXI0_bresp),
        .IMU_AXI0_bvalid(IMU_AXI0_bvalid),
        .IMU_AXI0_rdata(IMU_AXI0_rdata),
        .IMU_AXI0_rlast(IMU_AXI0_rlast),
        .IMU_AXI0_rvalid(IMU_AXI0_rvalid),
        .IMU_AXI0_wdata(IMU_AXI0_wdata),
        .IMU_AXI0_wlast(IMU_AXI0_wlast),
        .IMU_AXI0_wready(IMU_AXI0_wready),
        .IMU_AXI0_wstrb(IMU_AXI0_wstrb),
        .IMU_AXI0_wvalid(IMU_AXI0_wvalid),
        .IMU_AXI1_arready(IMU_AXI1_arready),
        .IMU_AXI1_awaddr(IMU_AXI1_awaddr),
        .IMU_AXI1_awburst(IMU_AXI1_awburst),
        .IMU_AXI1_awcache(IMU_AXI1_awcache),
        .IMU_AXI1_awid(IMU_AXI1_awid),
        .IMU_AXI1_awlen(IMU_AXI1_awlen),
        .IMU_AXI1_awlock(IMU_AXI1_awlock),
        .IMU_AXI1_awprot(IMU_AXI1_awprot),
        .IMU_AXI1_awqos(IMU_AXI1_awqos),
        .IMU_AXI1_awready(IMU_AXI1_awready),
        .IMU_AXI1_awsize(IMU_AXI1_awsize),
        .IMU_AXI1_awvalid(IMU_AXI1_awvalid),
        .IMU_AXI1_bid(IMU_AXI1_bid),
        .IMU_AXI1_bready(IMU_AXI1_bready),
        .IMU_AXI1_bresp(IMU_AXI1_bresp),
        .IMU_AXI1_bvalid(IMU_AXI1_bvalid),
        .IMU_AXI1_rdata(IMU_AXI1_rdata),
        .IMU_AXI1_rlast(IMU_AXI1_rlast),
        .IMU_AXI1_rvalid(IMU_AXI1_rvalid),
        .IMU_AXI1_wdata(IMU_AXI1_wdata),
        .IMU_AXI1_wlast(IMU_AXI1_wlast),
        .IMU_AXI1_wready(IMU_AXI1_wready),
        .IMU_AXI1_wstrb(IMU_AXI1_wstrb),
        .IMU_AXI1_wvalid(IMU_AXI1_wvalid),
        .PL_ACLK(PL_ACLK),
        .PL_ARESETN(PL_ARESETN),
        .c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dm_n(c0_ddr4_dm_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .c0_sys_clk_i(c0_sys_clk_i),
        .ddr4_rst(ddr4_rst));
endmodule
