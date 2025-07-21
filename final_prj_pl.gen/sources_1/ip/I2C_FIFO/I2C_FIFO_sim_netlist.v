// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Thu Jun 19 14:25:57 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top I2C_FIFO -prefix
//               I2C_FIFO_ I2C_FIFO_sim_netlist.v
// Design      : I2C_FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_FIFO,fifo_generator_v13_2_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module I2C_FIFO
   (wr_rst_busy,
    rd_rst_busy,
    s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  output wr_rst_busy;
  output rd_rst_busy;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *) (* x_interface_mode = "slave slave_aclk" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 slave_aresetn RST" *) (* x_interface_mode = "slave slave_aresetn" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_mode = "slave S_AXIS" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_mode = "master M_AXIS" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;

  wire \<const0> ;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [17:0]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign rd_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "4" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "4" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "4" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "9" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "1" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "5" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "5" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "5" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  I2C_FIFO_fifo_generator_v13_2_12 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_U0_dout_UNCONNECTED[17:0]),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(s_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(s_aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pMIkX5BxsfS7Ovn5pjQ/UEdrfw3hj7l7b1+RF1KWatNouDBTEXI2FTrNi3QXoe60LYk1LfJl4IHI
Gab8pHfNvYQNt0vjSBSYzpCYrw4zyWQzb+tgGzsddr1Z0lk1S4erEauTTER4H5DmyD8KCLykzQlq
w4VJjfkP8l3Um5LWBoo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YQRY87Uyu8CA27kY2xcJkiU6X+NbnIGn4YrpTmrt7VTvY4BboUarkFejkVsyszbNRtUNAxOlN3At
6l4iOMNo+zqNNxkrDNVo8xMNmPbEEM09TMxy2oY3zVsDed84fZ8iEr2COI05ivZlYW9L8sLGRNi4
0hb6BoNQ/e1NHmz1dxtVZlVMUeHxWuiD7dCzxdgIkuSQNs49o3hC1zDC+Pd8XmrRO8M6rUaYgagD
5YNKDImD0K781HWWzvDcJHWfSFc3IanASdiG6TuCj6AO6e9Hy3hR8LrV0fee935swGEq+5bPSM3r
ngiZrxiNWZVsFcEUbchX2Q4SBsf/XV9SmnK7CQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qozW0bQ1R1ZPeJBWXGufIlYyKZ3Gv+D5uvz/eBwm1lhw2KgxP+Xo7RqIgQrMEy6iRIcqqFtaz9IM
OBVj9wuwZmn2LIzTzDET3fAVSGMP77Kex/pKwlbXRyXKE3x6M9RSZghDkjEGE41SNZr+tSKxgWzK
5vie3NHWtHbo+5JsNHQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p6LCpJao7RbTNFYKjudTtzNSk/jqp0TmUJGR5OoMyhUx/2kSiLaHhFXi1bS7OTEAdN0teRmmdlSe
oIxfb4GLq0/RASrpNZXH3ixrd8352u3H+hBWm+1iNr3qrg0S4W6rP6+g8juSmh+Kp6HHDXP4hqOk
3XMAQXWsALDV838sj480Tn/Ifqh/0OicLp8ntXd0uEi25Y4ChBkCBti8oxT3RpMpTOHK8EnrqDJu
y170/KuZ4t1RzBBx3/Udi0yUDrj8fJKhxWFZFBHZMSd2JXrPM/HkAkQX530IMG5p6U2TYOlu1xX7
DxwSQL2Dc5ZY2af4EiZEXXTU82v/ki8rsf/e6Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DnuhgON9fyCq88Esdp/sRsM4CJn6Har7lgyWawZbgSTV9rx15srMthU/DTzyCoXRIoM6BFhwDqD0
/viup+QsSwZnddnoxiQySLxul6LnN6fccwbj9CsA3I7Qzvtf7wphaObsVjTh+1xndMT84Hnwt048
XIdDt1jn4q1pKACtl2SvaKgtv4eqQlcclj0kvWaVYQkhAYHbqOyteBrXJMdeTG3T/qcEJkGB2W7k
r29wgwlweqdZ2m7O6OpgfmfXOZYDriU+gNz/G9mHL4RPJY5/XUxTkGCXwkJPCe31sahtIl+et6bp
fdFlBG8PXiW48Hf+M/378YGU8/tEC3i9P6J05w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pg4KTs2Ff1jfMs1r4Iy+S4PZC9GMHywN3HzGnMdQC8XYfrJXvzK7ZTUt1OtSafXYiHEzjACFVSyG
NKu3kSjwPAGsttNunlkPRneDqeuaT5QMqvrGWsVToZVVvs0U+WuG0oHJ1jg4WtTRqUiiNZNoR8zc
mhiXRhOEvWwJehzR672qo/cSnOgw2hw5pxJueiUSWzaqLcgeNJaH3NdE/c3J7N9niAM2M70bzeTC
NRnXX2JqnGF8l+bIu/wkHGGz/hQHDVvgdLc2FdD0OELkCK6baPo2Zzt7nRsAbRXzzP9CnurmjCQn
ks6OV73JRG5ntJ63y+LXGJRyyU3eveu/DXTqHg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B76XTXXPDKL/X8wImzy9vkrynzWNn2sGNV/Rmt3p0azbCKIdrxW6J8AqVw4p0IUxCehRS8akagv3
uFfe2NiUqxcz9RrCzrNdYqJDO666kS3Wmyqlp11CV0LdzUs2Gz84R2y8ZPFWYiHGR5QVUtH+zjhf
6SHkC0yKmjYHDCTSijQNX9+I3cg8gASJlQvdtDqOkrDIXQwTORFKvn/fdT8hAFSUWhgF/Njv0IGO
C402U0ma2cbIPlk+cTjQQyAFbs/puyj0nmJFW69pIhJxEWYogPO4rX5lazsK+eCYRJvTuIFEY1AQ
WsACrViDBz/7gYt+PrXoMdklrX/NQC8Oz2QUvA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ntpHLfDwQtAPje/cBR38yFIc94+DcJUOzyFA/yKmvpM5Ud7IwdcM7zM+gRfTZAQJEkk+TPJUeb4f
2tAWQpDYB/fb/1zJYDx2K6meG034maYqlwc6EDwfzy99t9bzumh72wRi8x/HaAnqjCMLHCrONF6x
pU3s6+yx/BF/ZkB0ApWaPtOft72waanGS6sWv+rLC7W/Y7B4+l5COj7PFtRSMkHx4pEU/YsRmLeD
fl51Ewt0dmQW1xF+aoTxP5FvXzsRhIx7IrtgxRzEjngRAQHgwaastI3axnL9KaAsvumYvCfbd2QY
6rjJHqv7F1I1IVhDjkRel40UKec94LCpR4Xif++Ncr3Wg6Z8DmH1LoXFZhhbAZo2u+oUwZHqPuvY
m1JMXCWO6OfGionbHetUCeDYPqMu6wwb+lKzOCsz7bN6aKMDqQOQHIJHi3ARkk57CcClWjsRBP1s
pe9PU49Xk2WQuSxi5tMVsPv63MbCHN/7cxiiMY4usR0zGnk8SHWhpEBb

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a47+6msQVDLHiwX+KMbTVsRl8Lef8M8tae4dICFk1c5Wp38TPtjstNe4sVFpsPFedAX9Rc2kRli8
bbL+O/qTcdVwalcmaaRQ3TDj+bD6+bm79K4rLJKTGikA0aBlAV18D+DIZqRDgPiFA0asl4A4dJak
OC5hSJRUqekf4pcW370sa7Y7IAcqM/ABilAfs42woCasoM/rwqHoe7c4+Rlooqc5Ol3GJeYuc0Pc
YTPfR6Ks+op7tnNPZXELxnpImyV5Y27EAibnma2fAw/ObrkHEaNAUspwBS6Yzi5zUhwiHT/aVhqH
HHSi1RYDSWxpXYva3Ddikx5DGjSjCZ0mZy1stg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FB1BGsvXsORVA8EaQfx5c81lcAz0UUUKhQ3vCXsTEGwLe6VH5+iXlUI9KZTuwv0Lx8jozPomobRT
M06Zjf+QnMOgI2bbDMqSLpRLY8ytn2g8SQ4iVLQ77MJ1XDHmjhIZcbwp3yM/B+Nnk/kFHtdAIief
IKnm+k2UD8PA+C/Ceds0kXhgIri16gGqiZkbhcOXFHJDt6UoRn94Pki11f0cXNo5wIpsspEuiNlr
CYAHPvx0J5g3+/VjPJgI7jbhKweAJjGJG5xaGKlER/jL8ffHNr4Sy7tx78ocKiahucmT+ziwMJD7
IxIPK2ndqroprlCbgQMdvTePJpyB4vekUA0+Lw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QT99XrN5BcDiszKoVFVRLEkGsDFUMdV0bEFQGPOpjQjbpQogfFYiDVcpBVKFLnQbs7+5F6jPuglR
YuJFvnI8ypPAsbbbPrGSvw8nCfHFJdAUCzm7qyWwEB5qrPcARmcnPuCfFsfME7wQJDTHwZXKCPXb
knoy3xGnjgTB2t8mOtcjVoXuDGvzX3H5xVd4N0YF9yTVcZeZFRTIZeiBWQH0M3/36a4RmgiYUahE
4EFtTIpn3n1Sk5P6QJEwMBwQbjH0Ztwyh9isiZxX0OjzUY3KCjXnm6dOyZySuskwGLQJrLbZ2Kzk
Kd2/QNbp2YJAGHyDXIGpWPWPjqKUAUpksJlwSA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52768)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
