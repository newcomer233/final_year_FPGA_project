// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Tue Jul 22 21:35:47 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/final_prj/final_prj_pl/final_prj_pl.gen/sources_1/ip/spi_tx_fifo/spi_tx_fifo_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *) (* x_interface_mode = "slave slave_aclk" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_aclk;
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
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 84944)
`pragma protect data_block
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
Xc5iNZhf0NNrwDnstiE=
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
