//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Tue Jul 29 14:49:08 2025
//Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
//Command     : generate_target DDR4.bd
//Design      : DDR4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "DDR4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DDR4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=25,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=6,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "DDR4.hwdef" *) 
module DDR4
   (ADC_AXI_awaddr,
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
    ADC_AXI_wdata,
    ADC_AXI_wlast,
    ADC_AXI_wready,
    ADC_AXI_wstrb,
    ADC_AXI_wvalid,
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
    IMU_AXI0_wdata,
    IMU_AXI0_wlast,
    IMU_AXI0_wready,
    IMU_AXI0_wstrb,
    IMU_AXI0_wvalid,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN DDR4_PL_ACLK, DATA_WIDTH 128, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 0, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]ADC_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWBURST" *) input [1:0]ADC_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWCACHE" *) input [3:0]ADC_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWID" *) input [0:0]ADC_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWLEN" *) input [7:0]ADC_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWLOCK" *) input [0:0]ADC_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWPROT" *) input [2:0]ADC_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWQOS" *) input [3:0]ADC_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWREADY" *) output ADC_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWSIZE" *) input [2:0]ADC_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI AWVALID" *) input ADC_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI BID" *) output [0:0]ADC_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI BREADY" *) input ADC_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI BRESP" *) output [1:0]ADC_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI BVALID" *) output ADC_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WDATA" *) input [127:0]ADC_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WLAST" *) input ADC_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WREADY" *) output ADC_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WSTRB" *) input [15:0]ADC_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ADC_AXI WVALID" *) input ADC_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IMU_AXI0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN DDR4_PL_ACLK, DATA_WIDTH 128, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 0, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]IMU_AXI0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWBURST" *) input [1:0]IMU_AXI0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWCACHE" *) input [3:0]IMU_AXI0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWID" *) input [0:0]IMU_AXI0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWLEN" *) input [7:0]IMU_AXI0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWLOCK" *) input [0:0]IMU_AXI0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWPROT" *) input [2:0]IMU_AXI0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWQOS" *) input [3:0]IMU_AXI0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWREADY" *) output IMU_AXI0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWSIZE" *) input [2:0]IMU_AXI0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 AWVALID" *) input IMU_AXI0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 BID" *) output [0:0]IMU_AXI0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 BREADY" *) input IMU_AXI0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 BRESP" *) output [1:0]IMU_AXI0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 BVALID" *) output IMU_AXI0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WDATA" *) input [127:0]IMU_AXI0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WLAST" *) input IMU_AXI0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WREADY" *) output IMU_AXI0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WSTRB" *) input [15:0]IMU_AXI0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI0 WVALID" *) input IMU_AXI0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IMU_AXI1, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN DDR4_PL_ACLK, DATA_WIDTH 128, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 0, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]IMU_AXI1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWBURST" *) input [1:0]IMU_AXI1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWCACHE" *) input [3:0]IMU_AXI1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWID" *) input [0:0]IMU_AXI1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWLEN" *) input [7:0]IMU_AXI1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWLOCK" *) input [0:0]IMU_AXI1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWPROT" *) input [2:0]IMU_AXI1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWQOS" *) input [3:0]IMU_AXI1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWREADY" *) output IMU_AXI1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWSIZE" *) input [2:0]IMU_AXI1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 AWVALID" *) input IMU_AXI1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 BID" *) output [0:0]IMU_AXI1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 BREADY" *) input IMU_AXI1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 BRESP" *) output [1:0]IMU_AXI1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 BVALID" *) output IMU_AXI1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WDATA" *) input [127:0]IMU_AXI1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WLAST" *) input IMU_AXI1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WREADY" *) output IMU_AXI1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WSTRB" *) input [15:0]IMU_AXI1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 IMU_AXI1 WVALID" *) input IMU_AXI1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_ACLK, ASSOCIATED_BUSIF ADC_AXI:IMU_AXI0:IMU_AXI1, ASSOCIATED_RESET PL_ARESETN_0:PL_ARESETN, CLK_DOMAIN DDR4_PL_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input PL_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PL_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PL_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input PL_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ACT_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 18, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED DM_NO_DBI, DATA_WIDTH 32, MEMORY_PART MT40A512M16HA-083E, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output c0_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ADR" *) output [16:0]c0_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 BA" *) output [1:0]c0_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 BG" *) output [0:0]c0_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CK_C" *) output [0:0]c0_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CK_T" *) output [0:0]c0_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CKE" *) output [0:0]c0_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CS_N" *) output [0:0]c0_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DM_N" *) inout [3:0]c0_ddr4_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQ" *) inout [31:0]c0_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQS_C" *) inout [3:0]c0_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQS_T" *) inout [3:0]c0_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ODT" *) output [0:0]c0_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 RESET_N" *) output c0_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.C0_SYS_CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.C0_SYS_CLK_I, CLK_DOMAIN DDR4_c0_sys_clk_i, FREQ_HZ 200080000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input c0_sys_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR4_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR4_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ddr4_rst;

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
  wire [127:0]ADC_AXI_wdata;
  wire ADC_AXI_wlast;
  wire ADC_AXI_wready;
  wire [15:0]ADC_AXI_wstrb;
  wire ADC_AXI_wvalid;
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
  wire [127:0]IMU_AXI0_wdata;
  wire IMU_AXI0_wlast;
  wire IMU_AXI0_wready;
  wire [15:0]IMU_AXI0_wstrb;
  wire IMU_AXI0_wvalid;
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
  wire [127:0]IMU_AXI1_wdata;
  wire IMU_AXI1_wlast;
  wire IMU_AXI1_wready;
  wire [15:0]IMU_AXI1_wstrb;
  wire IMU_AXI1_wvalid;
  wire M00_ACLK_1;
  wire PL_ACLK;
  wire PL_ARESETN;
  wire [39:0]S03_AXI_1_ARADDR;
  wire [1:0]S03_AXI_1_ARBURST;
  wire [3:0]S03_AXI_1_ARCACHE;
  wire [15:0]S03_AXI_1_ARID;
  wire [7:0]S03_AXI_1_ARLEN;
  wire S03_AXI_1_ARLOCK;
  wire [2:0]S03_AXI_1_ARPROT;
  wire [3:0]S03_AXI_1_ARQOS;
  wire S03_AXI_1_ARREADY;
  wire [2:0]S03_AXI_1_ARSIZE;
  wire [15:0]S03_AXI_1_ARUSER;
  wire S03_AXI_1_ARVALID;
  wire [39:0]S03_AXI_1_AWADDR;
  wire [1:0]S03_AXI_1_AWBURST;
  wire [3:0]S03_AXI_1_AWCACHE;
  wire [15:0]S03_AXI_1_AWID;
  wire [7:0]S03_AXI_1_AWLEN;
  wire S03_AXI_1_AWLOCK;
  wire [2:0]S03_AXI_1_AWPROT;
  wire [3:0]S03_AXI_1_AWQOS;
  wire S03_AXI_1_AWREADY;
  wire [2:0]S03_AXI_1_AWSIZE;
  wire [15:0]S03_AXI_1_AWUSER;
  wire S03_AXI_1_AWVALID;
  wire [15:0]S03_AXI_1_BID;
  wire S03_AXI_1_BREADY;
  wire [1:0]S03_AXI_1_BRESP;
  wire S03_AXI_1_BVALID;
  wire [127:0]S03_AXI_1_RDATA;
  wire [15:0]S03_AXI_1_RID;
  wire S03_AXI_1_RLAST;
  wire S03_AXI_1_RREADY;
  wire [1:0]S03_AXI_1_RRESP;
  wire S03_AXI_1_RVALID;
  wire [127:0]S03_AXI_1_WDATA;
  wire S03_AXI_1_WLAST;
  wire S03_AXI_1_WREADY;
  wire [15:0]S03_AXI_1_WSTRB;
  wire S03_AXI_1_WVALID;
  wire [39:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [17:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [39:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [17:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [17:0]axi_interconnect_0_M00_AXI_BID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [127:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [17:0]axi_interconnect_0_M00_AXI_RID;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [127:0]axi_interconnect_0_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [15:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
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
  wire ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_0_c0_init_calib_complete;
  wire ddr4_rst;
  wire [0:0]ddr4_sync_reset_peripheral_aresetn;
  wire [39:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARADDR;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARBURST;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARCACHE;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARID;
  wire [7:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARLEN;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARLOCK;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARPROT;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARQOS;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_ARREADY;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARSIZE;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_ARUSER;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_ARVALID;
  wire [39:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWADDR;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWBURST;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWCACHE;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWID;
  wire [7:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWLEN;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWLOCK;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWPROT;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWQOS;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_AWREADY;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWSIZE;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_AWUSER;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_AWVALID;
  wire [5:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_BID;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_BREADY;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_BRESP;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_BVALID;
  wire [127:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_RDATA;
  wire [5:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_RID;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_RLAST;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_RREADY;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_RRESP;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_RVALID;
  wire [127:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_WDATA;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_WLAST;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_WREADY;
  wire [15:0]dpuczdx8g_0_DPU0_M_AXI_DATA0_WSTRB;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA0_WVALID;
  wire [39:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARADDR;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARBURST;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARCACHE;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARID;
  wire [7:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARLEN;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARLOCK;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARPROT;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARQOS;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_ARREADY;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARSIZE;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_ARUSER;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_ARVALID;
  wire [39:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWADDR;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWBURST;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWCACHE;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWID;
  wire [7:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWLEN;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWLOCK;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWPROT;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWQOS;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_AWREADY;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWSIZE;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_AWUSER;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_AWVALID;
  wire [5:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_BID;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_BREADY;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_BRESP;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_BVALID;
  wire [127:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_RDATA;
  wire [5:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_RID;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_RLAST;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_RREADY;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_RRESP;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_RVALID;
  wire [127:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_WDATA;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_WLAST;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_WREADY;
  wire [15:0]dpuczdx8g_0_DPU0_M_AXI_DATA1_WSTRB;
  wire dpuczdx8g_0_DPU0_M_AXI_DATA1_WVALID;
  wire [39:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARADDR;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARBURST;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARCACHE;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARID;
  wire [7:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARLEN;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARLOCK;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARPROT;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARQOS;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_ARREADY;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARSIZE;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_ARUSER;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_ARVALID;
  wire [39:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWADDR;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWBURST;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWCACHE;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWID;
  wire [7:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWLEN;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWLOCK;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWPROT;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWQOS;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_AWREADY;
  wire [2:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWSIZE;
  wire [0:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_AWUSER;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_AWVALID;
  wire [5:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_BID;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_BREADY;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_BRESP;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_BVALID;
  wire [31:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_RDATA;
  wire [5:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_RID;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_RLAST;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_RREADY;
  wire [1:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_RRESP;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_RVALID;
  wire [31:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_WDATA;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_WLAST;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_WREADY;
  wire [3:0]dpuczdx8g_0_DPU0_M_AXI_INSTR_WSTRB;
  wire dpuczdx8g_0_DPU0_M_AXI_INSTR_WVALID;
  wire dpuczdx8g_0_dpu0_interrupt;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_0_Res1;
  wire [0:0]util_vector_logic_1_Res;
  wire [39:0]zynq_ultra_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_pl_clk0;
  wire zynq_ultra_pl_resetn0;

  DDR4_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(M00_ACLK_1),
        .ARESETN(util_vector_logic_0_Res),
        .M00_ACLK(M00_ACLK_1),
        .M00_ARESETN(ddr4_sync_reset_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(PL_ACLK),
        .S00_ARESETN(PL_ARESETN),
        .S00_AXI_awaddr(ADC_AXI_awaddr),
        .S00_AXI_awburst(ADC_AXI_awburst),
        .S00_AXI_awcache(ADC_AXI_awcache),
        .S00_AXI_awid(ADC_AXI_awid),
        .S00_AXI_awlen(ADC_AXI_awlen),
        .S00_AXI_awlock(ADC_AXI_awlock),
        .S00_AXI_awprot(ADC_AXI_awprot),
        .S00_AXI_awqos(ADC_AXI_awqos),
        .S00_AXI_awready(ADC_AXI_awready),
        .S00_AXI_awsize(ADC_AXI_awsize),
        .S00_AXI_awvalid(ADC_AXI_awvalid),
        .S00_AXI_bid(ADC_AXI_bid),
        .S00_AXI_bready(ADC_AXI_bready),
        .S00_AXI_bresp(ADC_AXI_bresp),
        .S00_AXI_bvalid(ADC_AXI_bvalid),
        .S00_AXI_wdata(ADC_AXI_wdata),
        .S00_AXI_wlast(ADC_AXI_wlast),
        .S00_AXI_wready(ADC_AXI_wready),
        .S00_AXI_wstrb(ADC_AXI_wstrb),
        .S00_AXI_wvalid(ADC_AXI_wvalid),
        .S01_ACLK(PL_ACLK),
        .S01_ARESETN(PL_ARESETN),
        .S01_AXI_awaddr(IMU_AXI0_awaddr),
        .S01_AXI_awburst(IMU_AXI0_awburst),
        .S01_AXI_awcache(IMU_AXI0_awcache),
        .S01_AXI_awid(IMU_AXI0_awid),
        .S01_AXI_awlen(IMU_AXI0_awlen),
        .S01_AXI_awlock(IMU_AXI0_awlock),
        .S01_AXI_awprot(IMU_AXI0_awprot),
        .S01_AXI_awqos(IMU_AXI0_awqos),
        .S01_AXI_awready(IMU_AXI0_awready),
        .S01_AXI_awsize(IMU_AXI0_awsize),
        .S01_AXI_awvalid(IMU_AXI0_awvalid),
        .S01_AXI_bid(IMU_AXI0_bid),
        .S01_AXI_bready(IMU_AXI0_bready),
        .S01_AXI_bresp(IMU_AXI0_bresp),
        .S01_AXI_bvalid(IMU_AXI0_bvalid),
        .S01_AXI_wdata(IMU_AXI0_wdata),
        .S01_AXI_wlast(IMU_AXI0_wlast),
        .S01_AXI_wready(IMU_AXI0_wready),
        .S01_AXI_wstrb(IMU_AXI0_wstrb),
        .S01_AXI_wvalid(IMU_AXI0_wvalid),
        .S02_ACLK(PL_ACLK),
        .S02_ARESETN(PL_ARESETN),
        .S02_AXI_awaddr(IMU_AXI1_awaddr),
        .S02_AXI_awburst(IMU_AXI1_awburst),
        .S02_AXI_awcache(IMU_AXI1_awcache),
        .S02_AXI_awid(IMU_AXI1_awid),
        .S02_AXI_awlen(IMU_AXI1_awlen),
        .S02_AXI_awlock(IMU_AXI1_awlock),
        .S02_AXI_awprot(IMU_AXI1_awprot),
        .S02_AXI_awqos(IMU_AXI1_awqos),
        .S02_AXI_awready(IMU_AXI1_awready),
        .S02_AXI_awsize(IMU_AXI1_awsize),
        .S02_AXI_awvalid(IMU_AXI1_awvalid),
        .S02_AXI_bid(IMU_AXI1_bid),
        .S02_AXI_bready(IMU_AXI1_bready),
        .S02_AXI_bresp(IMU_AXI1_bresp),
        .S02_AXI_bvalid(IMU_AXI1_bvalid),
        .S02_AXI_wdata(IMU_AXI1_wdata),
        .S02_AXI_wlast(IMU_AXI1_wlast),
        .S02_AXI_wready(IMU_AXI1_wready),
        .S02_AXI_wstrb(IMU_AXI1_wstrb),
        .S02_AXI_wvalid(IMU_AXI1_wvalid),
        .S03_ACLK(zynq_ultra_pl_clk0),
        .S03_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S03_AXI_araddr(S03_AXI_1_ARADDR),
        .S03_AXI_arburst(S03_AXI_1_ARBURST),
        .S03_AXI_arcache(S03_AXI_1_ARCACHE),
        .S03_AXI_arid(S03_AXI_1_ARID),
        .S03_AXI_arlen(S03_AXI_1_ARLEN),
        .S03_AXI_arlock(S03_AXI_1_ARLOCK),
        .S03_AXI_arprot(S03_AXI_1_ARPROT),
        .S03_AXI_arqos(S03_AXI_1_ARQOS),
        .S03_AXI_arready(S03_AXI_1_ARREADY),
        .S03_AXI_arsize(S03_AXI_1_ARSIZE),
        .S03_AXI_aruser(S03_AXI_1_ARUSER),
        .S03_AXI_arvalid(S03_AXI_1_ARVALID),
        .S03_AXI_awaddr(S03_AXI_1_AWADDR),
        .S03_AXI_awburst(S03_AXI_1_AWBURST),
        .S03_AXI_awcache(S03_AXI_1_AWCACHE),
        .S03_AXI_awid(S03_AXI_1_AWID),
        .S03_AXI_awlen(S03_AXI_1_AWLEN),
        .S03_AXI_awlock(S03_AXI_1_AWLOCK),
        .S03_AXI_awprot(S03_AXI_1_AWPROT),
        .S03_AXI_awqos(S03_AXI_1_AWQOS),
        .S03_AXI_awready(S03_AXI_1_AWREADY),
        .S03_AXI_awsize(S03_AXI_1_AWSIZE),
        .S03_AXI_awuser(S03_AXI_1_AWUSER),
        .S03_AXI_awvalid(S03_AXI_1_AWVALID),
        .S03_AXI_bid(S03_AXI_1_BID),
        .S03_AXI_bready(S03_AXI_1_BREADY),
        .S03_AXI_bresp(S03_AXI_1_BRESP),
        .S03_AXI_bvalid(S03_AXI_1_BVALID),
        .S03_AXI_rdata(S03_AXI_1_RDATA),
        .S03_AXI_rid(S03_AXI_1_RID),
        .S03_AXI_rlast(S03_AXI_1_RLAST),
        .S03_AXI_rready(S03_AXI_1_RREADY),
        .S03_AXI_rresp(S03_AXI_1_RRESP),
        .S03_AXI_rvalid(S03_AXI_1_RVALID),
        .S03_AXI_wdata(S03_AXI_1_WDATA),
        .S03_AXI_wlast(S03_AXI_1_WLAST),
        .S03_AXI_wready(S03_AXI_1_WREADY),
        .S03_AXI_wstrb(S03_AXI_1_WSTRB),
        .S03_AXI_wvalid(S03_AXI_1_WVALID));
  DDR4_ddr4_0_0 ddr4_0
       (.c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_aresetn(util_vector_logic_0_Res),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dm_dbi_n(c0_ddr4_dm_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .c0_ddr4_s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[30:0]),
        .c0_ddr4_s_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(axi_interconnect_0_M00_AXI_ARID),
        .c0_ddr4_s_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[30:0]),
        .c0_ddr4_s_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(axi_interconnect_0_M00_AXI_AWID),
        .c0_ddr4_s_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(axi_interconnect_0_M00_AXI_BID),
        .c0_ddr4_s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .c0_ddr4_s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rid(axi_interconnect_0_M00_AXI_RID),
        .c0_ddr4_s_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(M00_ACLK_1),
        .c0_ddr4_ui_clk_sync_rst(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_0_c0_init_calib_complete),
        .c0_sys_clk_i(c0_sys_clk_i),
        .sys_rst(ddr4_rst));
  DDR4_proc_sys_reset_0_0 ddr4_sync_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(util_vector_logic_0_Res1),
        .interconnect_aresetn(util_vector_logic_0_Res),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(ddr4_sync_reset_peripheral_aresetn),
        .slowest_sync_clk(M00_ACLK_1));
  DDR4_dpuczdx8g_0_0 dpuczdx8g_0
       (.dpu0_interrupt(dpuczdx8g_0_dpu0_interrupt),
        .dpu0_m_axi_data0_araddr(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARADDR),
        .dpu0_m_axi_data0_arburst(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARBURST),
        .dpu0_m_axi_data0_arcache(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARCACHE),
        .dpu0_m_axi_data0_arid(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARID),
        .dpu0_m_axi_data0_arlen(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARLEN),
        .dpu0_m_axi_data0_arlock(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARLOCK),
        .dpu0_m_axi_data0_arprot(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARPROT),
        .dpu0_m_axi_data0_arqos(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARQOS),
        .dpu0_m_axi_data0_arready(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARREADY),
        .dpu0_m_axi_data0_arsize(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARSIZE),
        .dpu0_m_axi_data0_aruser(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARUSER),
        .dpu0_m_axi_data0_arvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARVALID),
        .dpu0_m_axi_data0_awaddr(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWADDR),
        .dpu0_m_axi_data0_awburst(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWBURST),
        .dpu0_m_axi_data0_awcache(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWCACHE),
        .dpu0_m_axi_data0_awid(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWID),
        .dpu0_m_axi_data0_awlen(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWLEN),
        .dpu0_m_axi_data0_awlock(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWLOCK),
        .dpu0_m_axi_data0_awprot(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWPROT),
        .dpu0_m_axi_data0_awqos(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWQOS),
        .dpu0_m_axi_data0_awready(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWREADY),
        .dpu0_m_axi_data0_awsize(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWSIZE),
        .dpu0_m_axi_data0_awuser(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWUSER),
        .dpu0_m_axi_data0_awvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWVALID),
        .dpu0_m_axi_data0_bid(dpuczdx8g_0_DPU0_M_AXI_DATA0_BID),
        .dpu0_m_axi_data0_bready(dpuczdx8g_0_DPU0_M_AXI_DATA0_BREADY),
        .dpu0_m_axi_data0_bresp(dpuczdx8g_0_DPU0_M_AXI_DATA0_BRESP),
        .dpu0_m_axi_data0_bvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_BVALID),
        .dpu0_m_axi_data0_rdata(dpuczdx8g_0_DPU0_M_AXI_DATA0_RDATA),
        .dpu0_m_axi_data0_rid(dpuczdx8g_0_DPU0_M_AXI_DATA0_RID),
        .dpu0_m_axi_data0_rlast(dpuczdx8g_0_DPU0_M_AXI_DATA0_RLAST),
        .dpu0_m_axi_data0_rready(dpuczdx8g_0_DPU0_M_AXI_DATA0_RREADY),
        .dpu0_m_axi_data0_rresp(dpuczdx8g_0_DPU0_M_AXI_DATA0_RRESP),
        .dpu0_m_axi_data0_rvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_RVALID),
        .dpu0_m_axi_data0_wdata(dpuczdx8g_0_DPU0_M_AXI_DATA0_WDATA),
        .dpu0_m_axi_data0_wlast(dpuczdx8g_0_DPU0_M_AXI_DATA0_WLAST),
        .dpu0_m_axi_data0_wready(dpuczdx8g_0_DPU0_M_AXI_DATA0_WREADY),
        .dpu0_m_axi_data0_wstrb(dpuczdx8g_0_DPU0_M_AXI_DATA0_WSTRB),
        .dpu0_m_axi_data0_wvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_WVALID),
        .dpu0_m_axi_data1_araddr(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARADDR),
        .dpu0_m_axi_data1_arburst(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARBURST),
        .dpu0_m_axi_data1_arcache(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARCACHE),
        .dpu0_m_axi_data1_arid(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARID),
        .dpu0_m_axi_data1_arlen(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARLEN),
        .dpu0_m_axi_data1_arlock(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARLOCK),
        .dpu0_m_axi_data1_arprot(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARPROT),
        .dpu0_m_axi_data1_arqos(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARQOS),
        .dpu0_m_axi_data1_arready(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARREADY),
        .dpu0_m_axi_data1_arsize(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARSIZE),
        .dpu0_m_axi_data1_aruser(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARUSER),
        .dpu0_m_axi_data1_arvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARVALID),
        .dpu0_m_axi_data1_awaddr(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWADDR),
        .dpu0_m_axi_data1_awburst(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWBURST),
        .dpu0_m_axi_data1_awcache(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWCACHE),
        .dpu0_m_axi_data1_awid(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWID),
        .dpu0_m_axi_data1_awlen(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWLEN),
        .dpu0_m_axi_data1_awlock(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWLOCK),
        .dpu0_m_axi_data1_awprot(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWPROT),
        .dpu0_m_axi_data1_awqos(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWQOS),
        .dpu0_m_axi_data1_awready(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWREADY),
        .dpu0_m_axi_data1_awsize(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWSIZE),
        .dpu0_m_axi_data1_awuser(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWUSER),
        .dpu0_m_axi_data1_awvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWVALID),
        .dpu0_m_axi_data1_bid(dpuczdx8g_0_DPU0_M_AXI_DATA1_BID),
        .dpu0_m_axi_data1_bready(dpuczdx8g_0_DPU0_M_AXI_DATA1_BREADY),
        .dpu0_m_axi_data1_bresp(dpuczdx8g_0_DPU0_M_AXI_DATA1_BRESP),
        .dpu0_m_axi_data1_bvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_BVALID),
        .dpu0_m_axi_data1_rdata(dpuczdx8g_0_DPU0_M_AXI_DATA1_RDATA),
        .dpu0_m_axi_data1_rid(dpuczdx8g_0_DPU0_M_AXI_DATA1_RID),
        .dpu0_m_axi_data1_rlast(dpuczdx8g_0_DPU0_M_AXI_DATA1_RLAST),
        .dpu0_m_axi_data1_rready(dpuczdx8g_0_DPU0_M_AXI_DATA1_RREADY),
        .dpu0_m_axi_data1_rresp(dpuczdx8g_0_DPU0_M_AXI_DATA1_RRESP),
        .dpu0_m_axi_data1_rvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_RVALID),
        .dpu0_m_axi_data1_wdata(dpuczdx8g_0_DPU0_M_AXI_DATA1_WDATA),
        .dpu0_m_axi_data1_wlast(dpuczdx8g_0_DPU0_M_AXI_DATA1_WLAST),
        .dpu0_m_axi_data1_wready(dpuczdx8g_0_DPU0_M_AXI_DATA1_WREADY),
        .dpu0_m_axi_data1_wstrb(dpuczdx8g_0_DPU0_M_AXI_DATA1_WSTRB),
        .dpu0_m_axi_data1_wvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_WVALID),
        .dpu0_m_axi_instr_araddr(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARADDR),
        .dpu0_m_axi_instr_arburst(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARBURST),
        .dpu0_m_axi_instr_arcache(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARCACHE),
        .dpu0_m_axi_instr_arid(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARID),
        .dpu0_m_axi_instr_arlen(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARLEN),
        .dpu0_m_axi_instr_arlock(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARLOCK),
        .dpu0_m_axi_instr_arprot(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARPROT),
        .dpu0_m_axi_instr_arqos(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARQOS),
        .dpu0_m_axi_instr_arready(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARREADY),
        .dpu0_m_axi_instr_arsize(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARSIZE),
        .dpu0_m_axi_instr_aruser(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARUSER),
        .dpu0_m_axi_instr_arvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARVALID),
        .dpu0_m_axi_instr_awaddr(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWADDR),
        .dpu0_m_axi_instr_awburst(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWBURST),
        .dpu0_m_axi_instr_awcache(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWCACHE),
        .dpu0_m_axi_instr_awid(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWID),
        .dpu0_m_axi_instr_awlen(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWLEN),
        .dpu0_m_axi_instr_awlock(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWLOCK),
        .dpu0_m_axi_instr_awprot(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWPROT),
        .dpu0_m_axi_instr_awqos(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWQOS),
        .dpu0_m_axi_instr_awready(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWREADY),
        .dpu0_m_axi_instr_awsize(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWSIZE),
        .dpu0_m_axi_instr_awuser(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWUSER),
        .dpu0_m_axi_instr_awvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWVALID),
        .dpu0_m_axi_instr_bid(dpuczdx8g_0_DPU0_M_AXI_INSTR_BID),
        .dpu0_m_axi_instr_bready(dpuczdx8g_0_DPU0_M_AXI_INSTR_BREADY),
        .dpu0_m_axi_instr_bresp(dpuczdx8g_0_DPU0_M_AXI_INSTR_BRESP),
        .dpu0_m_axi_instr_bvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_BVALID),
        .dpu0_m_axi_instr_rdata(dpuczdx8g_0_DPU0_M_AXI_INSTR_RDATA),
        .dpu0_m_axi_instr_rid(dpuczdx8g_0_DPU0_M_AXI_INSTR_RID),
        .dpu0_m_axi_instr_rlast(dpuczdx8g_0_DPU0_M_AXI_INSTR_RLAST),
        .dpu0_m_axi_instr_rready(dpuczdx8g_0_DPU0_M_AXI_INSTR_RREADY),
        .dpu0_m_axi_instr_rresp(dpuczdx8g_0_DPU0_M_AXI_INSTR_RRESP),
        .dpu0_m_axi_instr_rvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_RVALID),
        .dpu0_m_axi_instr_wdata(dpuczdx8g_0_DPU0_M_AXI_INSTR_WDATA),
        .dpu0_m_axi_instr_wlast(dpuczdx8g_0_DPU0_M_AXI_INSTR_WLAST),
        .dpu0_m_axi_instr_wready(dpuczdx8g_0_DPU0_M_AXI_INSTR_WREADY),
        .dpu0_m_axi_instr_wstrb(dpuczdx8g_0_DPU0_M_AXI_INSTR_WSTRB),
        .dpu0_m_axi_instr_wvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_WVALID),
        .dpu_2x_clk(zynq_ultra_pl_clk0),
        .dpu_2x_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_dpu_aclk(zynq_ultra_pl_clk0),
        .m_axi_dpu_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_araddr(zynq_ultra_M_AXI_HPM0_LPD_ARADDR[31:0]),
        .s_axi_arburst(zynq_ultra_M_AXI_HPM0_LPD_ARBURST),
        .s_axi_arcache(zynq_ultra_M_AXI_HPM0_LPD_ARCACHE),
        .s_axi_arid(zynq_ultra_M_AXI_HPM0_LPD_ARID),
        .s_axi_arlen(zynq_ultra_M_AXI_HPM0_LPD_ARLEN),
        .s_axi_arlock({zynq_ultra_M_AXI_HPM0_LPD_ARLOCK,zynq_ultra_M_AXI_HPM0_LPD_ARLOCK}),
        .s_axi_arprot(zynq_ultra_M_AXI_HPM0_LPD_ARPROT),
        .s_axi_arqos(zynq_ultra_M_AXI_HPM0_LPD_ARQOS),
        .s_axi_arready(zynq_ultra_M_AXI_HPM0_LPD_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(zynq_ultra_M_AXI_HPM0_LPD_ARSIZE),
        .s_axi_aruser(zynq_ultra_M_AXI_HPM0_LPD_ARUSER),
        .s_axi_arvalid(zynq_ultra_M_AXI_HPM0_LPD_ARVALID),
        .s_axi_awaddr(zynq_ultra_M_AXI_HPM0_LPD_AWADDR[31:0]),
        .s_axi_awburst(zynq_ultra_M_AXI_HPM0_LPD_AWBURST),
        .s_axi_awcache(zynq_ultra_M_AXI_HPM0_LPD_AWCACHE),
        .s_axi_awid(zynq_ultra_M_AXI_HPM0_LPD_AWID),
        .s_axi_awlen(zynq_ultra_M_AXI_HPM0_LPD_AWLEN),
        .s_axi_awlock({zynq_ultra_M_AXI_HPM0_LPD_AWLOCK,zynq_ultra_M_AXI_HPM0_LPD_AWLOCK}),
        .s_axi_awprot(zynq_ultra_M_AXI_HPM0_LPD_AWPROT),
        .s_axi_awqos(zynq_ultra_M_AXI_HPM0_LPD_AWQOS),
        .s_axi_awready(zynq_ultra_M_AXI_HPM0_LPD_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(zynq_ultra_M_AXI_HPM0_LPD_AWSIZE),
        .s_axi_awuser(zynq_ultra_M_AXI_HPM0_LPD_AWUSER),
        .s_axi_awvalid(zynq_ultra_M_AXI_HPM0_LPD_AWVALID),
        .s_axi_bid(zynq_ultra_M_AXI_HPM0_LPD_BID),
        .s_axi_bready(zynq_ultra_M_AXI_HPM0_LPD_BREADY),
        .s_axi_bresp(zynq_ultra_M_AXI_HPM0_LPD_BRESP),
        .s_axi_bvalid(zynq_ultra_M_AXI_HPM0_LPD_BVALID),
        .s_axi_rdata(zynq_ultra_M_AXI_HPM0_LPD_RDATA),
        .s_axi_rid(zynq_ultra_M_AXI_HPM0_LPD_RID),
        .s_axi_rlast(zynq_ultra_M_AXI_HPM0_LPD_RLAST),
        .s_axi_rready(zynq_ultra_M_AXI_HPM0_LPD_RREADY),
        .s_axi_rresp(zynq_ultra_M_AXI_HPM0_LPD_RRESP),
        .s_axi_rvalid(zynq_ultra_M_AXI_HPM0_LPD_RVALID),
        .s_axi_wdata(zynq_ultra_M_AXI_HPM0_LPD_WDATA),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(zynq_ultra_M_AXI_HPM0_LPD_WLAST),
        .s_axi_wready(zynq_ultra_M_AXI_HPM0_LPD_WREADY),
        .s_axi_wstrb(zynq_ultra_M_AXI_HPM0_LPD_WSTRB),
        .s_axi_wvalid(zynq_ultra_M_AXI_HPM0_LPD_WVALID));
  DDR4_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_pl_resetn0),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_pl_clk0));
  DDR4_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_vector_logic_1_Res),
        .Op2(ddr4_0_c0_init_calib_complete),
        .Res(util_vector_logic_0_Res1));
  DDR4_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .Res(util_vector_logic_1_Res));
  DDR4_zynq_ultra_ps_e_0_1 zynq_ultra
       (.maxigp0_araddr(S03_AXI_1_ARADDR),
        .maxigp0_arburst(S03_AXI_1_ARBURST),
        .maxigp0_arcache(S03_AXI_1_ARCACHE),
        .maxigp0_arid(S03_AXI_1_ARID),
        .maxigp0_arlen(S03_AXI_1_ARLEN),
        .maxigp0_arlock(S03_AXI_1_ARLOCK),
        .maxigp0_arprot(S03_AXI_1_ARPROT),
        .maxigp0_arqos(S03_AXI_1_ARQOS),
        .maxigp0_arready(S03_AXI_1_ARREADY),
        .maxigp0_arsize(S03_AXI_1_ARSIZE),
        .maxigp0_aruser(S03_AXI_1_ARUSER),
        .maxigp0_arvalid(S03_AXI_1_ARVALID),
        .maxigp0_awaddr(S03_AXI_1_AWADDR),
        .maxigp0_awburst(S03_AXI_1_AWBURST),
        .maxigp0_awcache(S03_AXI_1_AWCACHE),
        .maxigp0_awid(S03_AXI_1_AWID),
        .maxigp0_awlen(S03_AXI_1_AWLEN),
        .maxigp0_awlock(S03_AXI_1_AWLOCK),
        .maxigp0_awprot(S03_AXI_1_AWPROT),
        .maxigp0_awqos(S03_AXI_1_AWQOS),
        .maxigp0_awready(S03_AXI_1_AWREADY),
        .maxigp0_awsize(S03_AXI_1_AWSIZE),
        .maxigp0_awuser(S03_AXI_1_AWUSER),
        .maxigp0_awvalid(S03_AXI_1_AWVALID),
        .maxigp0_bid(S03_AXI_1_BID),
        .maxigp0_bready(S03_AXI_1_BREADY),
        .maxigp0_bresp(S03_AXI_1_BRESP),
        .maxigp0_bvalid(S03_AXI_1_BVALID),
        .maxigp0_rdata(S03_AXI_1_RDATA),
        .maxigp0_rid(S03_AXI_1_RID),
        .maxigp0_rlast(S03_AXI_1_RLAST),
        .maxigp0_rready(S03_AXI_1_RREADY),
        .maxigp0_rresp(S03_AXI_1_RRESP),
        .maxigp0_rvalid(S03_AXI_1_RVALID),
        .maxigp0_wdata(S03_AXI_1_WDATA),
        .maxigp0_wlast(S03_AXI_1_WLAST),
        .maxigp0_wready(S03_AXI_1_WREADY),
        .maxigp0_wstrb(S03_AXI_1_WSTRB),
        .maxigp0_wvalid(S03_AXI_1_WVALID),
        .maxigp2_araddr(zynq_ultra_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_pl_clk0),
        .maxihpm0_lpd_aclk(zynq_ultra_pl_clk0),
        .pl_clk0(zynq_ultra_pl_clk0),
        .pl_ps_irq1(dpuczdx8g_0_dpu0_interrupt),
        .pl_resetn0(zynq_ultra_pl_resetn0),
        .saxi_lpd_aclk(zynq_ultra_pl_clk0),
        .saxigp0_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_DATA0_ARADDR}),
        .saxigp0_arburst(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARBURST),
        .saxigp0_arcache(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_DATA0_ARID}),
        .saxigp0_arlen(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARLEN),
        .saxigp0_arlock(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARLOCK),
        .saxigp0_arprot(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARPROT),
        .saxigp0_arqos(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARQOS),
        .saxigp0_arready(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARREADY),
        .saxigp0_arsize(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARSIZE),
        .saxigp0_aruser(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARUSER),
        .saxigp0_arvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_ARVALID),
        .saxigp0_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_DATA0_AWADDR}),
        .saxigp0_awburst(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWBURST),
        .saxigp0_awcache(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_DATA0_AWID}),
        .saxigp0_awlen(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWLEN),
        .saxigp0_awlock(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWLOCK),
        .saxigp0_awprot(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWPROT),
        .saxigp0_awqos(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWQOS),
        .saxigp0_awready(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWREADY),
        .saxigp0_awsize(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWSIZE),
        .saxigp0_awuser(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWUSER),
        .saxigp0_awvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_AWVALID),
        .saxigp0_bid(dpuczdx8g_0_DPU0_M_AXI_DATA0_BID),
        .saxigp0_bready(dpuczdx8g_0_DPU0_M_AXI_DATA0_BREADY),
        .saxigp0_bresp(dpuczdx8g_0_DPU0_M_AXI_DATA0_BRESP),
        .saxigp0_bvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_BVALID),
        .saxigp0_rdata(dpuczdx8g_0_DPU0_M_AXI_DATA0_RDATA),
        .saxigp0_rid(dpuczdx8g_0_DPU0_M_AXI_DATA0_RID),
        .saxigp0_rlast(dpuczdx8g_0_DPU0_M_AXI_DATA0_RLAST),
        .saxigp0_rready(dpuczdx8g_0_DPU0_M_AXI_DATA0_RREADY),
        .saxigp0_rresp(dpuczdx8g_0_DPU0_M_AXI_DATA0_RRESP),
        .saxigp0_rvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_RVALID),
        .saxigp0_wdata(dpuczdx8g_0_DPU0_M_AXI_DATA0_WDATA),
        .saxigp0_wlast(dpuczdx8g_0_DPU0_M_AXI_DATA0_WLAST),
        .saxigp0_wready(dpuczdx8g_0_DPU0_M_AXI_DATA0_WREADY),
        .saxigp0_wstrb(dpuczdx8g_0_DPU0_M_AXI_DATA0_WSTRB),
        .saxigp0_wvalid(dpuczdx8g_0_DPU0_M_AXI_DATA0_WVALID),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_DATA1_ARADDR}),
        .saxigp2_arburst(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARBURST),
        .saxigp2_arcache(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_DATA1_ARID}),
        .saxigp2_arlen(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARLEN),
        .saxigp2_arlock(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARLOCK),
        .saxigp2_arprot(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARPROT),
        .saxigp2_arqos(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARQOS),
        .saxigp2_arready(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARREADY),
        .saxigp2_arsize(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARSIZE),
        .saxigp2_aruser(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARUSER),
        .saxigp2_arvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_DATA1_AWADDR}),
        .saxigp2_awburst(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWBURST),
        .saxigp2_awcache(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_DATA1_AWID}),
        .saxigp2_awlen(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWLEN),
        .saxigp2_awlock(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWLOCK),
        .saxigp2_awprot(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWPROT),
        .saxigp2_awqos(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWQOS),
        .saxigp2_awready(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWREADY),
        .saxigp2_awsize(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWSIZE),
        .saxigp2_awuser(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWUSER),
        .saxigp2_awvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_AWVALID),
        .saxigp2_bid(dpuczdx8g_0_DPU0_M_AXI_DATA1_BID),
        .saxigp2_bready(dpuczdx8g_0_DPU0_M_AXI_DATA1_BREADY),
        .saxigp2_bresp(dpuczdx8g_0_DPU0_M_AXI_DATA1_BRESP),
        .saxigp2_bvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_BVALID),
        .saxigp2_rdata(dpuczdx8g_0_DPU0_M_AXI_DATA1_RDATA),
        .saxigp2_rid(dpuczdx8g_0_DPU0_M_AXI_DATA1_RID),
        .saxigp2_rlast(dpuczdx8g_0_DPU0_M_AXI_DATA1_RLAST),
        .saxigp2_rready(dpuczdx8g_0_DPU0_M_AXI_DATA1_RREADY),
        .saxigp2_rresp(dpuczdx8g_0_DPU0_M_AXI_DATA1_RRESP),
        .saxigp2_rvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_RVALID),
        .saxigp2_wdata(dpuczdx8g_0_DPU0_M_AXI_DATA1_WDATA),
        .saxigp2_wlast(dpuczdx8g_0_DPU0_M_AXI_DATA1_WLAST),
        .saxigp2_wready(dpuczdx8g_0_DPU0_M_AXI_DATA1_WREADY),
        .saxigp2_wstrb(dpuczdx8g_0_DPU0_M_AXI_DATA1_WSTRB),
        .saxigp2_wvalid(dpuczdx8g_0_DPU0_M_AXI_DATA1_WVALID),
        .saxigp6_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_INSTR_ARADDR}),
        .saxigp6_arburst(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARBURST),
        .saxigp6_arcache(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARCACHE),
        .saxigp6_arid({1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_INSTR_ARID}),
        .saxigp6_arlen(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARLEN),
        .saxigp6_arlock(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARLOCK),
        .saxigp6_arprot(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARPROT),
        .saxigp6_arqos(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARQOS),
        .saxigp6_arready(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARREADY),
        .saxigp6_arsize(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARSIZE),
        .saxigp6_aruser(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARUSER),
        .saxigp6_arvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_ARVALID),
        .saxigp6_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_INSTR_AWADDR}),
        .saxigp6_awburst(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWBURST),
        .saxigp6_awcache(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWCACHE),
        .saxigp6_awid({1'b0,1'b0,1'b0,1'b0,dpuczdx8g_0_DPU0_M_AXI_INSTR_AWID}),
        .saxigp6_awlen(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWLEN),
        .saxigp6_awlock(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWLOCK),
        .saxigp6_awprot(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWPROT),
        .saxigp6_awqos(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWQOS),
        .saxigp6_awready(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWREADY),
        .saxigp6_awsize(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWSIZE),
        .saxigp6_awuser(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWUSER),
        .saxigp6_awvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_AWVALID),
        .saxigp6_bid(dpuczdx8g_0_DPU0_M_AXI_INSTR_BID),
        .saxigp6_bready(dpuczdx8g_0_DPU0_M_AXI_INSTR_BREADY),
        .saxigp6_bresp(dpuczdx8g_0_DPU0_M_AXI_INSTR_BRESP),
        .saxigp6_bvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_BVALID),
        .saxigp6_rdata(dpuczdx8g_0_DPU0_M_AXI_INSTR_RDATA),
        .saxigp6_rid(dpuczdx8g_0_DPU0_M_AXI_INSTR_RID),
        .saxigp6_rlast(dpuczdx8g_0_DPU0_M_AXI_INSTR_RLAST),
        .saxigp6_rready(dpuczdx8g_0_DPU0_M_AXI_INSTR_RREADY),
        .saxigp6_rresp(dpuczdx8g_0_DPU0_M_AXI_INSTR_RRESP),
        .saxigp6_rvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_RVALID),
        .saxigp6_wdata(dpuczdx8g_0_DPU0_M_AXI_INSTR_WDATA),
        .saxigp6_wlast(dpuczdx8g_0_DPU0_M_AXI_INSTR_WLAST),
        .saxigp6_wready(dpuczdx8g_0_DPU0_M_AXI_INSTR_WREADY),
        .saxigp6_wstrb(dpuczdx8g_0_DPU0_M_AXI_INSTR_WSTRB),
        .saxigp6_wvalid(dpuczdx8g_0_DPU0_M_AXI_INSTR_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_pl_clk0),
        .saxihpc0_fpd_aclk(zynq_ultra_pl_clk0));
endmodule

module DDR4_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_aruser,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awuser,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [17:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [17:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [17:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [17:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [127:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [15:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [0:0]S02_AXI_awid;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  output [0:0]S02_AXI_bid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input [127:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [15:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [39:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [15:0]S03_AXI_arid;
  input [7:0]S03_AXI_arlen;
  input [0:0]S03_AXI_arlock;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arqos;
  output S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input [15:0]S03_AXI_aruser;
  input S03_AXI_arvalid;
  input [39:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [15:0]S03_AXI_awid;
  input [7:0]S03_AXI_awlen;
  input [0:0]S03_AXI_awlock;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awqos;
  output S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input [15:0]S03_AXI_awuser;
  input S03_AXI_awvalid;
  output [15:0]S03_AXI_bid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  output [127:0]S03_AXI_rdata;
  output [15:0]S03_AXI_rid;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input [127:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [15:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [39:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [17:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire [0:0]M00_AXI_arvalid;
  wire [39:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [17:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire [0:0]M00_AXI_awvalid;
  wire [17:0]M00_AXI_bid;
  wire [0:0]M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire [0:0]M00_AXI_bvalid;
  wire [127:0]M00_AXI_rdata;
  wire [17:0]M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire [0:0]M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire [0:0]M00_AXI_rvalid;
  wire [127:0]M00_AXI_wdata;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire [15:0]M00_AXI_wstrb;
  wire [0:0]M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [31:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [0:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire [0:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [127:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [15:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire S01_ACLK;
  wire S01_ARESETN;
  wire [31:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [0:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire [0:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [127:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [15:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire S02_ACLK;
  wire S02_ARESETN;
  wire [31:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [0:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [2:0]S02_AXI_awsize;
  wire S02_AXI_awvalid;
  wire [0:0]S02_AXI_bid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [127:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [15:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire S03_ACLK;
  wire S03_ARESETN;
  wire [39:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [15:0]S03_AXI_arid;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire S03_AXI_arready;
  wire [2:0]S03_AXI_arsize;
  wire [15:0]S03_AXI_aruser;
  wire S03_AXI_arvalid;
  wire [39:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [15:0]S03_AXI_awid;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire S03_AXI_awready;
  wire [2:0]S03_AXI_awsize;
  wire [15:0]S03_AXI_awuser;
  wire S03_AXI_awvalid;
  wire [15:0]S03_AXI_bid;
  wire S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire S03_AXI_bvalid;
  wire [127:0]S03_AXI_rdata;
  wire [15:0]S03_AXI_rid;
  wire S03_AXI_rlast;
  wire S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire S03_AXI_rvalid;
  wire [127:0]S03_AXI_wdata;
  wire S03_AXI_wlast;
  wire S03_AXI_wready;
  wire [15:0]S03_AXI_wstrb;
  wire S03_AXI_wvalid;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [0:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [17:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [127:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [15:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s00_mmu_M_AXI_AWADDR;
  wire [1:0]s00_mmu_M_AXI_AWBURST;
  wire [3:0]s00_mmu_M_AXI_AWCACHE;
  wire [0:0]s00_mmu_M_AXI_AWID;
  wire [7:0]s00_mmu_M_AXI_AWLEN;
  wire [0:0]s00_mmu_M_AXI_AWLOCK;
  wire [2:0]s00_mmu_M_AXI_AWPROT;
  wire [3:0]s00_mmu_M_AXI_AWQOS;
  wire s00_mmu_M_AXI_AWREADY;
  wire [2:0]s00_mmu_M_AXI_AWSIZE;
  wire s00_mmu_M_AXI_AWVALID;
  wire [0:0]s00_mmu_M_AXI_BID;
  wire s00_mmu_M_AXI_BREADY;
  wire [1:0]s00_mmu_M_AXI_BRESP;
  wire s00_mmu_M_AXI_BVALID;
  wire [127:0]s00_mmu_M_AXI_WDATA;
  wire s00_mmu_M_AXI_WLAST;
  wire s00_mmu_M_AXI_WREADY;
  wire [15:0]s00_mmu_M_AXI_WSTRB;
  wire s00_mmu_M_AXI_WVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [0:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire [35:18]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [15:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s01_mmu_M_AXI_AWADDR;
  wire [1:0]s01_mmu_M_AXI_AWBURST;
  wire [3:0]s01_mmu_M_AXI_AWCACHE;
  wire [0:0]s01_mmu_M_AXI_AWID;
  wire [7:0]s01_mmu_M_AXI_AWLEN;
  wire [0:0]s01_mmu_M_AXI_AWLOCK;
  wire [2:0]s01_mmu_M_AXI_AWPROT;
  wire [3:0]s01_mmu_M_AXI_AWQOS;
  wire s01_mmu_M_AXI_AWREADY;
  wire [2:0]s01_mmu_M_AXI_AWSIZE;
  wire s01_mmu_M_AXI_AWVALID;
  wire [0:0]s01_mmu_M_AXI_BID;
  wire s01_mmu_M_AXI_BREADY;
  wire [1:0]s01_mmu_M_AXI_BRESP;
  wire s01_mmu_M_AXI_BVALID;
  wire [127:0]s01_mmu_M_AXI_WDATA;
  wire s01_mmu_M_AXI_WLAST;
  wire s01_mmu_M_AXI_WREADY;
  wire [15:0]s01_mmu_M_AXI_WSTRB;
  wire s01_mmu_M_AXI_WVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [0:0]s02_couplers_to_xbar_AWID;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire [53:36]s02_couplers_to_xbar_BID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [127:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [15:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s02_mmu_M_AXI_AWADDR;
  wire [1:0]s02_mmu_M_AXI_AWBURST;
  wire [3:0]s02_mmu_M_AXI_AWCACHE;
  wire [0:0]s02_mmu_M_AXI_AWID;
  wire [7:0]s02_mmu_M_AXI_AWLEN;
  wire [0:0]s02_mmu_M_AXI_AWLOCK;
  wire [2:0]s02_mmu_M_AXI_AWPROT;
  wire [3:0]s02_mmu_M_AXI_AWQOS;
  wire s02_mmu_M_AXI_AWREADY;
  wire [2:0]s02_mmu_M_AXI_AWSIZE;
  wire s02_mmu_M_AXI_AWVALID;
  wire [0:0]s02_mmu_M_AXI_BID;
  wire s02_mmu_M_AXI_BREADY;
  wire [1:0]s02_mmu_M_AXI_BRESP;
  wire s02_mmu_M_AXI_BVALID;
  wire [127:0]s02_mmu_M_AXI_WDATA;
  wire s02_mmu_M_AXI_WLAST;
  wire s02_mmu_M_AXI_WREADY;
  wire [15:0]s02_mmu_M_AXI_WSTRB;
  wire s02_mmu_M_AXI_WVALID;
  wire [39:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [15:0]s03_couplers_to_xbar_ARID;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire [15:0]s03_couplers_to_xbar_ARUSER;
  wire s03_couplers_to_xbar_ARVALID;
  wire [39:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [15:0]s03_couplers_to_xbar_AWID;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire [15:0]s03_couplers_to_xbar_AWUSER;
  wire s03_couplers_to_xbar_AWVALID;
  wire [71:54]s03_couplers_to_xbar_BID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [511:384]s03_couplers_to_xbar_RDATA;
  wire [71:54]s03_couplers_to_xbar_RID;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [127:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [15:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [17:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [17:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [17:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [127:0]xbar_to_m00_couplers_RDATA;
  wire [17:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [127:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [15:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [3:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [511:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [71:0]NLW_xbar_s_axi_rid_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [7:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;

  m00_couplers_imp_1K4QSGX m00_couplers
       (.M_ACLK(M00_ACLK),
        .M_ARESETN(M00_ARESETN),
        .M_AXI_araddr(M00_AXI_araddr),
        .M_AXI_arburst(M00_AXI_arburst),
        .M_AXI_arcache(M00_AXI_arcache),
        .M_AXI_arid(M00_AXI_arid),
        .M_AXI_arlen(M00_AXI_arlen),
        .M_AXI_arlock(M00_AXI_arlock),
        .M_AXI_arprot(M00_AXI_arprot),
        .M_AXI_arqos(M00_AXI_arqos),
        .M_AXI_arready(M00_AXI_arready),
        .M_AXI_arsize(M00_AXI_arsize),
        .M_AXI_arvalid(M00_AXI_arvalid),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awburst(M00_AXI_awburst),
        .M_AXI_awcache(M00_AXI_awcache),
        .M_AXI_awid(M00_AXI_awid),
        .M_AXI_awlen(M00_AXI_awlen),
        .M_AXI_awlock(M00_AXI_awlock),
        .M_AXI_awprot(M00_AXI_awprot),
        .M_AXI_awqos(M00_AXI_awqos),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awsize(M00_AXI_awsize),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bid(M00_AXI_bid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_rdata(M00_AXI_rdata),
        .M_AXI_rid(M00_AXI_rid),
        .M_AXI_rlast(M00_AXI_rlast),
        .M_AXI_rready(M00_AXI_rready),
        .M_AXI_rresp(M00_AXI_rresp),
        .M_AXI_rvalid(M00_AXI_rvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wlast(M00_AXI_wlast),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_3KY1ZO s00_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK),
        .S_ARESETN(S00_ARESETN),
        .S_AXI_awaddr(s00_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s00_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s00_mmu_M_AXI_AWCACHE),
        .S_AXI_awid(s00_mmu_M_AXI_AWID),
        .S_AXI_awlen(s00_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s00_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s00_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s00_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s00_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s00_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s00_mmu_M_AXI_AWVALID),
        .S_AXI_bid(s00_mmu_M_AXI_BID),
        .S_AXI_bready(s00_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s00_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s00_mmu_M_AXI_BVALID),
        .S_AXI_wdata(s00_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s00_mmu_M_AXI_WLAST),
        .S_AXI_wready(s00_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s00_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s00_mmu_M_AXI_WVALID));
  DDR4_axi_interconnect_0_imp_s00_mmu_0 s00_mmu
       (.aclk(S00_ACLK),
        .aresetn(S00_ARESETN),
        .m_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s00_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s00_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s00_mmu_M_AXI_AWID),
        .m_axi_awlen(s00_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s00_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s00_mmu_M_AXI_AWQOS),
        .m_axi_awready(s00_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s00_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .m_axi_bid(s00_mmu_M_AXI_BID),
        .m_axi_bready(s00_mmu_M_AXI_BREADY),
        .m_axi_bresp(s00_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .m_axi_wdata(s00_mmu_M_AXI_WDATA),
        .m_axi_wlast(s00_mmu_M_AXI_WLAST),
        .m_axi_wready(s00_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s00_mmu_M_AXI_WVALID),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awburst(S00_AXI_awburst),
        .s_axi_awcache(S00_AXI_awcache),
        .s_axi_awid(S00_AXI_awid),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awlock(S00_AXI_awlock),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awqos(S00_AXI_awqos),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awsize(S00_AXI_awsize),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bid(S00_AXI_bid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
  s01_couplers_imp_14HE4MA s01_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK),
        .S_ARESETN(S01_ARESETN),
        .S_AXI_awaddr(s01_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s01_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s01_mmu_M_AXI_AWCACHE),
        .S_AXI_awid(s01_mmu_M_AXI_AWID),
        .S_AXI_awlen(s01_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s01_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s01_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s01_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s01_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s01_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s01_mmu_M_AXI_AWVALID),
        .S_AXI_bid(s01_mmu_M_AXI_BID),
        .S_AXI_bready(s01_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s01_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s01_mmu_M_AXI_BVALID),
        .S_AXI_wdata(s01_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s01_mmu_M_AXI_WLAST),
        .S_AXI_wready(s01_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s01_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s01_mmu_M_AXI_WVALID));
  DDR4_axi_interconnect_0_imp_s01_mmu_0 s01_mmu
       (.aclk(S01_ACLK),
        .aresetn(S01_ARESETN),
        .m_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s01_mmu_M_AXI_AWID),
        .m_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .m_axi_awready(s01_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .m_axi_bid(s01_mmu_M_AXI_BID),
        .m_axi_bready(s01_mmu_M_AXI_BREADY),
        .m_axi_bresp(s01_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .m_axi_wdata(s01_mmu_M_AXI_WDATA),
        .m_axi_wlast(s01_mmu_M_AXI_WLAST),
        .m_axi_wready(s01_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s01_mmu_M_AXI_WVALID),
        .s_axi_awaddr(S01_AXI_awaddr),
        .s_axi_awburst(S01_AXI_awburst),
        .s_axi_awcache(S01_AXI_awcache),
        .s_axi_awid(S01_AXI_awid),
        .s_axi_awlen(S01_AXI_awlen),
        .s_axi_awlock(S01_AXI_awlock),
        .s_axi_awprot(S01_AXI_awprot),
        .s_axi_awqos(S01_AXI_awqos),
        .s_axi_awready(S01_AXI_awready),
        .s_axi_awsize(S01_AXI_awsize),
        .s_axi_awvalid(S01_AXI_awvalid),
        .s_axi_bid(S01_AXI_bid),
        .s_axi_bready(S01_AXI_bready),
        .s_axi_bresp(S01_AXI_bresp),
        .s_axi_bvalid(S01_AXI_bvalid),
        .s_axi_wdata(S01_AXI_wdata),
        .s_axi_wlast(S01_AXI_wlast),
        .s_axi_wready(S01_AXI_wready),
        .s_axi_wstrb(S01_AXI_wstrb),
        .s_axi_wvalid(S01_AXI_wvalid));
  s02_couplers_imp_1TWKNY1 s02_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s02_couplers_to_xbar_AWID),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s02_couplers_to_xbar_BID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK),
        .S_ARESETN(S02_ARESETN),
        .S_AXI_awaddr(s02_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s02_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s02_mmu_M_AXI_AWCACHE),
        .S_AXI_awid(s02_mmu_M_AXI_AWID),
        .S_AXI_awlen(s02_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s02_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s02_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s02_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s02_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s02_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s02_mmu_M_AXI_AWVALID),
        .S_AXI_bid(s02_mmu_M_AXI_BID),
        .S_AXI_bready(s02_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s02_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s02_mmu_M_AXI_BVALID),
        .S_AXI_wdata(s02_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s02_mmu_M_AXI_WLAST),
        .S_AXI_wready(s02_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s02_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s02_mmu_M_AXI_WVALID));
  DDR4_axi_interconnect_0_imp_s02_mmu_0 s02_mmu
       (.aclk(S02_ACLK),
        .aresetn(S02_ARESETN),
        .m_axi_awaddr(s02_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s02_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s02_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s02_mmu_M_AXI_AWID),
        .m_axi_awlen(s02_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s02_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s02_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s02_mmu_M_AXI_AWQOS),
        .m_axi_awready(s02_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s02_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s02_mmu_M_AXI_AWVALID),
        .m_axi_bid(s02_mmu_M_AXI_BID),
        .m_axi_bready(s02_mmu_M_AXI_BREADY),
        .m_axi_bresp(s02_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s02_mmu_M_AXI_BVALID),
        .m_axi_wdata(s02_mmu_M_AXI_WDATA),
        .m_axi_wlast(s02_mmu_M_AXI_WLAST),
        .m_axi_wready(s02_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s02_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s02_mmu_M_AXI_WVALID),
        .s_axi_awaddr(S02_AXI_awaddr),
        .s_axi_awburst(S02_AXI_awburst),
        .s_axi_awcache(S02_AXI_awcache),
        .s_axi_awid(S02_AXI_awid),
        .s_axi_awlen(S02_AXI_awlen),
        .s_axi_awlock(S02_AXI_awlock),
        .s_axi_awprot(S02_AXI_awprot),
        .s_axi_awqos(S02_AXI_awqos),
        .s_axi_awready(S02_AXI_awready),
        .s_axi_awsize(S02_AXI_awsize),
        .s_axi_awvalid(S02_AXI_awvalid),
        .s_axi_bid(S02_AXI_bid),
        .s_axi_bready(S02_AXI_bready),
        .s_axi_bresp(S02_AXI_bresp),
        .s_axi_bvalid(S02_AXI_bvalid),
        .s_axi_wdata(S02_AXI_wdata),
        .s_axi_wlast(S02_AXI_wlast),
        .s_axi_wready(S02_AXI_wready),
        .s_axi_wstrb(S02_AXI_wstrb),
        .s_axi_wvalid(S02_AXI_wvalid));
  s03_couplers_imp_V83TCF s03_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s03_couplers_to_xbar_ARID),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s03_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s03_couplers_to_xbar_AWID),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s03_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s03_couplers_to_xbar_BID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rid(s03_couplers_to_xbar_RID),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(S03_ACLK),
        .S_ARESETN(S03_ARESETN),
        .S_AXI_araddr(S03_AXI_araddr),
        .S_AXI_arburst(S03_AXI_arburst),
        .S_AXI_arcache(S03_AXI_arcache),
        .S_AXI_arid(S03_AXI_arid),
        .S_AXI_arlen(S03_AXI_arlen),
        .S_AXI_arlock(S03_AXI_arlock),
        .S_AXI_arprot(S03_AXI_arprot),
        .S_AXI_arqos(S03_AXI_arqos),
        .S_AXI_arready(S03_AXI_arready),
        .S_AXI_arsize(S03_AXI_arsize),
        .S_AXI_aruser(S03_AXI_aruser),
        .S_AXI_arvalid(S03_AXI_arvalid),
        .S_AXI_awaddr(S03_AXI_awaddr),
        .S_AXI_awburst(S03_AXI_awburst),
        .S_AXI_awcache(S03_AXI_awcache),
        .S_AXI_awid(S03_AXI_awid),
        .S_AXI_awlen(S03_AXI_awlen),
        .S_AXI_awlock(S03_AXI_awlock),
        .S_AXI_awprot(S03_AXI_awprot),
        .S_AXI_awqos(S03_AXI_awqos),
        .S_AXI_awready(S03_AXI_awready),
        .S_AXI_awsize(S03_AXI_awsize),
        .S_AXI_awuser(S03_AXI_awuser),
        .S_AXI_awvalid(S03_AXI_awvalid),
        .S_AXI_bid(S03_AXI_bid),
        .S_AXI_bready(S03_AXI_bready),
        .S_AXI_bresp(S03_AXI_bresp),
        .S_AXI_bvalid(S03_AXI_bvalid),
        .S_AXI_rdata(S03_AXI_rdata),
        .S_AXI_rid(S03_AXI_rid),
        .S_AXI_rlast(S03_AXI_rlast),
        .S_AXI_rready(S03_AXI_rready),
        .S_AXI_rresp(S03_AXI_rresp),
        .S_AXI_rvalid(S03_AXI_rvalid),
        .S_AXI_wdata(S03_AXI_wdata),
        .S_AXI_wlast(S03_AXI_wlast),
        .S_AXI_wready(S03_AXI_wready),
        .S_AXI_wstrb(S03_AXI_wstrb),
        .S_AXI_wvalid(S03_AXI_wvalid));
  DDR4_axi_interconnect_0_imp_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s03_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({s03_couplers_to_xbar_ARBURST,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .s_axi_arcache({s03_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_arid({1'b0,1'b0,s03_couplers_to_xbar_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s03_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({s03_couplers_to_xbar_ARLOCK,1'b0,1'b0,1'b0}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arqos({s03_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[2:0]}),
        .s_axi_arsize({s03_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .s_axi_aruser({s03_couplers_to_xbar_ARUSER,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,1'b0,1'b0,1'b0}),
        .s_axi_awaddr({s03_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,s03_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awuser({s03_couplers_to_xbar_AWUSER,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s03_couplers_to_xbar_BID,s02_couplers_to_xbar_BID,s01_couplers_to_xbar_BID,s00_couplers_to_xbar_BID}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[383:0]}),
        .s_axi_rid({s03_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[53:0]}),
        .s_axi_rlast({s03_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[2:0]}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,1'b0,1'b0,1'b0}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[5:0]}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[2:0]}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module m00_couplers_imp_1K4QSGX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [17:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [17:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [17:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [17:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [17:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [17:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [17:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [17:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [17:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire [2:0]M_AXI_arsize;
  wire [0:0]M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [17:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire [2:0]M_AXI_awsize;
  wire [0:0]M_AXI_awvalid;
  wire [0:0]M_AXI_bready;
  wire [0:0]M_AXI_rready;
  wire [127:0]M_AXI_wdata;
  wire [0:0]M_AXI_wlast;
  wire [15:0]M_AXI_wstrb;
  wire [0:0]M_AXI_wvalid;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_awready;
  wire [17:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [127:0]S_AXI_rdata;
  wire [17:0]S_AXI_rid;
  wire [0:0]S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [0:0]S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[39:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[17:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock[0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arqos = S_AXI_arqos[3:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_arvalid = S_AXI_arvalid[0];
  assign M_AXI_awaddr = S_AXI_awaddr[39:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[17:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock[0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awqos = S_AXI_awqos[3:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awvalid = S_AXI_awvalid[0];
  assign M_AXI_bready = S_AXI_bready[0];
  assign M_AXI_rready = S_AXI_rready[0];
  assign M_AXI_wdata = S_AXI_wdata[127:0];
  assign M_AXI_wlast = S_AXI_wlast[0];
  assign M_AXI_wstrb = S_AXI_wstrb[15:0];
  assign M_AXI_wvalid = S_AXI_wvalid[0];
  assign S_AXI_arready = M_AXI_arready[0];
  assign S_AXI_awready = M_AXI_awready[0];
  assign S_AXI_bid = M_AXI_bid[17:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid[0];
  assign S_AXI_rdata = M_AXI_rdata[127:0];
  assign S_AXI_rid = M_AXI_rid[17:0];
  assign S_AXI_rlast = M_AXI_rlast[0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid[0];
  assign S_AXI_wready = M_AXI_wready[0];
endmodule

module s00_couplers_imp_3KY1ZO
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [17:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK;
  wire M_ARESETN;
  wire [31:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [0:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [17:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [127:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [15:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [0:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [0:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [127:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [15:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [31:0]auto_cc_to_s00_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_AWCACHE;
  wire [0:0]auto_cc_to_s00_data_fifo_AWID;
  wire [7:0]auto_cc_to_s00_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_AWQOS;
  wire auto_cc_to_s00_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_AWSIZE;
  wire auto_cc_to_s00_data_fifo_AWVALID;
  wire [0:0]auto_cc_to_s00_data_fifo_BID;
  wire auto_cc_to_s00_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_BRESP;
  wire auto_cc_to_s00_data_fifo_BVALID;
  wire [127:0]auto_cc_to_s00_data_fifo_WDATA;
  wire auto_cc_to_s00_data_fifo_WLAST;
  wire auto_cc_to_s00_data_fifo_WREADY;
  wire [15:0]auto_cc_to_s00_data_fifo_WSTRB;
  wire auto_cc_to_s00_data_fifo_WVALID;

  DDR4_axi_interconnect_0_imp_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK),
        .m_axi_aresetn(M_ARESETN),
        .m_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .m_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .m_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .m_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .m_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK),
        .s_axi_aresetn(S_ARESETN),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  DDR4_axi_interconnect_0_imp_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK),
        .aresetn(M_ARESETN),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awid(M_AXI_awid),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(M_AXI_awsize),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bid(M_AXI_bid[0]),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .s_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .s_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .s_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .s_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID));
endmodule

module s01_couplers_imp_14HE4MA
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [17:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK;
  wire M_ARESETN;
  wire [31:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [0:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [17:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [127:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [15:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [0:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [0:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [127:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [15:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [31:0]auto_cc_to_s01_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s01_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s01_data_fifo_AWCACHE;
  wire [0:0]auto_cc_to_s01_data_fifo_AWID;
  wire [7:0]auto_cc_to_s01_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s01_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s01_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s01_data_fifo_AWQOS;
  wire auto_cc_to_s01_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s01_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s01_data_fifo_AWSIZE;
  wire auto_cc_to_s01_data_fifo_AWVALID;
  wire [0:0]auto_cc_to_s01_data_fifo_BID;
  wire auto_cc_to_s01_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s01_data_fifo_BRESP;
  wire auto_cc_to_s01_data_fifo_BVALID;
  wire [127:0]auto_cc_to_s01_data_fifo_WDATA;
  wire auto_cc_to_s01_data_fifo_WLAST;
  wire auto_cc_to_s01_data_fifo_WREADY;
  wire [15:0]auto_cc_to_s01_data_fifo_WSTRB;
  wire auto_cc_to_s01_data_fifo_WVALID;

  DDR4_axi_interconnect_0_imp_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK),
        .m_axi_aresetn(M_ARESETN),
        .m_axi_awaddr(auto_cc_to_s01_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s01_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s01_data_fifo_AWCACHE),
        .m_axi_awid(auto_cc_to_s01_data_fifo_AWID),
        .m_axi_awlen(auto_cc_to_s01_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s01_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s01_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s01_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s01_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s01_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s01_data_fifo_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s01_data_fifo_AWVALID),
        .m_axi_bid(auto_cc_to_s01_data_fifo_BID),
        .m_axi_bready(auto_cc_to_s01_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s01_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s01_data_fifo_BVALID),
        .m_axi_wdata(auto_cc_to_s01_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s01_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s01_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s01_data_fifo_WSTRB),
        .m_axi_wvalid(auto_cc_to_s01_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK),
        .s_axi_aresetn(S_ARESETN),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  DDR4_axi_interconnect_0_imp_s01_data_fifo_0 s01_data_fifo
       (.aclk(M_ACLK),
        .aresetn(M_ARESETN),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awid(M_AXI_awid),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(M_AXI_awsize),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bid(M_AXI_bid[0]),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_awaddr(auto_cc_to_s01_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s01_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s01_data_fifo_AWCACHE),
        .s_axi_awid(auto_cc_to_s01_data_fifo_AWID),
        .s_axi_awlen(auto_cc_to_s01_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s01_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s01_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s01_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s01_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s01_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s01_data_fifo_AWSIZE),
        .s_axi_awvalid(auto_cc_to_s01_data_fifo_AWVALID),
        .s_axi_bid(auto_cc_to_s01_data_fifo_BID),
        .s_axi_bready(auto_cc_to_s01_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s01_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s01_data_fifo_BVALID),
        .s_axi_wdata(auto_cc_to_s01_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s01_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s01_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s01_data_fifo_WSTRB),
        .s_axi_wvalid(auto_cc_to_s01_data_fifo_WVALID));
endmodule

module s02_couplers_imp_1TWKNY1
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [17:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK;
  wire M_ARESETN;
  wire [31:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [0:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [17:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [127:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [15:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [0:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [0:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [127:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [15:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [31:0]auto_cc_to_s02_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s02_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s02_data_fifo_AWCACHE;
  wire [0:0]auto_cc_to_s02_data_fifo_AWID;
  wire [7:0]auto_cc_to_s02_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s02_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s02_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s02_data_fifo_AWQOS;
  wire auto_cc_to_s02_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s02_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s02_data_fifo_AWSIZE;
  wire auto_cc_to_s02_data_fifo_AWVALID;
  wire [0:0]auto_cc_to_s02_data_fifo_BID;
  wire auto_cc_to_s02_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s02_data_fifo_BRESP;
  wire auto_cc_to_s02_data_fifo_BVALID;
  wire [127:0]auto_cc_to_s02_data_fifo_WDATA;
  wire auto_cc_to_s02_data_fifo_WLAST;
  wire auto_cc_to_s02_data_fifo_WREADY;
  wire [15:0]auto_cc_to_s02_data_fifo_WSTRB;
  wire auto_cc_to_s02_data_fifo_WVALID;

  DDR4_axi_interconnect_0_imp_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK),
        .m_axi_aresetn(M_ARESETN),
        .m_axi_awaddr(auto_cc_to_s02_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s02_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s02_data_fifo_AWCACHE),
        .m_axi_awid(auto_cc_to_s02_data_fifo_AWID),
        .m_axi_awlen(auto_cc_to_s02_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s02_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s02_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s02_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s02_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s02_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s02_data_fifo_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s02_data_fifo_AWVALID),
        .m_axi_bid(auto_cc_to_s02_data_fifo_BID),
        .m_axi_bready(auto_cc_to_s02_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s02_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s02_data_fifo_BVALID),
        .m_axi_wdata(auto_cc_to_s02_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s02_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s02_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s02_data_fifo_WSTRB),
        .m_axi_wvalid(auto_cc_to_s02_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK),
        .s_axi_aresetn(S_ARESETN),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  DDR4_axi_interconnect_0_imp_s02_data_fifo_0 s02_data_fifo
       (.aclk(M_ACLK),
        .aresetn(M_ARESETN),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awid(M_AXI_awid),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(M_AXI_awsize),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bid(M_AXI_bid[0]),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_awaddr(auto_cc_to_s02_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s02_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s02_data_fifo_AWCACHE),
        .s_axi_awid(auto_cc_to_s02_data_fifo_AWID),
        .s_axi_awlen(auto_cc_to_s02_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s02_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s02_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s02_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s02_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s02_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s02_data_fifo_AWSIZE),
        .s_axi_awvalid(auto_cc_to_s02_data_fifo_AWVALID),
        .s_axi_bid(auto_cc_to_s02_data_fifo_BID),
        .s_axi_bready(auto_cc_to_s02_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s02_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s02_data_fifo_BVALID),
        .s_axi_wdata(auto_cc_to_s02_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s02_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s02_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s02_data_fifo_WSTRB),
        .s_axi_wvalid(auto_cc_to_s02_data_fifo_WVALID));
endmodule

module s03_couplers_imp_V83TCF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [15:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [15:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [17:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [17:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK;
  wire M_ARESETN;
  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [15:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire [2:0]M_AXI_arsize;
  wire [15:0]M_AXI_aruser;
  wire M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [15:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire [15:0]M_AXI_awuser;
  wire M_AXI_awvalid;
  wire [17:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [127:0]M_AXI_rdata;
  wire [17:0]M_AXI_rid;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [127:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [15:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [39:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [15:0]S_AXI_arid;
  wire [7:0]S_AXI_arlen;
  wire [0:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire [15:0]S_AXI_aruser;
  wire S_AXI_arvalid;
  wire [39:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [15:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire [15:0]S_AXI_awuser;
  wire S_AXI_awvalid;
  wire [15:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [127:0]S_AXI_rdata;
  wire [15:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [127:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [15:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [39:0]auto_cc_to_s03_data_fifo_ARADDR;
  wire [1:0]auto_cc_to_s03_data_fifo_ARBURST;
  wire [3:0]auto_cc_to_s03_data_fifo_ARCACHE;
  wire [15:0]auto_cc_to_s03_data_fifo_ARID;
  wire [7:0]auto_cc_to_s03_data_fifo_ARLEN;
  wire [0:0]auto_cc_to_s03_data_fifo_ARLOCK;
  wire [2:0]auto_cc_to_s03_data_fifo_ARPROT;
  wire [3:0]auto_cc_to_s03_data_fifo_ARQOS;
  wire auto_cc_to_s03_data_fifo_ARREADY;
  wire [3:0]auto_cc_to_s03_data_fifo_ARREGION;
  wire [2:0]auto_cc_to_s03_data_fifo_ARSIZE;
  wire [15:0]auto_cc_to_s03_data_fifo_ARUSER;
  wire auto_cc_to_s03_data_fifo_ARVALID;
  wire [39:0]auto_cc_to_s03_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s03_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s03_data_fifo_AWCACHE;
  wire [15:0]auto_cc_to_s03_data_fifo_AWID;
  wire [7:0]auto_cc_to_s03_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s03_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s03_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s03_data_fifo_AWQOS;
  wire auto_cc_to_s03_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s03_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s03_data_fifo_AWSIZE;
  wire [15:0]auto_cc_to_s03_data_fifo_AWUSER;
  wire auto_cc_to_s03_data_fifo_AWVALID;
  wire [15:0]auto_cc_to_s03_data_fifo_BID;
  wire auto_cc_to_s03_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s03_data_fifo_BRESP;
  wire auto_cc_to_s03_data_fifo_BVALID;
  wire [127:0]auto_cc_to_s03_data_fifo_RDATA;
  wire [15:0]auto_cc_to_s03_data_fifo_RID;
  wire auto_cc_to_s03_data_fifo_RLAST;
  wire auto_cc_to_s03_data_fifo_RREADY;
  wire [1:0]auto_cc_to_s03_data_fifo_RRESP;
  wire auto_cc_to_s03_data_fifo_RVALID;
  wire [127:0]auto_cc_to_s03_data_fifo_WDATA;
  wire auto_cc_to_s03_data_fifo_WLAST;
  wire auto_cc_to_s03_data_fifo_WREADY;
  wire [15:0]auto_cc_to_s03_data_fifo_WSTRB;
  wire auto_cc_to_s03_data_fifo_WVALID;

  DDR4_axi_interconnect_0_imp_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK),
        .m_axi_araddr(auto_cc_to_s03_data_fifo_ARADDR),
        .m_axi_arburst(auto_cc_to_s03_data_fifo_ARBURST),
        .m_axi_arcache(auto_cc_to_s03_data_fifo_ARCACHE),
        .m_axi_aresetn(M_ARESETN),
        .m_axi_arid(auto_cc_to_s03_data_fifo_ARID),
        .m_axi_arlen(auto_cc_to_s03_data_fifo_ARLEN),
        .m_axi_arlock(auto_cc_to_s03_data_fifo_ARLOCK),
        .m_axi_arprot(auto_cc_to_s03_data_fifo_ARPROT),
        .m_axi_arqos(auto_cc_to_s03_data_fifo_ARQOS),
        .m_axi_arready(auto_cc_to_s03_data_fifo_ARREADY),
        .m_axi_arregion(auto_cc_to_s03_data_fifo_ARREGION),
        .m_axi_arsize(auto_cc_to_s03_data_fifo_ARSIZE),
        .m_axi_aruser(auto_cc_to_s03_data_fifo_ARUSER),
        .m_axi_arvalid(auto_cc_to_s03_data_fifo_ARVALID),
        .m_axi_awaddr(auto_cc_to_s03_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s03_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s03_data_fifo_AWCACHE),
        .m_axi_awid(auto_cc_to_s03_data_fifo_AWID),
        .m_axi_awlen(auto_cc_to_s03_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s03_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s03_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s03_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s03_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s03_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s03_data_fifo_AWSIZE),
        .m_axi_awuser(auto_cc_to_s03_data_fifo_AWUSER),
        .m_axi_awvalid(auto_cc_to_s03_data_fifo_AWVALID),
        .m_axi_bid(auto_cc_to_s03_data_fifo_BID),
        .m_axi_bready(auto_cc_to_s03_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s03_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s03_data_fifo_BVALID),
        .m_axi_rdata(auto_cc_to_s03_data_fifo_RDATA),
        .m_axi_rid(auto_cc_to_s03_data_fifo_RID),
        .m_axi_rlast(auto_cc_to_s03_data_fifo_RLAST),
        .m_axi_rready(auto_cc_to_s03_data_fifo_RREADY),
        .m_axi_rresp(auto_cc_to_s03_data_fifo_RRESP),
        .m_axi_rvalid(auto_cc_to_s03_data_fifo_RVALID),
        .m_axi_wdata(auto_cc_to_s03_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s03_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s03_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s03_data_fifo_WSTRB),
        .m_axi_wvalid(auto_cc_to_s03_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_aresetn(S_ARESETN),
        .s_axi_arid(S_AXI_arid),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_aruser(S_AXI_aruser),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awuser(S_AXI_awuser),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rid(S_AXI_rid),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  DDR4_axi_interconnect_0_imp_s03_data_fifo_0 s03_data_fifo
       (.aclk(M_ACLK),
        .aresetn(M_ARESETN),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arid(M_AXI_arid),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(M_AXI_arsize),
        .m_axi_aruser(M_AXI_aruser),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awid(M_AXI_awid),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(M_AXI_awsize),
        .m_axi_awuser(M_AXI_awuser),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bid(M_AXI_bid[15:0]),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rid(M_AXI_rid[15:0]),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(auto_cc_to_s03_data_fifo_ARADDR),
        .s_axi_arburst(auto_cc_to_s03_data_fifo_ARBURST),
        .s_axi_arcache(auto_cc_to_s03_data_fifo_ARCACHE),
        .s_axi_arid(auto_cc_to_s03_data_fifo_ARID),
        .s_axi_arlen(auto_cc_to_s03_data_fifo_ARLEN),
        .s_axi_arlock(auto_cc_to_s03_data_fifo_ARLOCK),
        .s_axi_arprot(auto_cc_to_s03_data_fifo_ARPROT),
        .s_axi_arqos(auto_cc_to_s03_data_fifo_ARQOS),
        .s_axi_arready(auto_cc_to_s03_data_fifo_ARREADY),
        .s_axi_arregion(auto_cc_to_s03_data_fifo_ARREGION),
        .s_axi_arsize(auto_cc_to_s03_data_fifo_ARSIZE),
        .s_axi_aruser(auto_cc_to_s03_data_fifo_ARUSER),
        .s_axi_arvalid(auto_cc_to_s03_data_fifo_ARVALID),
        .s_axi_awaddr(auto_cc_to_s03_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s03_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s03_data_fifo_AWCACHE),
        .s_axi_awid(auto_cc_to_s03_data_fifo_AWID),
        .s_axi_awlen(auto_cc_to_s03_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s03_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s03_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s03_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s03_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s03_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s03_data_fifo_AWSIZE),
        .s_axi_awuser(auto_cc_to_s03_data_fifo_AWUSER),
        .s_axi_awvalid(auto_cc_to_s03_data_fifo_AWVALID),
        .s_axi_bid(auto_cc_to_s03_data_fifo_BID),
        .s_axi_bready(auto_cc_to_s03_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s03_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s03_data_fifo_BVALID),
        .s_axi_rdata(auto_cc_to_s03_data_fifo_RDATA),
        .s_axi_rid(auto_cc_to_s03_data_fifo_RID),
        .s_axi_rlast(auto_cc_to_s03_data_fifo_RLAST),
        .s_axi_rready(auto_cc_to_s03_data_fifo_RREADY),
        .s_axi_rresp(auto_cc_to_s03_data_fifo_RRESP),
        .s_axi_rvalid(auto_cc_to_s03_data_fifo_RVALID),
        .s_axi_wdata(auto_cc_to_s03_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s03_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s03_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s03_data_fifo_WSTRB),
        .s_axi_wvalid(auto_cc_to_s03_data_fifo_WVALID));
endmodule
