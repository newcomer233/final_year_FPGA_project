// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Wed Jun 18 09:26:26 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/final_prj/final_prj_pl/final_prj_pl.gen/sources_1/ip/spi_trans_fifo/spi_trans_fifo_sim_netlist.v
// Design      : spi_trans_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spi_trans_fifo,fifo_generator_v13_2_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module spi_trans_fifo
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_mode = "slave S_AXIS" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_mode = "master M_AXIS" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;

  wire \<const0> ;
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
  wire [9:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [511:0]NLW_U0_dout_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "512" *) 
  (* C_DIN_WIDTH_AXIS = "17" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "512" *) 
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
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "1" *) 
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
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "510" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "511" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "512" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "9" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  spi_trans_fifo_fifo_generator_v13_2_12 U0
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
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[9:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[9:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[9:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_U0_dout_UNCONNECTED[511:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 69360)
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
