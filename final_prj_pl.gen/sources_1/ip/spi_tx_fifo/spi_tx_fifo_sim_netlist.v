// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Tue Jun 24 14:37:57 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top spi_tx_fifo -prefix
//               spi_tx_fifo_ spi_tx_fifo_sim_netlist.v
// Design      : spi_tx_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spi_tx_fifo,fifo_generator_v13_2_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module spi_tx_fifo
   (s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *) (* x_interface_mode = "slave slave_aclk" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 slave_aresetn RST" *) (* x_interface_mode = "slave slave_aresetn" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_mode = "slave S_AXIS" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_mode = "master M_AXIS" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;

  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
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
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
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
  wire [6:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
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
  wire [1:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [1:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
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

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "4" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "4" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "16" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "2" *) 
  (* C_AXIS_TSTRB_WIDTH = "2" *) 
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
  (* C_DIN_WIDTH_AXIS = "17" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "2" *) 
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
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "62" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "63" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
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
  (* C_WR_DEPTH_AXIS = "64" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "6" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  spi_tx_fifo_fifo_generator_v13_2_12 U0
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
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[6:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[6:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[6:0]),
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
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[1:0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[1:0]),
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
        .s_axis_tkeep({1'b0,1'b0}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b0,1'b0}),
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
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module spi_tx_fifo_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 84384)
`pragma protect data_block
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
e1i6PTpO3a6t+/+6PeumypsZb18Q3OjD
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
