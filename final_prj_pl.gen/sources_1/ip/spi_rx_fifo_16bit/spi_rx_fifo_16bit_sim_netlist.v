// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Tue Jul 22 21:35:46 2025
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
SxuoFT7/ns2IbA==
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
