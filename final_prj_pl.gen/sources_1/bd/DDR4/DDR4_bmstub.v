// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module DDR4 (
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
  IMU_AXI0_awid,
  IMU_AXI0_awaddr,
  IMU_AXI0_awlen,
  IMU_AXI0_awsize,
  IMU_AXI0_awburst,
  IMU_AXI0_awlock,
  IMU_AXI0_awcache,
  IMU_AXI0_awprot,
  IMU_AXI0_awqos,
  IMU_AXI0_awvalid,
  IMU_AXI0_awready,
  IMU_AXI0_wdata,
  IMU_AXI0_wstrb,
  IMU_AXI0_wlast,
  IMU_AXI0_wvalid,
  IMU_AXI0_wready,
  IMU_AXI0_bid,
  IMU_AXI0_bresp,
  IMU_AXI0_bvalid,
  IMU_AXI0_bready,
  IMU_AXI1_awid,
  IMU_AXI1_awaddr,
  IMU_AXI1_awlen,
  IMU_AXI1_awsize,
  IMU_AXI1_awburst,
  IMU_AXI1_awlock,
  IMU_AXI1_awcache,
  IMU_AXI1_awprot,
  IMU_AXI1_awqos,
  IMU_AXI1_awvalid,
  IMU_AXI1_awready,
  IMU_AXI1_wdata,
  IMU_AXI1_wstrb,
  IMU_AXI1_wlast,
  IMU_AXI1_wvalid,
  IMU_AXI1_wready,
  IMU_AXI1_bid,
  IMU_AXI1_bresp,
  IMU_AXI1_bvalid,
  IMU_AXI1_bready,
  PL_ACLK,
  PL_ARESETN,
  ddr4_rst,
  c0_sys_clk_i
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ACT_N" *)
  (* X_INTERFACE_MODE = "master c0_ddr4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_ddr4, CAN_DEBUG false, TIMEPERIOD_PS 833, MEMORY_TYPE Components, MEMORY_PART MT40A512M16HA-083E, DATA_WIDTH 32, CS_ENABLED true, DATA_MASK_ENABLED DM_NO_DBI, SLOT Single, CUSTOM_PARTS no_file_loaded, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME RD_PRI_REG, CAS_LATENCY 18, CAS_WRITE_LATENCY 12" *)
  output c0_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ADR" *)
  output [16:0]c0_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 BA" *)
  output [1:0]c0_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 BG" *)
  output [0:0]c0_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CK_C" *)
  output [0:0]c0_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CK_T" *)
  output [0:0]c0_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CKE" *)
  output [0:0]c0_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CS_N" *)
  output [0:0]c0_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DM_N" *)
  inout [3:0]c0_ddr4_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQ" *)
  inout [31:0]c0_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQS_C" *)
  inout [3:0]c0_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQS_T" *)
  inout [3:0]c0_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ODT" *)
  output [0:0]c0_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 RESET_N" *)
  output c0_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWID" *)
  (* X_INTERFACE_MODE = "slave ADC_AXI" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN DDR4_PL_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
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
  input [127:0]ADC_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WSTRB" *)
  input [15:0]ADC_AXI_wstrb;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWID" *)
  (* X_INTERFACE_MODE = "slave IMU_AXI0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IMU_AXI0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN DDR4_PL_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [0:0]IMU_AXI0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWADDR" *)
  input [31:0]IMU_AXI0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWLEN" *)
  input [7:0]IMU_AXI0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWSIZE" *)
  input [2:0]IMU_AXI0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWBURST" *)
  input [1:0]IMU_AXI0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWLOCK" *)
  input [0:0]IMU_AXI0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWCACHE" *)
  input [3:0]IMU_AXI0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWPROT" *)
  input [2:0]IMU_AXI0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWQOS" *)
  input [3:0]IMU_AXI0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWVALID" *)
  input IMU_AXI0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWREADY" *)
  output IMU_AXI0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WDATA" *)
  input [127:0]IMU_AXI0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WSTRB" *)
  input [15:0]IMU_AXI0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WLAST" *)
  input IMU_AXI0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WVALID" *)
  input IMU_AXI0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WREADY" *)
  output IMU_AXI0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 BID" *)
  output [0:0]IMU_AXI0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 BRESP" *)
  output [1:0]IMU_AXI0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 BVALID" *)
  output IMU_AXI0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 BREADY" *)
  input IMU_AXI0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWID" *)
  (* X_INTERFACE_MODE = "slave IMU_AXI1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IMU_AXI1, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN DDR4_PL_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [0:0]IMU_AXI1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWADDR" *)
  input [31:0]IMU_AXI1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWLEN" *)
  input [7:0]IMU_AXI1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWSIZE" *)
  input [2:0]IMU_AXI1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWBURST" *)
  input [1:0]IMU_AXI1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWLOCK" *)
  input [0:0]IMU_AXI1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWCACHE" *)
  input [3:0]IMU_AXI1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWPROT" *)
  input [2:0]IMU_AXI1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWQOS" *)
  input [3:0]IMU_AXI1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWVALID" *)
  input IMU_AXI1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWREADY" *)
  output IMU_AXI1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WDATA" *)
  input [127:0]IMU_AXI1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WSTRB" *)
  input [15:0]IMU_AXI1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WLAST" *)
  input IMU_AXI1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WVALID" *)
  input IMU_AXI1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WREADY" *)
  output IMU_AXI1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 BID" *)
  output [0:0]IMU_AXI1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 BRESP" *)
  output [1:0]IMU_AXI1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 BVALID" *)
  output IMU_AXI1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 BREADY" *)
  input IMU_AXI1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_ACLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.PL_ACLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN DDR4_PL_ACLK, ASSOCIATED_BUSIF ADC_AXI:IMU_AXI0:IMU_AXI1, ASSOCIATED_RESET PL_ARESETN_0:PL_ARESETN, INSERT_VIP 0" *)
  input PL_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PL_ARESETN RST" *)
  (* X_INTERFACE_MODE = "slave RST.PL_ARESETN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PL_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input PL_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR4_RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.DDR4_RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR4_RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input ddr4_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.C0_SYS_CLK_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.C0_SYS_CLK_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.C0_SYS_CLK_I, FREQ_HZ 200080000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN DDR4_c0_sys_clk_i, INSERT_VIP 0" *)
  input c0_sys_clk_i;

  // stub module has no contents

endmodule
