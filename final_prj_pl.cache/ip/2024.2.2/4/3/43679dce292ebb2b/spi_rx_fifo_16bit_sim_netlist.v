// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Fri Jun 20 16:43:54 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spi_rx_fifo_16bit_sim_netlist.v
// Design      : spi_rx_fifo_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spi_rx_fifo_16bit,fifo_generator_v13_2_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_12 U0
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
kuVKN9J0fSw2ag==
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
