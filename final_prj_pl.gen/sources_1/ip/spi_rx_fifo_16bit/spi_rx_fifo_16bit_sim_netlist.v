// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Fri Jun 20 16:43:54 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/final_prj/final_prj_pl/final_prj_pl.gen/sources_1/ip/spi_rx_fifo_16bit/spi_rx_fifo_16bit_sim_netlist.v
// Design      : spi_rx_fifo_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spi_rx_fifo_16bit,fifo_generator_v13_2_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module spi_rx_fifo_16bit
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
  (* C_APPLICATION_TYPE_AXIS = "4" *) 
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
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
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
  spi_rx_fifo_16bit_fifo_generator_v13_2_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52336)
`pragma protect data_block
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
7wX1elf45h0wkQ==
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
