// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module DDR4 (
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
  ADC_AXI_awid,
  ADC_AXI_awaddr,
  ADC_AXI_awlen,
  ADC_AXI_awsize,
  ADC_AXI_awburst,
  ADC_AXI_awlock,
  ADC_AXI_awcache,
  ADC_AXI_awprot,
  ADC_AXI_awqos,
  ADC_AXI_awvalid,
  ADC_AXI_awready,
  ADC_AXI_wdata,
  ADC_AXI_wstrb,
  ADC_AXI_wlast,
  ADC_AXI_wvalid,
  ADC_AXI_wready,
  ADC_AXI_bid,
  ADC_AXI_bresp,
  ADC_AXI_bvalid,
  ADC_AXI_bready,
  ADC_AXI_arid,
  ADC_AXI_araddr,
  ADC_AXI_arlen,
  ADC_AXI_arsize,
  ADC_AXI_arburst,
  ADC_AXI_arlock,
  ADC_AXI_arcache,
  ADC_AXI_arprot,
  ADC_AXI_arqos,
  ADC_AXI_arvalid,
  ADC_AXI_arready,
  ADC_AXI_rid,
  ADC_AXI_rdata,
  ADC_AXI_rresp,
  ADC_AXI_rlast,
  ADC_AXI_rvalid,
  ADC_AXI_rready,
  IMU_AXI_awid,
  IMU_AXI_awaddr,
  IMU_AXI_awlen,
  IMU_AXI_awsize,
  IMU_AXI_awburst,
  IMU_AXI_awlock,
  IMU_AXI_awcache,
  IMU_AXI_awprot,
  IMU_AXI_awqos,
  IMU_AXI_awvalid,
  IMU_AXI_awready,
  IMU_AXI_wdata,
  IMU_AXI_wstrb,
  IMU_AXI_wlast,
  IMU_AXI_wvalid,
  IMU_AXI_wready,
  IMU_AXI_bid,
  IMU_AXI_bresp,
  IMU_AXI_bvalid,
  IMU_AXI_bready,
  IMU_AXI_arid,
  IMU_AXI_araddr,
  IMU_AXI_arlen,
  IMU_AXI_arsize,
  IMU_AXI_arburst,
  IMU_AXI_arlock,
  IMU_AXI_arcache,
  IMU_AXI_arprot,
  IMU_AXI_arqos,
  IMU_AXI_arvalid,
  IMU_AXI_arready,
  IMU_AXI_rid,
  IMU_AXI_rdata,
  IMU_AXI_rresp,
  IMU_AXI_rlast,
  IMU_AXI_rvalid,
  IMU_AXI_rready,
  PL_ACLK,
  PL_ARESETN,
  ddr4_sysclk_200M,
  ddr4_rst
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 ACT_N" *)
  (* X_INTERFACE_MODE = "master DDR4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4, CAN_DEBUG false, TIMEPERIOD_PS 833, MEMORY_TYPE Components, MEMORY_PART MT40A512M16HA-083E, DATA_WIDTH 32, CS_ENABLED true, DATA_MASK_ENABLED DM_NO_DBI, SLOT Single, CUSTOM_PARTS no_file_loaded, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME RD_PRI_REG, CAS_LATENCY 18, CAS_WRITE_LATENCY 12" *)
  output DDR4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 ADR" *)
  output [16:0]DDR4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 BA" *)
  output [1:0]DDR4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 BG" *)
  output [0:0]DDR4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 CK_C" *)
  output [0:0]DDR4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 CK_T" *)
  output [0:0]DDR4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 CKE" *)
  output [0:0]DDR4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 CS_N" *)
  output [0:0]DDR4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 DM_N" *)
  inout [3:0]DDR4_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 DQ" *)
  inout [31:0]DDR4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 DQS_C" *)
  inout [3:0]DDR4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 DQS_T" *)
  inout [3:0]DDR4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 ODT" *)
  output [0:0]DDR4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4 RESET_N" *)
  output DDR4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWID" *)
  (* X_INTERFACE_MODE = "slave ADC_AXI" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN DDR4_PL_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [0:0]ADC_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWADDR" *)
  input [31:0]ADC_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWLEN" *)
  input [7:0]ADC_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWSIZE" *)
  input [2:0]ADC_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWBURST" *)
  input [1:0]ADC_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWLOCK" *)
  input [0:0]ADC_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWCACHE" *)
  input [3:0]ADC_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWPROT" *)
  input [2:0]ADC_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWQOS" *)
  input [3:0]ADC_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWVALID" *)
  input ADC_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWREADY" *)
  output ADC_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WDATA" *)
  input [31:0]ADC_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WSTRB" *)
  input [3:0]ADC_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WLAST" *)
  input ADC_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WVALID" *)
  input ADC_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WREADY" *)
  output ADC_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI BID" *)
  output [0:0]ADC_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI BRESP" *)
  output [1:0]ADC_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI BVALID" *)
  output ADC_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI BREADY" *)
  input ADC_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARID" *)
  input [0:0]ADC_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARADDR" *)
  input [31:0]ADC_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARLEN" *)
  input [7:0]ADC_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARSIZE" *)
  input [2:0]ADC_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARBURST" *)
  input [1:0]ADC_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARLOCK" *)
  input [0:0]ADC_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARCACHE" *)
  input [3:0]ADC_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARPROT" *)
  input [2:0]ADC_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARQOS" *)
  input [3:0]ADC_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARVALID" *)
  input ADC_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI ARREADY" *)
  output ADC_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI RID" *)
  output [0:0]ADC_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI RDATA" *)
  output [31:0]ADC_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI RRESP" *)
  output [1:0]ADC_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI RLAST" *)
  output ADC_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI RVALID" *)
  output ADC_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI RREADY" *)
  input ADC_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWID" *)
  (* X_INTERFACE_MODE = "slave IMU_AXI" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IMU_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN DDR4_PL_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [0:0]IMU_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWADDR" *)
  input [31:0]IMU_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWLEN" *)
  input [7:0]IMU_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWSIZE" *)
  input [2:0]IMU_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWBURST" *)
  input [1:0]IMU_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWLOCK" *)
  input [0:0]IMU_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWCACHE" *)
  input [3:0]IMU_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWPROT" *)
  input [2:0]IMU_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWQOS" *)
  input [3:0]IMU_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWVALID" *)
  input IMU_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI AWREADY" *)
  output IMU_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI WDATA" *)
  input [31:0]IMU_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI WSTRB" *)
  input [3:0]IMU_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI WLAST" *)
  input IMU_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI WVALID" *)
  input IMU_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI WREADY" *)
  output IMU_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI BID" *)
  output [0:0]IMU_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI BRESP" *)
  output [1:0]IMU_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI BVALID" *)
  output IMU_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI BREADY" *)
  input IMU_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARID" *)
  input [0:0]IMU_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARADDR" *)
  input [31:0]IMU_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARLEN" *)
  input [7:0]IMU_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARSIZE" *)
  input [2:0]IMU_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARBURST" *)
  input [1:0]IMU_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARLOCK" *)
  input [0:0]IMU_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARCACHE" *)
  input [3:0]IMU_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARPROT" *)
  input [2:0]IMU_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARQOS" *)
  input [3:0]IMU_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARVALID" *)
  input IMU_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI ARREADY" *)
  output IMU_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI RID" *)
  output [0:0]IMU_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI RDATA" *)
  output [31:0]IMU_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI RRESP" *)
  output [1:0]IMU_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI RLAST" *)
  output IMU_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI RVALID" *)
  output IMU_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI RREADY" *)
  input IMU_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_ACLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.PL_ACLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_ACLK, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN DDR4_PL_ACLK, ASSOCIATED_BUSIF IMU_AXI:ADC_AXI, ASSOCIATED_RESET PL_ARESETN_0:PL_ARESETN, INSERT_VIP 0" *)
  input PL_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PL_ARESETN RST" *)
  (* X_INTERFACE_MODE = "slave RST.PL_ARESETN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PL_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input PL_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR4_SYSCLK_200M CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.DDR4_SYSCLK_200M" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR4_SYSCLK_200M, FREQ_HZ 200080000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN DDR4_ddr4_sysclk_200M, ASSOCIATED_RESET ddr4_rst, INSERT_VIP 0" *)
  input ddr4_sysclk_200M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR4_RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.DDR4_RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR4_RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input ddr4_rst;

  // stub module has no contents

endmodule
