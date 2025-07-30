// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Tue Jul 22 21:35:45 2025
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
WrNdKlpgLc5Ml9hRj5r0uFE5C83VOrtkg+/95N/ypUBdcadnJbHt2/zFcBgyCg39sAybIFsU1Le2
LCj4O+DRlGlEEZuWCyeESssgeuU6S8RQlYtqV4b3Q2YMZSnOGoHIZuF8bIodPFIpN0JgPH6JIBS7
vFb/TpB4mlzWRwFs4OqiYBWKWqg6pP4pHF8adKK8TJOgPehktIdygH46eudKyJVOzPrMjZyYcsKX
bi+cx63aDslwPrtRcVKxpzp6X9TKxS3nDpcC77q7PosTPOZIbxtrn042J6xfsSNLOx5mTubRBQyS
wTHwe0w+USewef+woWJRYsqeweGjT4B3938PdSB9cDJvlAzOiVLDHjIPdrfGoUMzZ6r8/c3gyA9x
kMe/kdYivE0oqlZSFl3+RC+kgoC9i667VR2QTX+p/ThSd7uPDwjml9wRVrzMwGDjhc/4rpBJvnQu
s0+4Rx3BfBMvhU4K6Pcse56BdT41y/KD4rX7BG+vxQG2DT0O58eqogplGW97n+TnMgkJmg4uUF/r
zTsEcgjxnH0U/LaAhYG9WhxFIhnqSLivfeFzqLU8CJp343G8PC9vylaOGQZtQv0EINUqwon4kWBX
SXEqec93WMgJNEpaQPlwXWDm5TowdGHioRxUTYFy5iT2iEA0hciO9PhVYRMDSDz++Ut7vFF/0iDM
n8B4X6vV0T0XlZ8SMLrV3jACMD4lwm9iE17LAxcNkolzlvpoJbQT477m5mBFhBSREa9+h47OWDWk
b4IvNKtow35PTNH7pCK23zYksQdcm6x2Cw5GjHGWxVGVjlaifo9B8S8jcib09PguJDwB6b/pHUZW
0mGtAbnhKt4d4ZZ61mlG262UzfwfFFu1ehOd0t+/9J/qwAydfNHIy0qPzED6ZQMA933s1LobQsP6
wYgxOk65+IXTw+NjUHw1ukwCRz0kDTjjTP64ltIdVd0hSHJKHfTniX8UA37uFFmG7oS70V4x3Wnq
OsEXkdvJ9gw0+66IbvsCQEU2NejeY6s1le7maFNh24l/+ud1sx2FUl/kXSzoL4xemIeBK3jjPnhK
Vr4rKS93cc7cehc9I0DIWdJUIN/R+CHge9+8LOlPs5337ogJXuQm0JU8Y9bDz3fWLiIEpjqF/fqO
gL9GKs/fYQ6qyEWlfrRF9R2VeuZHhnV6XGPWMyo6D2kaDOkK8aHH7eN9OBETwmdyVbvI/xnmVEY2
wxM7DZSOlz0LvMbgajvxltywOEaUMCXaQD0t56kAsdDwFyXPC7zuoTJJPd0cp+8K45Mnev3Y3bEO
DzP4RPAoVDlPVArH/9KKDY8ow9RPMPKv3BXLDWosSsGSS4j9d/jnK9t2VQFz/fWyOZSnIyfbu3I9
LXAsFv7sp2nX92l/PZWo1vEcc/v/UQYNhVwDV7xNEIx3dWNexymjL/dmDgSsTlOyzrBMKUh8GO4N
DRucl/bJiMLtgXhzxk7SmaUQiQriS4e1BbacHBGszOeMukkKfoYd2gZbYR9IVerMMTV2PDhBX4OZ
rsiWtMV336rHqTMfNNqOvw5eosX0oBvxnN0Y+UHKap8gFC880gq+yNB3hbKHEa99I60iQr1r+Npg
34Xv9i6VSq8qNwIzeWuSQf5zxvrFLQ057hNuOMhgJZiaAl7u/pd20TrJZOxsk2TVn1J9ALERbTk+
XKOM0OZUAb3dZCBU/eVA/laukyfop/e9qGXzmYnVq4jeQuiNBmSWmToMkyDf1CdsZi5LxLezsTnu
d5Q4KHbTh8wXwkKnOLw5kT1auxcfz6xmtOdCfjprXeldd6ljel7RVGwznasMPI99Vw9I4U1vZ+yu
dy8m4uni6dVOEuNW/wDSwBEH7uHy+7QC4FhoHWnmz1EqpRA8raVA+rPEx8qXtSqg1e3Y/7RUv2fM
TNXV3y68nK3ps84wJvKRke2ONMF9LWUTOeJq09QKtTBAApg/qYTG9luly1MXv87FQ++MW2d3FWG7
SfMkl1OFNOrTU3yzAKrHjY4HaC7nd5COWFA39qX96cgEAQsdJO2SbFz2h6dtes4uC5hVna7FHjke
V66t9qRHz4KC0KadXUdSiUVkU+YYg2z0Iy5h2rstYbxBuWWyZ2g6deyDEb4LH2QKsXyulhboV/Sj
NWdMUDlP42cxttDyrNmj5S9lzUvW7hqWKYyGvlD1PIVNFa0WqliBiZ/YrC3gwrHKQysgu40UbK9A
9rc+ZjgyiyJqHuzM9QuuR9uq1ttQMR8drYkD30Y3tjwzStm4eWG/HqYNpXX6CvkP15Ldw5bXTFYt
ChTypjMmwr8BQRQQXJIFzk7WscdVglygjZ1bFDfxZN5NPaL6+JO1tDhMesjnYDGhSoJo12tbMZdG
+yRmJqe3fTMXTmHb/fDrblG8ae9RHewLao3nm0NMPKiVkUdWIcdEiWCxfgjL6xhHQEf1KEnSvCDr
BNWDYyepHyqsXurJ8FwwWY0JAqqUnQOiTUXjkxubK/THS7fZCd22CTYUEP3pkkkw2eLS4oYYjK9M
gEJAS4153Vvrbz7HYjSVBzrB5E4kQ3Cb+mYmjqV6+AXEsKmh/1HI/tXCnh8utH+/n1q47/uHcg/u
tqi3dnJ7YgHG1ME7C+Gq1HAF6GmUm0qb/nPaX+/imnkTUNFN7lkaMByynR+VrewBzNB1fWcU6ZVD
1LIrse81it3vYWBOn5y6U6Csa3Re2udP88KKkgPZX+mlyaPLPcyiTG3nY+qmC5BZkWXnWQboApAv
Z4EbxRtuntcK3u39ahhKMbK1AzdBm9b4fXudmIafXV4VvvYPTyDFbxJNb9ePtTk9tju30Bw3eHdM
H/1mMR8a065kFNp3Y05285iMKCosHBdSs72Mb1+hJj6l5FYuPo0MlaHn4vbAki5NZs75DlxnD9NG
9RFxeP/cV9gs780I6EwCOdxN4DnUDuB/GsJ8crn0Qq9Mp8XhFXwxV4bVv5aqZD7h5AoPg6mRcR0x
NNcGytvcRiMr/SprsszyMC/+YCd5v/BfpcqToO93+TpxYcBEiSdQ0YfVMEAE2+BjVF1x48h5JSlt
yGRjntLQCLBqRGuTii7sInyPvybL7bzZUZQy9hY7Z4iGu5xjKIlxEgYPuaI/e6kvAKgnASlK5xUG
ZIeRuIWgc/ZE7Can7N7NJCF5XC+ixfdCef+uupC8vhKZKUBC6MugpmGucwe2OyCEwAFjZRVXI4su
G5/Z+Fbk0WDelgP+IX4bV9kurXm8uC+wA13TvYjWdX9Lyc7Yur+QbhJ6c9rupv3Y2mt/uDsgRkXG
vslyQ6FSWcbFlrQ9NsPJond82/ioCUMxMnvAJVP5zAFKFAxjy+ljUIJBEaXa123Ba1MtfmhcGpfQ
qp0PDA1sT7igD+fzaiC2BKClticVKAhHWiMh1rn2qZxnbV8wCWB1kg1vIxboTUuT+blh1MmylR9E
+V9hwkqLD1du4QDLggLI7dxF4x6MirULyWyWvAc3jxTAvPpcyA5iyf+zRK88kTsGELL06eDHSASB
Dk7McPjf27CN7dmSXU5UMqSKQmzMIe/LKfTODskXcj+95X5diU0BJEsFbE2kW9Z9Cn0xA8ufAEGw
F06zQoX2Ylgbx+McOqqGoCM5Cr4s5d6vsCOV6vRxIQdrAjexTzFyVJ1SB7nql96FNTBc4O+dkZTF
pzsWL/dzKAyvK/GFuCxKjOjM6I/POT4xZsYWHn/JhnIjn9MoDLmnZUDIlnjt7Orme4p8ufXneCOd
nwYjxCqwo8BEpnRLJo9JSti8M3PU5zn5ExL6PFqa7Mh3cfR+T5mDTsXyjuSAyv6XZvPi+MyX1Mqb
Yb1sWdqy1tY/2h8XqHX38Uz1fATBMsJgK/HRs4kcWsb9G/EsHyanSszcAZAr2M9Em7F1kxk1lDMQ
+CfVx6rV1tJPQfCDzyA/w0BMgevlRq2KfQhuGm+c8s/jfdKXp9uUeX4ZTiYlgCNs596zKSbeIae7
fS/5nJOxZq0Nd8ZtKpiNKqAPediklzSxMBboYXavSUJVTTQXrChgdKjQmTv/QPg3wHBaatZl7P6Q
a2V6IHVOQ6tAieDucRLsVdVSOOeUm1rFLCw7bJ9RMu8s5n7PQQEA4HRibi/5gCDwCFHFlpXW14aB
o2pJ86Ulw/XzKOtV0qSB4h1bu8NDUjuGn7dkZ3PH2loVukQmyRO8d59EAPkpcX2KpLkeL3L02Yn/
87yFZj29tFSVOozjzp7EPshaJgBsUzTubVLTOzKtybQJ9fV6uCGR0hYVUmgIJQB+lx1j1H25s0HZ
m2D0PKWSYnvd/1qYYy6v3mOJr7UFwblDS48AHNyOUb7RTN4/WGyT5rb/0JIoLzX1GxcETyCL0XeJ
vMC6XnhWFjzr18We8djsGE2iIkAjaTVYXJA5y61dcnQ5Slmr2UM6T2zqIAb7xRcqkojVyOyRN/06
ZnIKN2YVKeVVZaUFpesSXSY44u8HCZd0wo9Xf9mPML6fuHP5fa544R7SVbPAqR0oWVPNirVpqh2J
SqwbApz25Is2rkvHbR/Y2KqwrkYCtVgP7HCQ50DK6mKxegjqQVLV/9xdgERtB/jIT64hHsI9oLmd
flx6x76yJwSippi/EacUaeng8hEj78FDrTEZ1ngFEFUU8w8+6aWFYDjgxBn9kXzTos0aN9ZnZD5K
PPGkUv7gSOl2GtvThHJFOnYOWlkLTINQ9CenLx1B4PlqWuyKx3M4JPbK0WP1cw+Os84rjpnzAzmW
r4R/L57b8xeEhFYbzVPgpoEFjUXZLbf/bmCE1KucdAIJbp4fy0ltaRrZWd1GK7AUDcTolW9z89Ci
gEgTViIuUSJj1L7pev8qcHXhML6JGdHm+j8Sg3Qlg4ryhaX5ujOqppeVCapmNuVrUVo8xzdcZrtK
y2C14DGj+CeuW+WtYUMde7yWpBIYbvGXvNDP9Nej7AFxNRFe2/Gjennrg3fpUzVTz1DcIDJeqbH7
wcuAndCVpLQXmkPaY2Cp791WlpAx/xZM0hYqH4Ue7hBej5RkfbOLvbb2+bzVPmplKt5cCbl+hW9P
P5iQe7rxcbpjzdEQB9bGYsyzWabMmzZa0DaZZ/2VlOsIn+woXlngHhvGtX2qEZbzWJDLW58bXZpC
QkWdzCtcNKf58+P69JuKE3YRrDkwyquFd87RauH17kSEpIW7uEhf6lFGa5ebbPd8jIYrPvZBB62N
ezNXXNG6+Zyo2Rkyd8V8Kdf0IIsykiKS5HJfzmQeqD+p89FOWM+yzOg98ICFz8N7AOY+6S9OWi88
S7vy8Jgx2O/XGFd9cOG704zwLCIoYzreoKmH1pQS17ezan46B3kQql5/e8C2kfZyabTWBnPuYfTT
Heqd2tSl8M3QuZK/JKMeV9khvrbfpXoxMQ8YZx+0QD/qBiOluv4nm+/ChOJaHmAgTTzo2y9Hg+I5
yjTUuncRi77janCyhvD8XWgN9Avnz5plVcpMexncT4kqk5mGFB0pKk/ADwHe6veE0t1cRH/bMIp2
yWlTKCwwE0EzK05S2K3rEtvAIj9FnOBB43zhVKX5Oe/D1xqne6/MQGIr7uMY1WFt+MH3nupKO8Rl
ayqxe2asirQPVbzp2MX//WeTxadWKH3ruH3yau5MiVrVnrVnh/SxtXjj0HyWo1Q4I0gIKOJp5ATP
oV5JYdTN50P6zTL7+kFmHIedxF2WBpSWTPBsCgVT15mPpJlgmtsgV/G0IX6f6trq339UPvJieSOi
37yNOpFMaR3zbUnI5DdTq+UTIeAHGpsXwG8jSjbXbGFTHfJZPjQpqaynsRQw45u8tttEkg9Iny7D
t9db+so5vfO33VIf/2RE3dN8z3gEXBz/J3mwwdnn820ofpHAh42ncCWh2hw9KbUJofIoicZAqds5
yb1T5dXPGLoPzrqzr/+AGp9SGVs0tgZiynptWlvgDKcF+Ljvwv9IPo3VOOzt0w5Beit/pvxJO1eI
zwxDlcKR6Sw/dJsAHXhE1F4lPxCqjhFVUX5G6KBp3yvPHQvGGRAVn/CWeUje2y2zuhHVgD/LGmdw
Ut47jWrFtp2qm/c5n9U2Ow1oFK+PfE5/g9AHUmfMP4c1QRmde7kdMnQY7tW/pqA5NBVt2FyDVjkw
4RgbksfQpYadeXUH9TuYSrCZO2C3out6jcnzRtTAD58gpRmWQZPra6HlsAM82ycAINRIoKbYnWgt
bhEOXV9Iq633PXI++3C1ybG7fCJe6jM3/24mEuwE0h9PhR9jWxm9tPV4Dp5RdLB+phks9sL5y9fC
/L8r5IyHKVKDCTqRUARmgXN7VNXJ/Wokz6nHdQI8UyvRQ8PqNGkzfSD9YxlSLZezhCxT4mNUk0Fg
VE9vJNosvH2TG5rOvUDYPA885E0gphQ+IpmFW7tk//sWlu3OIhe9Cr78CXeeh3nC3XwxJ7w9dnMJ
djPeR0BiRkHznuWEwnxz94nI+aASCc+3pi7hiYV3iMFkg+zicrpfnRQOz8CpmZcL4zjEQoV9PcMC
YVgq6Od1uZPO05Ff+HOpwglo11UJjI77M8e49WUcLjCyXKYPyEMhKQGJw6ZCgGwdC8so8ouI25mk
gfPMvf1ZQN8YJjZ5F21y6nAKfyJXFlV/yKZ8EGjkMQ6o4np0Zl8R6Fm72SsbluGuL0LbO3dfmVQC
tsORXssZLsS5l4dWRXcjXn1OEZS8sTABlFvgZ/hiZT4Oosvwcz8PTknqVghW2gfzZe838PMrfzne
vJPuTJhxTeJLSuw84FZrgFevWjk/on0BxnDnYw3cpGjQXw5MKLsKYkqDqUfbpKcGwjI32mJPZafw
FzxZjGxypWEDl7nKfp1BfG84NbAhglJRoJCDbhUX1M7+rP7LPjmCvTc+nuoeAes2MZQCEV4D7zoP
w3kgVOn4Oo4cTD4smvwG01sD/TP7R1h7lufMG+wQVe1mSCnvDLQbTmvVhnluQfkkgg3rUaEZYFsq
bddxbwwtd1EOT7VN8vWcvAF4h+xw2PZsMghoj08tKe/7xWgMWj5DWX2S28owqVeUN+M9KnL06Orh
0siLllKmkO1GmJgqSklHFF1xNgpcIKTfPuLNQQJCEj4KHl0lu00HHmpddfYLuUn4n7h6/pYgrFax
9S9zIcl3DD+ZXpQYc6W7mq9lvvyAJWUVUiL1dF3YPL7qutoZ1uP+6CyQyo/DG58vJgh4+fU/j+7p
ubtiLlxs1HT+QDvKBU7fsJ6j2u7aNA2JYshnNgvIkgK9oy2IQaagMnTHhjIYbPdyVYgg/Wd39nt1
Kz/yuj36rV6KmlcYxzUaxNOo40JZuWO7vj4m9m2w9pw57aQ0Fq73hmuxABn/SryuB98ZtK09J5Ut
VCeSVDhZaMrCZERfVUzI4JYcJj/Gz5TJnFxI5KyU0rXyeeZMZbbnPv3Broo3m4FkuSjONNPBMWJT
fc2+yzcwymWtLwrMaHBDcLT0cSFAQoSZNswNltD2zEMwEClw4oVb09sT3D87w2O54v7bH7czSV+d
Yd182nhNl7B+O6kWIljDMN9fFMgyg/FicbJUT8E/vdm9FOzZHLCcZAhMHk7mbvHocwug8etE6bc2
mS5OIAIPL5kgiZDmPa3sd6lIoVTZYa8GKpiTVCn0O7CNNU42rQY1r7Y0JUX9YSslmLltoTziY4aS
ECnA4gtZgOhvttsIJnx55jl7fEg5O3UWBGDLArhZrN4PC57f1kppfBayk+ndeOHAPmZp5OQett1n
ngOWWpl6cRgLpXsYLRh9okmxGCS6D220WcoBGCuefpGEf4DZ1c9JE6mps6RUtBl4Bh20PsosRi3m
g8Zpd0xHUEHXfo5D77rYw2zvWhiOxmH/LN/d0B+f0AromYtPp9UN5mNMAoYY5Oo+3Zp0UYoMmrZn
aeQBbwX+T8tOYXcjmkUm7xKYuKd0jmIWOIFlXFQexKS0EigPevpatAvPX7ENWur5sPaye4od9mPj
fEGJr7xpjFYa1Tulq4We6Gf31u7sLWzY3Er4cPF7ZRtFvrpmJcdt53JwPf4ql0x1d4oSEzbMC5cA
+sVhqNOHKzMyf71mWEiq9+WhAmi7P96OEH0QCknfcmt2b+MlY1lhMVcaGgPVyYzAxWGJsxvqmL1Y
BdQE+zAUECavdt1cu3EgqbCXzzQfyUGooKSELFDoBNztuVLTfq6Tr+kGy2qOovpaG+w2yPa4FJ08
J3dyAnTz6yQHZnV7fj1H3gn1noSqTyEoQGW76A0DTQL1QnGmkd06DbKrZ1lOxf6djp+pvP7bprBF
Jl8rraNkq02w8eWqwYHSE9x1MBJdlGErMv4muBaxK3BpMvWhu8OFtcVvYrE9BTNN3tWvO4riIhk0
Hdyuhv1tY5OMlyhOiXaP9KOMxr6Xt5zCKxTWJktw1Oif/azjP2B3jI3R/CNAJvlrq+ZH1ZEERZkG
lIABpgG6+nFhsVUkVIR2obscspQS6OoyrecSUdrYIgNA4n2bnj/l3NE06XWFG6TrhZy4BhZHQpxW
W4UeNhs37nSqpfY0atZkDNimvyd8pZLEx/o6yyuYKVKnAvZIZ2XwqunQsxFk+blN22eSuP3qiGb/
xfC495QU6yYblUNI9YU+22FyWqEy+AoqGLnqRMO+ImN1TxHocSyznSfw2ls8AI5Rpjr7PDe5tJX7
2xE9JIbMeYbO4QpEjtXrBqYxPxFTVS5IDFWbNVwdh2/ay/jxuCf1WUSASWQYbHPmfOzbIQIF0z3Y
S0h8ZNbH6UL2raroFMAIhrWzY2zAHqQGAMP0k8aWYks+KkA8KZGHGYwwDZJeG2fjdhzNVkhr1ryF
9ee2ZbaQv+4krdk+TvlGKF2yufyO5soB0Ss65NnVDPOqVfzPZrY0jpeHf8QdbbqoyUdLUC7f41Mk
/sCfsy0RY99sFpAz7fNbwv7aU3BpksJaYunF/aBmEcXsrwvt51/9gW42eesWQeRA56eqo4TCxx6S
uqsW3+Q68JK1DFuZIgVTGd071cWkTikFBx/mEqZ0ZkU4vV2mOXDdBo8756goT/bjh4QgYpXqy4lb
QdjD5nPt8KIUTdK8PYAJKeK0IKKbpC9K8zwzfQf8FPed4OL3VfVSjqi5wjCBe4SgKDbKulpdxjt7
74aWx0TxA26z/0jr66BzIgzvwecriJxprmPNOd8obmK8H+JqXVVKDq0CAbi4nHVlvKfQhqNJE9Qb
DRbdDqn8ybwtKxh4GgXCNDnNksRK1KUJiOnDd2KhE6aCWkyf8xCzZp+Y8PH38anzaSewe3tyMoGF
VlKWeIPeKQGa3lfs/PHqK6ULrp2WDI0BSV8iyFTuNZqSo0fimpZOqn+slpdSvceZNvXB2ZEumOwN
XmG5ltIOYSpqLtgUIjlszSVxm1pFR/KqdZIujNh+2Duy+8I9XJmIK2pQX2vPWanU7QN+javMVzsx
3ssHcdWKQhLueFwUXp7q7Yb7O4/Mf2syMMbOtsmBam8TAzLnNF9ntjHIkBPUlKucNKPLpxzMY2Of
b7qYWGl5vaF1+dS356MCu0CoUGiSAbDgwmIIXWmjfviVeKnCx4dJEqbKvZB1mM2sWoPM7pL9zIkG
1yiIIPhCCmMUBorgoxi1gpugEbRoW2hFnONLtjhduqqHahkyum3x5BNkSx5zgSPkynjexWa6fYyc
ZMjCaKbI8IxC655Vp1C4ZdO7X/WHa8gSzI9rAi0utkeej5fYl8GQw0Dci05ICOEImCWjXwMlsubd
wkxkof4OLaztGxe7lTrpufRPOBEslJ4r74pr2nJiTFA8uHWmsjgIDgoJ0ZVIIad88sYUiSwHuQip
G03KaFEefHVW1psD5hCgOdhOiWak227aZBrb1cIHEr0J0JNUL1IvGvn2VwflcfWx3wCULHIUpyrB
M7oCfCDSCiG3ttuoMepoEmUaA5bEQ8RZ5hVri5dPtIzecnfSx9aDRPLsJJJbhGY4tpRrKrGsrsAs
BfS8Anyiiqb9g25696LjlTjs6S52sgajnfupIEHivlH+hsGoM2Tnf8SqwVu4S/NB4n6X7aen8fPi
Y5Qx7c7aJCsRE4vTwnzSbN7ldkGQAwTN2Gs7PF1L/acz6GL10qr0uMCq7lkyNDF+YIjZp2OF6LEP
RIGwLLySlckkguLY2dbGwbEMhGUOjEfvir8sddWUpMPcJcxe6YewN05+YDhInTfayJCIfB5c86DO
3HyiHeSL9cg3unGsc1pJpDmc2yIQoXzwo8eZNMWY2VfO/miSVqsjqy2/7HSzac0uHjZmiyc6AwSv
8yUZDpBpZzQJCu6sevFZs+Fc9hD4miChMp0p7THkweID9DZRCThmSinVuYxXwyvX+ESDu/loeM36
1fNBpHIxd8GYe62vGGiJHv5JRRbWgxd2Jg3jYeeoZMqroEevYUSp4xg3/gJa93XBIpeQ9Q1etx0u
9cbKgiTO9hbfZPVqZdL7WHQxNGFHdnVKO9qtnj51uoCVqEi/RuSyd2vTMIBXPZQmeLB6hNvZRhEg
sZHOI9WsdjCpzWD4Oq2O8z15MBVMER+nAeb7LLy3rmBEa4zB7BFOBgTwU3OAYY6TJOmojax2C1hc
voD7K+FSAZHUujpWNPSRBmcy481FyUhTSQFSg7RIUNzrVnyDsOqsBy/3tMTH8au6x1g1b1o9/eeF
Uthb4TFNKeEat7BPKDuijKOSH5TSKJQyFyXmKC7wttSzNVyTjrJ0wlINxiT2x/tnbp9qnlfWEKfI
6rl2+XWMxRK01N6q+PBHqAjWLStHe8qkBSXoG5J2e8zURZwcTFz5agepQopDSL6ttQxuyLNdxmw/
YaedmDCZfIItqkjsejd9E/ai0hi2UHbJoF8UNtPrCFloaNtYLgut4i0uM2AWkiIxf0rd8CsAMHuQ
T8r3zp5iu2zpZ9LfEz/2rAIko6UzZldebJ7mH6qrw7hxlJZaFKVPRAOQwGCqnYCN/RWbuyX+237s
gw0w0OuUWjO1d+rxhSO+k3cjc1fI7zCu6dNtQVXeG5JZGoZSK85GRJMxwjN1QOKzGFDCMM1nBmjq
Y+oXmHv41poFy/5o/+oagbbBBSnghBWgkWUvuvaX7gcQi3IHtXe8qAfl0Rkq65GBsngGgbzym0nG
+8jJz3hE8UofnoilSEDyv0//Y5IaikOP7rkrVd5uKnfQF4Bdu7BBd2XU06VjWRlej39qKY++oCUE
nnUpE8MeYytJfwOXJeKVX+mv2pkkEwo0j/ElMMRQ3YK17L5lv/fdxtTcL4LU5tOhtwnukWmUTqfO
NCXGNK5xth+oLTDV7lMWMUWuIQZ75Lb0y0nY3hjq9j5eMmicV3XMUhKJpFCCIRkVMgpJZzAHMatA
OdcN60uABA4k1UMprxLaKRV2bGOo+u1AmT9r1uojrB1Mnvr3kp3MVnotjBnsu7n8oDIseL6Kq9aU
gH6+aMUMpvs5KX3+ZLuptkC7f/QqofOrUhciQxDUTFlEtrTKhMknh3tAKLJ+5FwEJu9kpzHJayUp
5bCZIRI/+tPTpJdXjmaPv4YVaTTqvnSICdxNymPER/T5pHuqDDvS1y+R+VA2K31GKvHR8ypoBlIl
GELE88U/30vqbG0K/4KjOY3WrS7uU11nZp2QMifzY2Y7OO1SYIbMp2YeQt5SeDo3OZol85bLBdo0
3r5b0r1VzHAdO3j0W+RprQbx/E4wg2/dZip/4Ib4t4YwQKoRu29L3EQqQ35MbtBd6Vu8Qu+V/azA
nmKrUVH9nrllD9cAymsWp6Vkq0Mj5yh/zRX/KW8vLrBfjZ997V0btr1xOWueHGImuezbOyCdi4DB
KtF827ct+/jzKR/Q2bWiYZipPZmTgBdaAdfLE8DK8+ZrruC/mK6qA1D1Y7392NvfPqWb0euvcfkj
/POMCiwDaI7HehW9rPQ/N6gSoB0YLvkZ334Wp95kO4KCqnH/u/c87usvn6V9d7FbM7A2/hFcFcPA
cDbW+NNiSRH+DzFnmPXFW4B8Rc7qj31UHKmbsPqfeHouCTe+LJXbGlTc5UgrnCWWvs8rbcdQ5VAo
Gg9n5uA0xVuv/yiXv5KuWPwMS2f7NlCUB7Ui05EwX+MKaAGQ7JS6LVPcXBJZtxTu20BDGxLuTNlX
Ut3RdndA4HKyj683pYA9VAB3fhD4YzLF6iKZlnWEjiKq5BiaIhRTLZ26kgEAGaVCUhJfDwv8R0KK
k3UGfkEs818ryMly+yRVGchxaawhjnWL590jyIDTpeDkqHVtFBTdATq20AhKlsUoBtxzteLyRh3R
YSGyRyCR/i20CPxuSadK7fYnl7MK6VcAiYUkzmDb69fyWaLqPV7Vsh8NwVxNP2vYRA77YgPGDX7D
FgFL9Pjv3CwiSfgm9scpZILA81IFHfJz3SHdg+xRk63LuO9eT1hkvOA7LfmypIC/RyMXHi6HTTdg
yp8kSvCQsS5/Io1jx8dY0yBDznPHuFkC+cbwNsuJYZk7MeY9oSiTwfjQwrZ8XZQq/tmVG6Jn1MEg
CsZAWit13atvFvgIjJzpi0TTiJtncxcu2DBPO/7ujqQ3M37W16HXhDgNqA5TVLT426Q8D7NN21N4
ZZGjrgDA8Vli8LDxfRavbeZsIXRdQIvIS/d/AQusHzgek8TC0LVSqnxvTQ7OR6JHBhhZZKPs4omP
UY3jCkWssy+6KzHtu8tBblwjmgcjtzgJgKkOSa2tmt785E2Q37+3yU2NhUbTlXzPt9wlgw1uNYnh
Fn/v2ukG3l+leuQhX2xgpxYNdDWcS20XJ3C4W/CF/+CFI6qyOfTCSwogHMfNVrwf+aiNmKqkbun4
ZmjbD5ohHpvBJB4X2zZ66lsYuJJQHJHgXl7nauo5i8xUHgDFUdM53756w20y2LauPZsr/4Gjxf/x
dq9cckT/hqSB0VVGQBRhU2MpO4LAthBRUKkSB3CxELEGfUjycxlvIkMakC8d5buDAJz4VInPHq+I
BJixqwp3br8S5Fa3OY/BE9E+8xA89BO3xdyNtJuhZWwV8BvFP841goz3/I3uX9ZaeqX0MYbGsXQ0
QscG6vf3Ch2jytoHJg1le2SqbuOdzGj3u6H8a9u6JJwfTfZh8/VUa4UA4jlpwutlxxmAEGYKd9L7
2qn/9/Vx1PdH9lx9eQXcPpQCCffaEXQ1aQUNDjKQNCGu4ITek6Z8KGyYOkdsxj/Vc0LrhbJyZX0G
yoXfO3MQs1WbjQUDXOYeqHpXfXsCPMKlQaU/P/9p3hWCS8hbPemX6E3gjT0SYlvkD6o0KryvaQpw
dFDtOn5B+5eWFQrmx2tFhGmX5XuABYk+S2Wwir2ymLcXbYyPQDYkwrrtYfKhkz6Fjtx8Ldiha6oR
It62oU6G9aKLYO2PLtTpJ81d+MAgIe0Ef/w7HCDMoWDIdMTFGZ6r6gpJvOppC4yyQK3/U9lZJkB5
jGXovalVGOGnv/lAI+3FwLNodmwIqlD3o8olGB8ecslYfA3UcoL0Y0ZI9bpOQXCZECz3yRkuwrSf
xoS9gWo8K2tqXPqQZfORv4bBLUdc43hcsr+2OwyJG4x0TVq6whxL83nLDuZiUY1fSbzaDyN6OV7Q
Ry2ihJ4hmIzLjXknhp6qaBXMes9yV4SglBb6/ic4sjCvFPvzseBuO6bDONOylkxvFpw9GUGSGRsu
3ItS1KShjGx7rcHTxEpaidKoaRDA1OU1GbazjgDTY8Z995/4G/uWnTz4+fLbPNda1XNU5SSSot02
thtcFwWyqzT2jTFydi3+imYIwlH+7azJ3bHpGy+AouVmMzoMOOb1O3PKpK11SGRFJhtkMLhyKTbK
7ietH+QbW8lIAX+/RGhG5nNS5eEVRZPmqc93AwWyL3C+EWJSeCfCThQa1bBhFSVi9NB/b9LK0I2F
TAp93DNNC9qxytYpuf1mYY1G22wyeuqGMyvbgMcyxsgWsKmfV2Kgf4eFcjSWxmQhGjKGIoik8UFb
Ak/+wf85gGSfHS11jP6IVxMgtMh5uaJIlOhiraLqGeuCnQAHE7U4twRIEm49/NWqSjrOa0NpD2sP
tc//a3rkhFwTmB/DSMaFiRfbVV7DQ7WleRtJbVQoxfRXLRTnopfkiSdoYuUMRlt7Ohe+ReCk/nxq
q/rlIEnDvdleMdXDYxmWxCYDHaeDyz5TOPQB2PiA04IoNTIbwGmWfRdnjgkdy7ZLedEDsP1rlJP0
hVgIUMgUAJYfhRqjmlOFCYw6YXdf+2RV6uHI1tjUSpqQ/EAu9xfQXJ0THq8pqlQMK7zYR+7Fej8h
ofsYHkuHCaxuquXrL3kubBgqQWmVitWULaT52Hqxh5ucbFiAPNteAbzENyVLXlI+2/hmWEz5qIaO
xa7mI1b9huYBq4IDii9ROhcfKi3bBckzLN8Rk5WyPWMI7xGHzC7mtPpp1eUO9o6yrXeTsq7nnYbp
7M1DAExW9ulkozO40B+7dykNHvJ/imv9pRj26iQJzFZskzB46Nq55jCYfYQQ5F3cIzOYF7jJiiAk
EopVtY3pIIDa5BZtXP2pmlXupeR3eBo7SK1LYLjY2RL0GI8a7WqpohWs3j8DoBsdh2DgMnWrUxCM
ZCs+r9+ne4LMl/Rp4+8fw8FsF47SNB5hc7jJ4D7nH+qFfSJy3Zf4dWZbsoJU99/NLzrTEoXH/GNx
4JV/Hfbg8JO5nm/bT12f9hlkxDYFA6QQu7XHMlgIdfTYzsMgh7NCp4vogJYaxSZL6IIX2J435PcC
6KzuZ8M8DhZRxKEdnXT59+LxiilH8btYGpGhJxkkpZBUbsT7A0aEgZ1tt4pBCa0Q7d/FaBqRmafj
+FvSRYS6UZKxcctIRnWSosIq76KKgO4U96/TEpPkxXDWKslCaERzAsgugoH6Cw0OZ5e2HmHJZSns
T5/GwV2nhPguM/Ns98s0saxOEr9RaPye1VTtIJg0rmLv2suaRVENie4i+NC+Cp/3knAPfTkC3cbq
8n7Od3HcL88Y7t5LJesGQw4dtDd2wJ3A/1leKY/LQh19QnmRcBE9iggLWo5+9NBEWuXXyMeM4lrs
WCevSmmLKhJ4uKuWGUONh0IZ8Rf0NFm+YzAlQxOjIhChIgEgQQAeTZmav12AGeuF/eih2//BrpQa
slcFL2DdXcS+J7mt206+UzuiyY2jzkeZ2RsKxLK4eRpSx3ejv4sTNW1WeGXMayhhreqp/yLusnWa
rxGzCA/rWsyluJyRfAJHTZJsr4gSy6R+Kk6a+kITfKBAZAiVd+htwAjVyNDZaPnk81pmKKfRzIe5
TxWOrL5a95tIGe3o4382WazCzUXWu44NTEtWIVdhpRz1yncMfCtIY09XMRf0m7P7XPBVpOKZfmcK
nkUXOUDTJLyBQQeWLu2e/cqCyxzGIRFz2+B85x18j0DKxuqgir+tEOYw78CNWqJzu+vtHQ0Y7U8B
M4LmyNr08gz+QlP9e5pRC9zhxpWtG9LbTo/v2FhVW4Rvdw+25Fs5Da1v9xHC0ieQ3b3uDr9Gj6jW
qtXdLosgXgH5phjNRS9vSFehzArK/UxFzafEqySQ3b8zehWkfU6YGgElPRztJeFS2xr8nl3vmgIG
2JfVcmgyXZIrgf6Wb821u1FYiBw/WkW7UuZC2Qo4Llux/Kk+W2/rVvZpEhpKGbenxBiLwGCcpvHb
PzeX9M5MD0M5/j3e7ULDuIxPuq2isAWU6aKwHTWMtuF0L2gpDFWPXfzn4Ey+Vb4DjfOuxdhFNP+p
GAzI8Q6W0ypRpd63wzIy+fLMCcJW4IsWt+t1k72/3ghq7TWRpU3helr6AthKXfRmaOzOitQzTRff
Vxj4mTo2RPEQYrvSlIvQl4wQMJR65easEZIPxFqBb1/BhUzZF1oTiskvxQSlo2PQfoRgcY7ug21e
jdjYe27Fi5jWBaqZ03EIQHiJeLaGn1Z40HDd/KLs8oisa92N7GfK3f+w4EDcY1tb2Pd4/fieIt3L
KVNuYzODqGdSLgIBbVkoftDhg8C5rk2j9TtbodNBNtSD1HE+CM+aRmdEyv9O7Fl5BN9ufFsHi4V1
0QspKUOR5IW8A2E9t3L9mcNMaXDm4qkYrYMUWkbpFqOcpbOCbxXyXJIBylrr0mLqrTQsYC3vCBMZ
t8B+vIBJoViw4NQY+P0gxBFPxCJYlfrxvZObZ8T4sfsXRuZnj1A2y4KXojyC7thgDR5kOx7rABAX
3ZqSYg5L8VUXvcdD/yz4rLGbsu2BhOi7vLsXniORlJ0On+Q0iklo9HrchcTaY4nBE6cz9ELYWHhg
V9/A8BJzeWMw8sQeqEVG5wP782iXrtMxsAhQpX05LyWuTo98iOkqOpUnfkr+4F599+e3F2T6sf/Q
TiMln5VUk/OHkK25uMXonvYCpVmRE9kL9bqjVawEe54SIWvoG6RlnHSRG5H43YHO7OMhr7XRl312
Ss1ic7TkuTSHeZitVRakBaaWPdTmpC3nK9NHzKBL4R1yU1GG0FAsXnmjLFekQWTdCbF0tqMLevyx
gZ4uc+2+35j0fCXRUOjk1vqJwxXr/eDXL1gi5Nh/mz8NlVg+9EISK3jXX55jYVhgPf4Cq5cmvDI7
SatjBou806AecRUtq5eqM0JhL6xRdLNqG5SwA/MDrrPi71vU0Y+vgNe1tVR/2qnz4eMuIoTE1oL0
uk0Lhd35FaX24YgPybnoksauT0+o1ovJDq8WN9AwEEGklXC1gsjJn6K7+MEHbN/IN3K8jYEl/c/F
SmvWuT+kiqx+uwfL94MmpFwkQKS20GlqfS37Z8IB5bhkXI+doITE+cJ/S2oWLHWyQ7fhztc7Ev82
iEHazD2lV506vIaVPmBfZreQEQ0dFTevRND37KQuE5+2b9zwdImW1OJQWTL7ZAubuz+dQXhWveBn
zerSyIHjuIN0Pl/aRekR6I2xQCw8gs+jaIKZqLDinVa6Pdgx3EM8U4LlQhbbNheV8DmQCpcu6aNW
SZbU5WDBSzhEx3lruGwAcjWfy3oaAD+WF4MadcjYfeUgDFEKQ3MQy7eAJSukfFsC5ryhLLlah93o
0Py5vTK7ywnTFevotyhow5pJXva6a+3s72mQuiCypI2eiWiTVM35LWzEin3s1zCs46XnEZ8ZrKhK
T/P/uL/rISqVWubjTCqXLbCF/eogNMaIgveEBtUbIlt0uISjXJe9Zlf9cdCMcL5qdtyOAf2IWttX
jdOpgruARW01Ma8pv8FPspBqeVaswHR04r2CsMqSteNGDrTxWgMDRvAR/pOtxTdIfL/cPzuu2bEm
iF4StxO72VWyhmSDCNofH2RueK4zmUQRv+Zb81s2P9x/kHT7gEKzqKFyLCenzfeDfxU5bld1nRi7
7d0/oa8qF7GCAgUZ2QppTMTosiQTGsflUanfMKKJO+PnRePppShIz01w/Lw6hu2DTrV8Ov7nIxB2
LokCsP4FxzxtuNUYrQEpTnLrBuifWalwXN91Si864whq2cWI4OmZkf4McTS2CUZ3PxdiWCa9cibj
C8RVyyMxtjRehrEIHYmsVSUq/kcRJmVTjO90S406+O13DbfBu/hRyhPcZSBuKFR5GNgpsQckb1iO
A6GbQW1ijY+auGaY/bb/ew+MxUfGC5JXnv/3sDxOXSWUIL8MoVQrCJ4Tm01+cdlACgC6e//r+ll3
P1tMI5QuMEt7nf3wcGCJvuLQ0Umu9DVQA8S5+DwbbqwINnNnKQkWHclqdjBH7B5FMaJfjtgcN436
QGRSi6iRpQH9K1eYVq77Qu5sUBm016HYXfGdQayxogKqUOpjaUZzi/ZYDuskIi6L31y+EkJICTaq
rW2GP1VaCA7Z9qL5cusLu2gb0nFv832+xRUAUR5699Y8NKZ5Q/VqX8Ttg3keE/rN1da0IGymd/RP
0opOEZFBulmdST/biMOc/wMq8cRDIp9hACHr9ROCKONuVGYK3CSQAEWGmGST+0iTjfTIO42/Ja10
5Zv0E6g8G5WW9LDf0LvikmIL7r7Vr3zlXl8i5VlNKpiHW+RxPkDmTUdm4cog6agNdZRCPE2SB3ZK
oqMDLnCNbaB9WmcjAW74BIAiMozH5BcUhcnwtcTgMbamCwUquAIR+mbNBajmwPvoAGCQpxftQfVz
K9mQvscFW0NkzaOZkO3yz6DfPJgvuGGUV1uYqrD6V9N4hXQ55HR5JTgk3UnCMYOUfIy5C71KHCvy
CLDRHu+e/QZTM8AtlQVHZrYAac/2l2NxNUZ7ewbhIm/4+NB7gfeP0Nx0QKhIke2M0Ioy0qrENg5y
+uhoM1HYV6mhlZGJaXaPfgpV0zO6g+h8/OL9cRgiN+1JjG4hg7A3LWZ73E50cEaPRf17RDt2sdCj
JIb/xj4Tw9GU2A1GB3aC2E3rmR3+NL5wqCe3kOtyVwxYIJD05MiLRjrsN2zc1nw51J1a/WuZNOej
rqiilrdtzUrP+UlMXtqQDrp8LQ0irx2APXKrtncuS2luu92DC7tDFRNPBzUYjYI59dfXtxlGrhwG
dtM8MdniguoSlvwKWOG5ojD9xOfOJsLQ0K1MTx5SZtpiaqiQCFxT3LewimtulgLm8AwleNSpr+fb
FRA88USVpfzJvC5nytRVbjjr45lD4CLTnl+Vhj9ETgoMa24OSKShosKVPtwyyW+uP4PClWs2i9ZB
VxtCxtchy3BzMG7rObZSDwY11z9jWi6uxcFl2Q0rmJPQJipdd6UMzSPxhLN9fNvez27zGBPr+1zz
58QtgJF4A2A+U1LYvK1gnhs+f2hEmolwpilzZEdVxCl3lUUiP6O7bK8lBFo3NYFRyXpglehbk+Hs
pzA5DKvI4Ncs2nvGvk9FTItk+dseMZErBgL9F59Vj/JRtMibCpv0chVpPJf61cKdYAT4pM1oKoVG
StMGS1+6PUF9ewl0oq37zVPq3YGHj3jOO6UxeqyehtpllnnbQS5jhNxEi4amCfCS4KYf95qgE7X2
i2Tkqr+J8j4QtjppFtDK1QsUV9ASByTUUZAoQ7pgOL7RCxG/WkPO2ASOkaBa3Z+dQwEBbHbIkiK8
Pz5t2UlCwg6K1t57KLODiJN1LnMwPm4A9eOoLBZtJrNilGsiwG+mtBbZttJAqQiAYacagH8PeTpu
g2bFmzeq5bSc2md3ZdLLX2nAKk852m6SOdl2Z5YQvbtDSIUn+9jWAX1XD193iPPhukm96Sd50Uuw
EF2PfT306vd6LzW48Uv0RXpIr6hP4w7izP4/Pr76/ygpAwdqZK/jJT5KmrOsmUeCLf5DsIevcgtv
6YwbYPn8O/4IZ2c1705blE45NomRT5G2vYwi9IIyv1lOQJGn7ocyGu77Gf24AialefByxL0RQoEJ
RPfp89EMje4javGW3Aawy84G3p/GWWG5GjzynqP1XA8MZ0+3NrWWnQ3hTOhqong8rvXXMknrrKS8
1HRqMRiz23UdhEAl7Ugygau8ATKbhzhGQaLg0gwJ8NanKmXQQqnR/0Qjv3UGwkghALwiJR+xrqrQ
FL+tazQW9aYAZCjCulh6w/uF/OouHpGghkRBQzt3S3/jqX2ljOMcCDWWA7s8hkeyinZnmTVy/5nD
1m8VNIJ9PPlRPp4yJAiH8MIymd6yK6n5JkGJyw2OSkgA8xENICABIv6oatfxWepULxKOklFcwuY/
Av5In8bJ8wofN539JeoMzbNDgxrg2uuehU8rb2Bq3IGrP+DSj2gu3wgDikdgF7HuD6p6ryhkWl+W
zMfC4Ambyz4WfhgUFnqyugElwXrY/iRv3fO4CxdecMv2zHACSsRtXJq5znUtkpSSRuFrrTTGXtLC
MM0j2AivhjHgqkvbiJccFKh1jAz3WMunGTWvABtfp4GclRSUiiREUKPbgfDgkVNMLRUJzkBq+Goy
S4oL+Frgq3qlkAcgrQjWE6P2TALx4cvxHMreKy8fnkg0C6W5b4zgla1hAkQo1858oMss/Sv76zZ+
Jlubv9qyWl31mo5ZtGxNmJL4ZkTli0SjZ5lE3HyKLgfwlz2ajY/uXIBP4bLktTFHNsev6q0MLSLR
Ih0XXHac9Py+I9pAZ/P4BHQeHfCb3CQt44posUkugR32Y2oePRufI5+iruAFk4McEW6gd0TN16Q7
VtPbuZPbCC2gkty9TtzZs6KpNauGCHLx80s9fazVVJDKf3lKYLPnVnlZskBlQ5hGUixEcfAXY2sy
v9dsZDzv3ARxRBvq5B58ZR8xPah39ErASD91+/4JXWr893Co67IGIx2bjXLyCePPHk3sKWfqQr1D
Kt08LTobfy33lt73uduQTNvdL2RkVJO9/WlSe5Co6+HirjppWnoDzE+PGRfCXpRKEao0GLcTKG/2
SSwgVHkqVijjGnrF1tNnqHjC894T2U0DhZKt3OBXm0tsTzgVfOGwFFbwATAjZoofOqngg0/nDRwe
KvNO2//rWnh1CMcmRIEe64OBg8ZIioawTuRbannD+nBBoW0SaUpyEXSIsyFdR5BhpcKz/zShagch
xrpTu/p3jk520joXBN/2POMbNqAK8dfdiA2y2EoQaVmWenaWpRZ6gTrLRCLunaxxOuNaxOXmy4t8
KdH8uZnpP5IvSNfttonP/egUOZcVMk23gSmW/3TVWPwWxNJB7TtFSqskwnW/z/DiSuBdwaif6hQW
INew+SFYDAtPE+ZdhxrIG2gWF1NbgRWgTw8iWHMdk4b7fodMXs3L8aDps0BlmF6v6t1m/DmVZ67Y
i7jOxEvYLiAZVBk/0RSyNuNv7dCLO8tJRWtq/qM4PyMmMMqAo9W7KpBT24IjKTMULLEQm3UoFMWS
PeT9qmsamri/CPmAXaYj3y+XAap6kf/A+bz+dUsJnrH2GN/XbLeilrZDdhuzBhvuMpUvEVx2rWgt
42eMrXtPMVXgZDJVvmowmEWmtjIALdx0MzbdZAiz9IhQ0T6Me4OAAP29g5RyeuO+APA54MEZZBDN
RJykfTdkTG+PfV+OiX1p99MPeI7E0UN19rir1D2GKF7Z+AbsvneeY0Buw1x7gxACaQV+0sHZpZQ3
K1U2C55mbjc45y3TI5qWM/326Zj+PCCMBoWTbaoniEolITBBanhS393RQ2xoiCxMQ3x0V/9uThLH
pd4f2CANq9BriNm7X38odQHKN+Cn42cGZFQ3nlWgWm2Os+ChliCs2LmpljOeJ14fAD2MVMljvoRA
cvQUaYcLgXFvWZTRRV4HuxrP7E/BsdbjLbmeDyUTAbwNIoq+Nhwy8XhODCdZnmaQ+AkjD72X1+V5
KQa+qVQ/uW2yrUnBC+3iecHEiLhqDYlZGsUA+WLETzshsIAUhEMKwMvGthEzbZb/WS6LTy/yzYAd
QnCb0bWnhxn6hHglpoo2YJNB9L9zEn1JR5cclvsJSuD5XSEuPKNppcal1a9nGcT7KZ2C+gOdXvQt
Zhsw/oznl0adFtm+wa7wzEQ9X3NWSmb5KfbcNRg/wjXEXbUVe+KmHZ6QilfCxIV5uBL++6sh1aZf
eAvE10+cqcP6jIKP+G0B9gVYNlisiOdENcqE4iLkUvA5PLqYcqG+hIZ3vt0P9coVgoutH9IImNwd
3oMzSgDPnc7sRu+ThVTtx9GAB+U1Eq6RrxSq2ytv6J7fFJCjRt6g+QQq1+QWOw5E2L8I8M6pil8I
B6TuZ+oQsI/UqGOpv5oIB2G1vjQWR/h/Ry9gfgVM1zmKjWLP7FHuAV/rfdbkxosuK6RWSFwl0DG2
2tVxNfm8xRtl2Kl6D0n3DwX3Lt0sxpPNQzzkOzs5qECQ4XRKjazkatFU3bSnZmNjzO4ayJa4V+NG
m1VVT+WpXu1CCu4uP+R0MZvih2eO8EtAIdycmyJ/bcq7v6j/53EdaNDlYNUb4VZIv1pM3jexJlCU
ytH1r3QDSHHKOXAWb6jIJ7ba+DJm/jRpbOu+4CJUIUuMQX3mLRbfkwjK5jXB0ngoL3KF2ANxHakR
Gl36kq+rW7RIm7Ud3hJy/I/v+22m9ZJ4Mu6nc2QFiiAn5uGhiI1c69MsKz9LhQeWbu3x4stk/7X8
5DnNdmxJ6cON1LKIvqJnlqokv1VqlkruhZJ71C7CMQ2/9icfrZa6WzYPqR9K6mtTuHWGvQ1fqo4C
GqBE9nJ6SXz1SGa0EouTK8nERx+JM/IH2YrGMPlSpKJdbOFFNblIjq3QTeGt5zGi1stEDNrONpJc
XF9ybfmDl8bh4daz3ME1NermbaIv1a2+rAJjQdpACGWqr690sSSfslx6HsGHow8PQqi/bEzYG/k0
bzoV9V6DXM/OPrrgYTbAonIKRB6WJO+l5zfa592MiwTCahGLaGZTlYrjSd41uX44oyqRZ+VQnsO2
yDuLc9KFNVlhOYgG+SyXuCRIRIve9Obwmv8p3k/wBPtWeE2J4BZdUh9ABE4r8jXwVlKIFjmTxMoR
Cn+Nh6/qfcuab8RmQhHDfGAPtISMJ2XVIubzU+7bw5QKbJRdVMsrm7q61dRtpC/FmlawIBQLMNzK
r1joAQe49f2wxgfxDLLJgwuYyDHNshGWkwsftlbNhEtV2C+rVA6elm9zz7jHv1wsUlA+bc4NcB1J
o1H3MciZQLTRX0MSW1AOG2w5dtRNOHOI5wMoO+/be6TuScAlBAl6NPu8t40e98ZCqEF7f3P0KSvU
2SAR8V7OSHnq3EIUCJyk99mZ56KSTmrT6HjUjcR+LeuChcOInqBPmGFEf+6JHiIsSCECCN7HF77T
PDiJNCApsPIrORCIhUP3zTpcPstVM+9L4han5fhqcK2OntikMNQa8yYYz2CE1o/oLzYfCr76xKrS
cI/xFey3d9K2Y2NwDEWOl118wCdanAZzZxFyPGRQm4LXubgnvHvJLItHgAwo01N2IPtqEwyh+sLu
SON6xWceA72UQikiWIfvr4J0B4DHjynLtWPSuH31ptkD7DNkP+v7zd5cAd1IONPJXWJ7Nt9tedmO
YD9czPeoSszZo9+BfwoeCu0SGH4sLJbu5VezkFqPfwlkoU2U+G3BAwRrm1Cc7dcGw1V7j2VWbvpd
FWqVbpNqabcP5mxre+fLFANQlqGHQgCohWYfoeHDxAAGuyRz9HD9IbUEscno+kjT/EOla+0evwKL
EnrscUjPtXgwrIlzEsQJGTMNJtqdeWIlJs4r2gZ/qqKEJYR+HK3qgHwqq/5/u1dZdZaFwieibsBp
1aSq7OD2yk32ecWbybZzYLEZOUzgdhtWwFy0ytUNrygSxmiA7PZFS4oHvospUkyvZ/E+HXT2GBRy
Bh5E4jyKMe5K/QOPTTMNa66E9gtg7YD+V7qMmxFgY0ZMHhoHUwrajoEKUsF8WgW7Va0Po4WDyncJ
rJrypyH/zzU2/lLoHwFMUd1zL8CW7FxHlVKtap71x4AVtELQ3ze3cMjC4CKSESv7VGJS/6Xny9yH
tHezOXcpLH0QNUMGVq3rK4HIBKjV7Rzeu2j1y+CorJkyX1vDgL6/2PYqH+PsvUgU7lJ+4UEraaGY
aSBYd6uNL0FMzmR8IpGPrd4tf/X3t22/DtLQ7zYADquCD92oVZIojidDqId/LnYWdjfFCi2S0tCZ
I9WSHlpV94zuEj+QuvqlQ4lMINI7nZTsuYxli8S3ZuMmg/kiMG2z18Lj3kWEWkUMqC536AlY65KY
98bfm/f6OYnjnG4FGCPqDOGOGAVYX8pAb4606Ktle+ihSoWu8pjmEjESOCZAW7sssqb3xC/O+3J9
8+fLTG31LqHPLX4TUUXr4VAuhZdXr1pUZOGmcdXP5BcOlIGY0NPDqbKCqAH6eaNtQP/+CEKjjSAS
oK3gfX7hvEpbCLPNGu0cjM2R1wdogAzExyKS5SwloO/Y474j/i53qDNMiOu/tsMXt+GHI7YWPTEx
ZA3+KYPlmB6vAsq8XpghwGDn0yvOi4X/bQ1Pj7WmSrMzA1+qlJ5SEmWFEKeTyQVfRmzVptGKiJ6x
wNbMP175gpQbWMEcVMq7dkxXSXPNYHbFcQupjNpLE7NuJihPn1wkEPAqZwoUzsKwFL+7p8iI063A
HXdqzmM/JbjgYF+TIFfKglxv8YH/sIxDMeu+fTNzGnjVXEhR/pms3P4joJW18uQvJzOwsnI/JAJm
2qnX4MdS3yP6XRyp9fX6ZkBDXruc6lt6jrMYPW+Ludo3phlHmm5VJFCQFggN0P/su7EG6wcHIU7v
gOt4dgSRVkT5kvn5aJtKKo9XRYPN0uGY8V954X6UsACZgS1ItC4G1n476neBOh2Hhf6wWOtxkLAr
hx1VNhVOCmPGot4GvslWG+B6iZDgbpqLG++JxIkIO00DSXXw+roPaDJzT/p2toWAxpa9ZLJzJmfY
t9pPkDtaskxsOgq8FxNwKFXhwaQ94lTDN9rVe5cJE2Ii84bJ2VoJnitrDiZDLinhF+xQra/IXVMA
U/vEZZQ7lDSwgMwn0tQ/GV+VPzQ7x4RS3U4CeoIIh1Dpu3CX7pTJRt5pjd3qk7T0LosNOIYxm0ba
cg7O/mhpDBz0E8by5LY0lZWX2YhZUvtCeieh3NIiauaz64vJ+XoWv26sOoDCoDZetxGQfoVq85lx
shdui03fcCg+Jgqd+TN38QpZcH04xnXcnn4bkRjYhoB510MIsS/vnUcshoH+3c3L4PDVV6+hw6eZ
XaK8/82zOt2cCcTzQsUi2spaYJqesZblSV5p+Dqcs23DyXF6/rY5JpBJACTpJ9QjAEgKlAaReRin
WYQpWYh/Cd/xnJBWEvnYvHFSqiDgiCrkFSBHRWff9YtihVQ+/lDk72l2HnVZZufZjk0C6DS5zLDw
CdH/0VN1hG07Y87QP5fG1RhDLMrA7GXlGVuw25WsCczxcGH8qlCRknzqQ2rdOmPW+NLVDBqXhgN3
oycxI37/L5hPCOPZc4Ltpb3+F9hb8fGXITxRBDwmRlMz+YLnlG6ukQfMwRXbxo3d+sYDtiDMil4d
RIKlERjv9SfWqDoxQFa0eWl9ru9u61V/eASZvqSIqtFNCPb9G8QuwCmYBg+4W+puImqAKmgGhaYw
dcukisxMYcBgwZGedGZkbRI0therCLm4oqIvFGgiTUSYNRCvbESGktHG3zfGHmJbjrXuN2xj3sPq
UUzqOlaJQAVv/wp3idatlevq3+n+KUDyavyuALPdOIeHrQhGwLWo0Lv8lCASri+End30zS5j8Q45
u86QuFpiyAk/IPoGOvb8Cr/I6w16/mxIi5HfoeJWprmiaTQLibbiaZM2v4Cd8FBda+XRqrRcpdz+
H8sltJvXDbxef3EfSVX/3sPu9KtwQr9ijjhDW8O5GsNcuareG5LCoTE6ANhDOEzrZvvajSBAXTCz
DJjNacsiojdmjtvbRvqehRUvVMbhKm3KBW9i8/ygBlyQHfM/qzx06PHPYt6Y0Hz+Dl77ExE8orKH
bkEH899YNvWgsao1JXksz8j/mEe0L7e6j2jswTs12rXQDe+cB+L4d5aw5MVixiOsjbuphgTWRrXg
Kk5m7Tpfip0Mcdd5UIvpy4QIGmVTDAH0RtGLHDn7gkGMdCJ/jYVxRz+yhIa1OHo39Himn+8NkjV3
hJHJaOxbuuvrRBIRx/JG4syHfHHnLuHabYap8ZCuJbUdw7gOWpcTdW5Zh4GAZ6r1yMWmlzY7KFX3
r5rhiyiqeJu7z8VrBeAF8ngbf2sA2NI3dOm3xxUij/n+F7d5M2AMI/yVn9H/hxBt6tO5+UjP9MbW
Ez2m8QVL/WKl9n+ioJwT6N5PNorqFy9s3zUYzAee0F4Oy5yNTG0ZEsodLbBZMYATHFBIff1jH0Xl
VHT25vOKZoZcITyxcCva4Q6lptQAz/zL/RuMID2t53DtMbMyDNfB7jUYzjI9MPY/TAHNDQXC3Jht
My23eO390GahTQWCKqkamGlgx2tZ1fVOPHKIGchuxO+CpfOYCRbjZpn49k0WE5jDAubzYjwtwVkk
j7PdS8PqEZ+S7QAiRE36od+Rwk/kRmyEoRlXsw6xlxE9eGpTeYge+H1F+2PY8O+hQcEepxinAHkJ
JLaXc/lzsJm1yUDVAAvXvL0t3BV14UtUtqL5Q0j2xZ27jhsaBCgRI4x9g46OIzEEtSUzLmd0+IJL
ll2TmfkVGoMan9cNTq6PEzrAzbJRnmRQhS50wqQh8OGE5OI3XFwbNjomdcCDCa2ZTxq0j28xOXRR
tlzDe5QIduDr0uP10tbiGBWxQKaU3BOK9Q2cTRLJVHyvICvOQebs9rQv6cdwuEzi9UKjm+Vi1e86
DHe9S08MKeiGRpwOpF3+5MSRUYCgxMwowzRnKJUM7VROiZ4UGRpN+XdJWlED9ToNMGHuHAF039pi
IKIBvhuj47Y1NV0sssgTpfvmPeUatr/sqCfJOdp1srFuphDXlLKRr5wqIEkuxNDjZO8+E9K5/oOP
wRX4ZhLVYK4WJu6Ydvi50swqtRmP4WmzHmq8rOAv6D/ZbLAuqMXcMdAu7KHGm+nSHPaSE1r8oHs/
Aok+9FDVBH7E/S5PF9hbD7vIWkyRJFIUS1ZBjwU9yWoV0AGlhHv45ZFbjdeHb96TOmUKshU+xG32
RY+SFOZ7G9uoTJf7JORYcZAXOItIltJxwWnXP2WEWhY7N73hbPYMaTXC3ooxhCaqTkIQIJsPFPa/
1hk1DdBj4/2aK5aOV/9/bgKkIc/D0ixebi30Mb870xV0PHDaRo4jxEuHmu567fK4BibpllOZ8l+6
rE1dVUTUYiUrUAsh8B//ZcXiRkwOF2Ut78o/vpquCPxdLX2nHNw35gP6nYZVNyj5FE1/EqbGqos0
XMtHZmyWyDh9UR7HNyF4AoQWQ0FsNEHSA7yN5Q2UyUM15GLiIxSIv5MajAOlRKPkGTr/RiC7d6NS
pLRJSIIk+HccMjA4zEz9puzgc4G6VxYFVJUicuMeU5kyJ4L+XzIuz5Koc2x9udiw+4vnB7Z0gfK2
HBxO8NQGRGvuLotWMAjvaam29iKzf+oSfahUPyv5F9hgSOlqRcN9kZHD654o3AhhMJ467BdVteXM
1Suv4OAQ0+VyJlRnxtUfab5VI0iO6qLbtYa5j9XomR9OIJfgS2+Db9tchtthV/2uYai2npP1DNEP
DJo+OuzXEApapGtzc0zHJtaWbQhb3KPfliC+l7nckkk4zalj/ousmJGrlnGf7ljEDvvITjJJnhtG
/T27b1zHG0MZNylHBMp5ekeD7CHbRJjdHpwv6EF1o971LTudW35mB6flSn4wcCIczLXae1ho8WhB
cuU2DpKgJtOKOLWDnwBJFeQA6NyQ0Imqc25LKo/itiQ1D9I3CKMXvFlrtp0xpdiEEBqCr66lp2fl
gAw2ZxP4+I35rA2EmhOQ80E5toYWQ1Gt/fzsgqxyU5zBiBYp4CL15O/zEAYkkDvNnyAi7JMAsUgE
qubl5f236nCTqu/fuKjMvtG/zM94FsRmJb63UviMeM1zVv3B9hxPteiZuufMkkt5fL1HWpK6PhYz
QmIS8jD2Om2Qlq8mMAbCwKGpupPCoUPUhmaav17eS3zYadr3/ODM/Ix2HbAAPC3IbewApu1XMWXx
JwMWlSin1wPjRUywZ4VBsGs/O626sb8tFC1aVFP043L0RcEBu3FA8qi/jHOi+VSpfh5b27PfqQse
NshzkF3E1LI0RImpMM6YjmSUjhN8AwUHb3IdRRnw1f9+6o25rSqkagKutqw5ZD9F58n8hLC+8rTU
Q46DaJReRTRIeztdg1O/k941d+SjVZnz2wJ6lBUALyXBTWV7dPmyBGfcucYyvPaAIsZ5aERl3BBW
yWvmnhh8vU92MfepgQRXemhWVV3nNM1XlVr59LdY2jncwl6xeiIG05WBBVmRuGCM1yAHfBkCTV5P
djFbozLfSoT/CAtcxaALkeA4tcwaPrz0MHxtotM0opFQgdtlinVBnXktZRFyW/YZHHpAueHhKHMt
Z8VUm7FyrJw3CiTB/WFKQ2/FrgQqBuAsRTeBL9wXQmEbj08FjLWWx6On7oRh4ogyMRrqM40zFN71
CzIVIjvu6UmKeboqo56sKvIGifBZt6B2IcL42uYHplxkHYP7ESwEVCzLhkqEywNDVjmfy05sHZxH
MgBGzBwAe2rYXHJ0trK5s/juU/yZe1omgPVk6e0gZRDPsN5mssx7o6kCvpcgT2ZzoSsE0u3g6JIL
AJo/gg6cg9zkj4wzYlqcf7plLHXhxn6DWXYyKw8CgLqH+1ET8awk9W1chr/S0QiWaUOnrPzKXg3k
Q/MKX/XD1jImmV18WDZY0FREFrBKH2l7qdcbAcMDkjS7AP66Kism0QwtxaaSoxZIYRJRvG8gqL90
b+50kSgO1JpjvV8PmEBcMXauE63tZiExrig9/3Q3miQYMQE/CrloqHxZzVuUKOA+CuywZP0eQ2m8
C+JbC1F+FLxBDNJjiBf2XMTdHB5GBUTq1nO7ajkn9UErgO46jmBUKcse+u24a9CWTHBvTiyQW8vB
YwTL/gdFS1djXYg8v5dcMxbvLb46R8ST8DhieKHEuv//N4kQ1k/nQGhh+TmPxf1MENIkBSbsFrfU
xaEM6ZbQA6yR7bDfnqfWiccRro0AAYYEHGb6sGO57swU3ngKYAvsTgCxN/yLtw9EY82DZi10sGuv
BKLcFIMy0gwPQtwhyGlsF5oZgGqVZhp18qBNY35Yy6bh5qXT4s5lD66ymcRZrYBM6ipw1nWo/KSG
cXModj+yMTMf2xCKx2EjWFboB7DQzH/s2Kys6afcUGTUQcXH6eg8wV9HdhejOfNvbIMHNPZXh18z
T6FHqH2beoKb442MedrvSmz/PU32CF0DpHPxUa+Yv+9sfz4+zz3LHhAZ4mZUWbYtdZn1KLmXhj/0
qKk64wzsxrFbrF8IBVAivvj8GuP+3UC1sFAhcz2bs6v0Gt/y9C4uBVh/JQnqrh6Oq1VUk0tHlyUj
pZWKgOnYJt9zPP8TyQi9K+aU8hss5Y17J8kBVHj8PtuqQeGO5q4yiePv2O+ADhX2OmH/psKq7gTY
96wTDHJyWVYza5vTZBq/UTJVwazHyyCM3OBNWozeFJRTjxb1DTDrjQunGUJUdvp6z3HQpT1w5xTP
rOxjClETVCjz7UlqujGFhoO/ubPwyofBG30yHXHk5hPH1kOHoa/2qswTAFcorK/wAoQnO2l0ZREB
qOUbAD08ZR2Y7IMP13uCKClkgZds1CMZ0hZv1J1XYeluGb9+Y413TDzsfVy0h9EeALHBub1W04ZE
mZxTXLUO+OIN3//oej4Fb2LpQk02mYTbkI/hljCimSdWS/9lKqvooBNK1qv8r0sR7f5MmS6HVwwd
diCXdlc8ihYajbAHX6oN98xR4fJ/IWXL+p7X8p/PNUqU1LlVOwNpK+Cw70ooUXvh5cc5JbbMGO0Z
nQY7ZXBVHRa9in+Lud2g0orxZA59Fv4lpnM0XjC1/fQQXFPCJf0XyIXEizALWfYmqfgXZ70GUIaq
a3uH4eLy30d7XSDJ2PTkx/tL7fi0TxD1bFuxHniV6HC4WM+78qi7CC3PfOvlOpXtPqWQjEYYgs01
NPNLJOEStNYGVPm5pouapd+OzCjl2xXUo6NQijVCSb1/haV+eSemC/3baxWIxMfMUyphOMc8uyUz
7PtykMKLWMLR5l8IGtmz0n2iQ29dTmR2G6zobhxYHTvfgCNabQEB4LgIJXc8UG62afuGTBmQ0Omo
NiGXkC5U3W4Kb+lKcA5m+u85AEJafcRogGnJlKMzG8RgMBczlKKmiqdrAIn4Pyp4Ro1DQVy9chc0
1lXAhjJDuxZU9vxNgTJ9UNBjFBpZpq1Ajhi1S3q1pPLb9dtqpgLjk68WPAUq+ZpU/1Wc7bEba915
Ho8aqXfGSe3lrQd7V9WfkQpZ6HDplXyScaOVAE8M3HNRsZIPvrtxkfYbH6AvXI78B6j+y0DxRSoq
Zuq5mV3Sszsf6EXSjROPvrCKDkTOq8zXBV0tCsBIiZ//Je6FzAJsKV250XP1xgEg5Gg8+6COZ8Gx
7NjCfzqw/M/uJb7abJ0R/4fNfKoeYgOYVH0gyWfdc4fLGjM+UL8iczFJesLJg0V3iCrYZciJwa5k
17WI46pGKOYLcThPD+dCE3rXEbm21aRMjauzHlXld0rpYUdj1nVIu6L7X27CnICUswJldaSrZbko
FWHnZGSriCCLrhYvJ4pY/HRa8haJ+Pe/G0sWoZjejKwbmaKw0Q1PUxTDwc9IDFcRWcx6uHsQtMbw
SQtFP22zTL5PkdbjZJvbIDVd0ufZ1P6cWvxNbW5fnsDbXfGl3/OIIyw6KJE1oqN8IRCOFXAsAuri
mn2X62F2iKvBd5kyoQ9JWnWYil2sYLJQNNWM7vO9snM8wQIVSe6SLQB029IZyCZ1XvIjn3zogSrR
jRfhNvMfz2TOIuO2t1Xp+NGJknZqjkkxvsFss8HlZ3fWxPsJFexB6L9tU8KjLu1QBD5d9ypkpfKi
vJ/P36t/8JtgNZxdVr0hlL/vfWgG7lTqex2bDU838fwAWOKRyEyldt0vB0lwS07JuZXJbS7r74O+
lp4pq9gWPDZmCdGlEgZel7/gRtRcxG5n6ZADmR4qaBlQI7xx513t/0tYP0Y9D5Lcbr1Su2jVpyNo
ANtJkRoF5jjdTPHZIu/GeQIKfAuL4oaYUMs8UtRv/CVFt3zYK8uU9fLj5J1nogRqybwfO0OoHpV8
bwRLWOW1Ekz/2E690EGPZOp4m3WbP0axrZuiEvEHu1dI2i5yGeDRko0kU72R/0RPXgAhtty53heB
mMMEYMnRRQyzdsSVWRwihG8N759C7B39nxzYHateB+l019izpirpkl+ERKk4RtqG0fLMQarBALSY
aM+rNlq8vxf7KKH/ZIf2WCN5SP/u5GEwlirdWqD7o/qiaRFwpW+MnR0MYELBX5oUEeftMYJyPmC4
lsYZN9gNBDCRWZcVT9Lp6owqqvlZtukpSx5e4YGdDpyhw8JNN3iTTtvPa15pbIuoBRgGgKnVYDuo
XvFelmvAl4BX2JHCro0pKpne01g8gUeGvX4J+t5/V1mCQqf2qhMDwACCTrdO8a3aN6x5FJktuq+o
8nZddaPs80ZaJ+e93GrgMI4+HkWiI3EAjBKvwGUaWYDKi9XPjGknygCJpTiYKRHEUfiR5W15T+UC
Mjw6yShxJPi/i/5x3cRCELyeyXf/3iMffrZblcpCTt27T5Ec4y0QYgSU8ZM5YoR35nnkFJJBOySU
mzY/rsdqL7HkS4KWPPTMG3foCjMJY/9oKMNbEVCk1k9FDP4UbzdWxZrPWAhMSrVronc2cUi8N5O4
CYKTFHl3D12X7U5wVgjmGacXeEwSYVZchmTDvp9vuCl46v2iS1bLs+aQHDAK1NXRv5K7XyG97fhl
m8ijDQvtKXeCOVl/1yaf6ZJsVV5+8K0Fu2R5Q9R+y+oEoXim3a5iGQ+QrLV2vKBattn5PbJwXXnJ
BuIRBuisDBxpHdNqIVIWusR/jT7elMH6h9vnFKOz3RZamk1eWhZgW0GvO20LU9KBnj2Ntsu8R4fG
rfHrseMT+fy3YOSjN7ZCgmk7ygpDbMtF3o0vl6ABRPCa/jYUm4cq9ciB9g06W+COIa7LPsmFOdQq
3mu4H/FQywFA+7ZvaspIk2JRxcKwENkt4c4CHyrGadhYHe48Shu/enP0TKLsF/AOzTekkowUzIiz
hijyA0+un4PXSzHV0SEQejYTMoRFvuQMF9rgyiSZuUEybwMRhl/kV0AGALK1qgau0KnHj6j6qj+C
aVxO6esP1TGoT+2qNfQLZCwv+10M27SFiP1anKzf1HaI8IQ06Jgxsxw3d4prALvUn/FBLXsZp7UK
KFKVA6hcvpu8shaieCvr48hRqSWBJjC/6mSxFOj+3x2E1h6/O3+Ewp7BBECa2aXJ9IgtFTaGF8EV
8VRVHMKHDBUE9WFtbhOZBdSNkiMQc1DhI2ym0+hfnplPSDuIQ4j9Ha3R0ppzvMIeg4lKtppG/7rL
em/EYm2b7+bMfqXkihukG8XbBbeWgP+LF4RastBXmAqtvoc/GOs2BIq20L76itahLzPAkmbTRcs+
gy9rZUh0IeN0+SwifeIHrIZtYWok73SDrJcxwEx+FM/GPsWFPaZJr3HTnRQ2U3ygzmSaQlYqM1nI
oV/NUllIk2PdJe9vZmhXaOLFDXREqUSAzU5IUW4Szff8M6iNfoUwMTVBEGDILznkYQmo92cJM7bE
f9+ObrLPP8U4DiLYLH8UZT6KOpkjbldL+VCkCLf231qIZooo8PeyvAYwxF85ddtyUQAS8Ayr/gp8
2j+JEf3kNM6wy2ObXtmWkqFBBxZulIlxPJf2hevJ5Qe8BEz/mqpgwHyEE0jHM6sAMQ3xnRszjOsj
D+kUOhBlHQDU5xBOCud66kpkg+JeUDPjqp7J4MpQnMhM1XUxDzCjvRIAAw30yUMn73w6AJPyp5zl
pXhzBzZMfQEsL0XjE9UGFMQ1uAiEwrpQierWOfrHy91YuMzJ/N59np0TxcShxYucu7Gl9GHnkY/k
VQqUZG8buijDJAgXG1ReWl+LfjgBK4g98CZ6oLr5LkufnBvM01hvxdxf3Xpmc/BVGRGV7TIEVI3s
3JT+U2qnMd3TGwQ+fw5iK6S5F5X0dRnuQp3mk4uPymuNRNunpvZ5C4G80LkYkX1msvNDGUvq2EGU
pYH8k05pXB7ZtfS5LOj1WW1sRiPI0jBxHjf5reO/FJ2EvaAVtszPoL3qBxne7dL227GOt12Iu5OM
cf9At1Yv2o6U3aFFkzSwBCPk3Kix+S6WAoFvC7M5SiVvob6BT4Og2AlRueFhl1d3lA/taaGeHjva
tGhp+08Vg3/VOD+MHavCmxXRPnsVID4lCOFjFyqO4AcR40rH+GKA+9HN7XWclyB2Iivn6eQrISnL
2RkahpEYWDE9QPbN370S2D0yI58uj0thx8ZJjSoMY8HxWA05KXcUA4XEu6iOXnLEGQ6QaBeZHFGc
WcnisvwDWjyBGNokUEsgVLtkwZre2Y/IgUm+/QD7PNAh4ynJVZlZ3A7/AdrSwHInA0RAyMgi6rtF
De/FlksvCEl+peKIaRzVmW9xn5C4MoTgZwJdu+uYtebiKDChL0Nd3rTYaLHC/IRiuwQ2WdJXIksg
sNq0OzsZk7fmPhN0Eg6l+sW8kH9A1J3M8XL6dPlO7Hq4QwOwGuy4acjjRCogsABIv/WHcLIKwOTB
AFsLKBXAEown7B3rQXQvVpNZTlajLZ7VWpxGMfnX4oy6vAgHpnqyLMY3Ew7h7yaHmdge4SldwdZC
gcQwU5vzLeTDbh2L40tSHFlCYgZY7P0iDCB1vWm4bYsQMcAje2MiqPRXLJKijwS3cHRDNm+fvkF0
ER8tSBr15NVcEmTz62EbltjgDmPIQbKiqLxf9I6F8OOzNm2GWiRlthCYuhr8BPuj5qcYZlQZpvKw
mSAMTa2b2xTtx3UKvL7p8ITUCEigP70+vA48c89+owK6P7uf2ZNKsZO+/5wCMQfxHLwWaABE7X17
tvL1FcB7gUwTS1cwKIksXluKMXQBVC02Co/xadrmF/8km/OQxZbI8kdl1S0EEM6dM62dtUot4H7e
RgysRxhaooltfQGQxt38VOVWhfE+YN3qHWx/zOSPM0gbp3j4f+Sy4+Qwl+uBqluYinHzbtzgPFwu
Adr7t94lfr0lvUkRCr6a4FhEQM4hNDE3w+S7+sDDk/7eAwogtdxyFFbbrR7OrwoOw8z9j/UkNzhc
8SPRJrmh/cM6qJGB/uMgM1iOgVutc3t/SXxHhmVYjrKhtogUnl5JfSi/FoUKStbH3nzX1fntKflV
nAIKLqHn5BZaw6Ygny0Zl7FA7z/1AsFu/dlOJasaasXJTeC59/gL9tLCJge7gDCJD1IvhIOsPqri
b2M6hU8IASj1DcFEov1wIZXd4ptZcX1mFsrlYMFX5ZNkAdqsyFOrzRXia8peoeKJ/Jminw7JFScB
133VBsC1gd4Lg8NGY0RzXkM9nHas4kabVbJL5w7kTZ1YrwuyIl2nYHHqjPSIEh2WhyCzkX8FchE4
UDarGluskFFZq0BqD7Y2N8JjfqtFe/oJR5mfQ8/wG6U3qOcNbnY8AZTHK7o3JyJYIs36HF31nyCr
TeCHOS0RiPqdidoIcteuSEuEH3Iohw+c/Y0FJkBuZvEQaLuwDjDUKBm4JwVZ1iBVW4ffQe+ol/A3
/XHHiznfIkYLCR7rOXx63aazv/q+Z4jqYrgq1f+o3tcFJ6K35uQqA3/dnxnZhAvh9z8KE+FLkgR3
cbDLHhZKZeiQVHzQcdLl7ftAiFBY5rdEuuhbN59OFIKzDhvpT7wVtrvBzmAZEAJmeox4OkAWpR4V
LEymh4f/3rPZv8o4M554EQtTZ6Z3yH/O+EQEYHQ3VWiZw4DlCOIwq68wVB11mXMo16VlWHSLMIo0
VXh00mNVI8GLOktfxHKe8ubu0nji61DArwRLmwTG/Wu+5Gx6WKq1fUyZw6iiIHXtWVVQ5Laf5ikN
21YTXRaUalR/uWF9U+tNYtvTa4z0ytmKOy/BCm024iaKd+3cepQepjjtPrP1qfeJCinmJOGcBmv/
fBE831J5F6OZocDHcerMt2wdDw3y9ExQb4oH6n0G5NqqnaeLYksX6xrX+Sjn7Se6/7lbgZ0n2dnG
JvtdGU8KCfzlb3GRHhxcY57bhpAzYZH70w09aIFx+eVG3tVt+6TCwqx3IYL9a4twovbhtm8RO6bJ
Eys0uDw0vgQiMuRj6d0J+k69LNiDtVhrs8uVCGrzkLeEtOV14n3aTd+lVzM8s2as9rpXVyoACGbi
iitxhQBuidaBWptZcWgWAHXhQKk+v/tSZWFJrlzUHf7mcZSLrWkLulm6sgGSqNUrxCE1CdkPI9Lc
DeKGcKuDzR5fLYntrJi+jjKEegW20OBO3R4OpODUu9ZA5r24mQw15TNEjQlwjdFbqNRWRvrJlY8y
TTr7g9FMVXY62oBXaIwELSXFyDqFfyP055r6JnNeVlWa5dD8Ztjfhj15h6bXZUWmDTxkBf/guSsT
Nv1ze53TA8s0w2aqqKOpIFx+7d3vbkQemeGmJBdcARktpiRQezgCfzEymjHSQTsAzVxfQqm8VFzR
wbFdeSWSX+eivOrL5d6msYr6mMApREV1EO/7SPnuk1UBrID8VxIe3vSDd0UbrI7oVRm7QEl7LsSu
7kjhU5w0WoxrIaROBn0c2w/6fy5Qjve/V4LnGvVB3GfsV9Rm38ivhxp2pMHrCHvvoG7PRGnYwsNs
QbjGiEuaM7AOradC4cA3CVw247DvxSF9ZMN+nakYclLK8M9SkPh54B0BGeNYj2LXL9DqdbHcUuum
o2S5r8orMDEFelBRNthtkS2Jro1sim1IHmOHvqVQNFRzmRoytenxGpd2TLDSgK3IfMchBewsVjp+
xYO1VbWS8r/0Vu1AwLApB/FAta1CnG1oLunqLr1NuqPIaSHRfn9ACX8ZywydAyyr12xuMTFbxztt
Yu7z3M27YLMvUTXb+ONKWtLwlXB0ChjWN+jdEpFuw6h7oIRHmC3LwcglZKtW3BkeHAhdRRkavXqF
H2l0nzJL09MCIK1b16r2O6udyVvX/FZkSib6Wv3DB94YU+0vf3omOdXRUzxA9dGknr3tshK0Zcqz
TdtG7vo+BH5e36+By2ScAvlQ2o1qeAFdMfBKObt/JkagDvjS8Nw7P0yqCRiNosOrCT8grMxX0CE7
1fwKKb2OB1mRBbr8cFZxWaFYPmAKuQmGPOnA85ySMuBgG+Ixe/r6BjvtPvTq+0+3VlMZIIsQ3Z5w
U+vnTN2xaTG7THGTGgaaMT/MTf0U+hp7lnEzfQfuBDVOr/noNF7IB7cSr7HRZFn3O7sQmhJzwlSP
Ef+TUw5ToyRaGeM5IJ6AWbdC3hnKq5HMPKiqjxsLG0kezStb2Spho78+vbJhdK8J8s+MfcVJ4Kwv
/x5IbGefEjqDY9o71an3mVzcir9HwGxhOnrP869zaIj6uxkKqPCaMD8i1kDs0yNI1EpT1uZX4/MN
ZOhPW9lUNC0auDFZ62AoqP4aDb0WFM76hIrGV4Al4dWqdWrr3eVGVgssy2jKB2NUWsYNzQtqKxpX
+avnqBI9Nm2dS29JyrBklhveIpiYWn6EIf03o9SKIBHnx43mrtSODYa1zdlqZwI/xzNyN+hnlEf1
xGDrfOmSlbpuxRnSxabv67AgQ53vTso4JeHV7GWKWUUqKSUWkfrSlbvQynbFNrnBNezFNR5xT1eX
KsNHuU5hKDMkGH39y0ZaRabjvSQLjvsT4KbxKyDqkmxUXDP858MW3mCN1c/61rQulJnnSQIZ+VRe
znU+DWtOQPok/2C6jklgR5ilij+flviVU3aKiJEIPi3FDAOQ6rGMAklBaee+rwVJ4uEeyhlTHrv7
boTEa3lKBtzgCBQY4KHQa6iuqrpjzgPgB5Fn8kZ+zjJ4ABa2RiMSoSuxTMp2RpIxpimapnGqJNFy
S0eaTs51Cyqxf4Q6OtqkqwDTZ+vOFnug70enlT2FIFZ7oY93bXEiOwQMSX2Hh6Zqy8XvZGQfY3O6
evzszbQcOIRtej6KG4QD4VqzZwBPm8gk7Id36FBSTuwkbAUflQ7hR160GZ6yvQbEm0DQpcDRk+Ts
FDN1yIfj2cwlPL7skM3c7loGkMBr9jn2ZtpN6j27c6T+uZ28twY8cDUCSpF/fpUR57KXDcPvEIGJ
Rb2Nkr6CYt0o8RvwmU6SMepL68Tpec/3kWlvOtgkzoJNyjLzlyNB+ArlUCGNKmdbn3HmcNNgHkbW
4fkj0RRoz9ZFyUjpHclqRrn1Jq7U0sscdIc3lYtWQKEGWJ6mIyqstVN7YJKsjulT7+82JZJZGMr+
efMg9VNrcyO/g4NOiBHO53IYCts+AyFSPcl3LuemvmJ6F1G2qWz1rX4r92Ha2a4s2QH1kvdA/6/t
s89RewxG88licovKFl7Rvvaw0aTaEXVov8lGtvIGh/YQ6Zb9ChzzdiL3cF/WYPPg/jkWIG35Ga1i
sL7rPWMEidbShKHZ9NxAIJuJdKh9QaUr5FcQBa3eG0k86XIGmu4ihnGeNR1kh0DecUx5SxCbjM36
0B2B+5Q48+HTnt/+WcUBHefb59PrWEqSSCfq0Cm1vjVKwcS2DVkhkpQDKkw7ZuIfNnBk305B6JuW
Sifl6sIlLYyL68E5vQcYMDMGYJdYfzCBUzJzrwCogH1hGzwOnYtUhCY7Cz6YW3pOXtbtch2DoNrB
DUyMAB90CVKq38b88o2nVYIE7B50QAK2A2o6M9BoapRtXM5MMl1Ci1Pa2CfYypwSuOk0WRc429E+
cahpqK8vP7Opf0p7PLZ46rGWPZoJyceTsiVgXUGryiXnOHWpMUjmQCjowBsV3SKaC9KTW5S3tsKS
0CFXtD5zghwQLPz9AA/OFQiJETAU8LWodCAqN9pMMq32lo9SvmJcRLEK7bdCGFtrOoXOlR0V3k4k
FsA3i3ITWxk1wMmqzJiz5quOjyS4LVoJvh94wdn6xeaVhHTFyXranTMTQaAXpds+Aw0KZwV2kwn9
iVOzjdPsjhg5ABU14NgJFpJuvhjjAISxwPdX3yIJMOv1bSFk0KrSw0jV6IxnlM0+FCcf8PZW1vsI
o8ryN6sI+3kUIwjTfvwZCnq98fZXpH0txQvvYznlmNpIQiF8zCANVnJ+QkJxjCFG+7d88kihe/zs
GnP7jpl0EyS0U++U6G4uur228bR9UCnckvplV6poxbtt+Z1TpOKdFRRb/amOFWuAWX9opbLkg4Vk
bzvQJHbx8+BGW/CKSQ5ZN/HAG6e1nu85MIAw3JGKljLTGtYzbqDVQkjTp/PHc/7CCWHGwMr8kWXy
Dj18zOzTEyDs9hT7dCRjXA0fSqDj/FdSTL4tG4MGTdKEWlk+djlSfjEzVFB7OrILU4epK2eWbJEh
ze0udGRoXFlBMpbZwzoy27l1LzZULJFN5Aag0TL/vQzncfmhzn5MuaeA3iAXd4UC9y2sHxrSGBNg
izUpOntCXVQFvLzZjETYeLtktg+BMHBGvOkCYwf8gcRAGFe9SmZLLsxEUxzOvyrKIs8wEUUWB/Q0
TeJGU5YG/fRSV2yJoWt6fXHXbfqPaGsJR7keLtZhMNjLqXMG9pJTQdFFOXoyhcOwucoM7gmby3u7
50z6MGrp9Zgs8HVcxrWRqbiEDwqC94BWRlPIGcaA19kforQMCdmBdAt2DHd+fM4E4wIZmp8OC+nW
6vpfSRyNJ7AvVVsv1fzqinq+VOXWsFRLHF1iSfMaKnKVRFswHu+iaGHhUvLprdyy1k/ViVrp/+eb
PQwYxftbMchfCgAec2gu0dJGP7lCC9xXPW4cCBT1PyukZEE+lbyqLGbetW4JUk9W8uksAfcd9UNF
t2vRB3fGw+7cEUmY9qZwDNdu8OwE2yz5f2yluPP3tg4HhPHrtkkUFWcFIYaEXvWJYRBwtnKFV8dn
DtEZGlONP/6Nl1Whv1SRnxvZ6v/26oirpIP3DsjfTFbYi2siG75CLnbwl6t+TpuFr60cGwHw+euN
aX37KLmqzQ4xfVUs3hQN8VIz08kQoFRdsJrOuoTmM4Cn7NZaiXIMlZ1fYXZHFMyw3wJX7Vq+i6/b
6ZL49lqn+nHQiOkcS5ux0mD7okpLU2uZ8E9G5ewZkXFLEVzdJxaNKImizzd6cxdAaJMY8VCJ3UV1
4mDND1l/WjXF+NMU5e74WZeh42SdrJLz947nV6bp5bSgjSz/eyhS8GrCH5j6qSReMWFupcwTJjkE
8pgxElT3PH0Vhkk9CZiAuJEnpg5RUQujIAFU8ZoduE2Xsq6fSvWzgCWKk8vhfWbDdbyj7RmEwtkT
l1JbqaXA821o3mb7RD5pshhp40kQKeYNSmnm88VKpRlAweVT1IFSFRgHpR6h2wOPiso2RDMyHkKN
gtF5uO67wSVkNCP5UAXDJXjNErjctZfiumMFz/1tSV+lWRPFD4rCe9AwbUEP046m86TZZx2PrbZ/
Xt+lxOWuRgI5a8grk8KOMuGjWC16LbLef1y2A2QzEInuW80LCu3coeF8g/sWzG8vtuVuPk/NUjSm
ZsMwGR4YlPFrE/+qB/3HCVLN5ySdf+4Nuj6l7FloL97Gh7zsrsGkAxQzZ+YqzL7hq2omKE6d+MFO
hGJqNOjjT/3h1qY1yUNyueq/R1fhyoz/3qS3/cX1CWRF+FzOpZL8mMu7RLhPQ9oaig5xD9zg2USW
RsrVGpxIrH8wcm99ENPKMbJ6en38FQRKhG9ebFOpmvI/R7iwjppB4bpu42MzaTixZHOUwH/Q8gpd
zRL9Ok42JpL+pUNdeJIV80kpVmRdERNSUGaGp0okAXHxYTlNtH06st29lzgQvUH7fBBxIali8aeV
FcAINRpuY7NLgopitqjT2vaqtn5sNCqVW8y/OAULPZYIrEFeLcEKp+y1TBeg8uZr7gbwT0uKAuHX
qSEifU5fX5+HtM2o0N/71wu9j5d8v84D6ymY1iC3Kw9pY36rELmwC4sf77qGHrH9/Q80CRTMSKOo
1ehdxZap0tIxj1HHL+1pY0dyWnW0mUGx2P2gq18TzPMOTrETb2Medsd+aQ0vKdrHnSp2wCF92pqn
g1yKplN8jCnQsDL2xFOfCG2tCsINIMzWmiI1wdv/tJXb0OExT5vwxBPkN2Rzmj9aURc8+Tuclu4y
KxiyMVijN2IbPbk7lJKDqsPqlxn9+0A6r7yIxXb2+GrnUMNMm/d1odif+I/mg+63fOxfSiMQutZf
QvtMukAd75QkXi0G/ef0UHEp7spwsejqore8qICGTtnrqRC1uu1v475ESdUvDsdNaJ+Q4qQZwbSP
NQGMeUuleD9Xh8dhA5D4ZQe0cU4Jdzp8BfS+N45L0DsndbgCr0DfQep6iprhTba7pUIPmCa06CIg
NXABVVTHSG4rEeLOCLBdYYe3iWK1PqAoEEGBshL01Co5tdI66TGGtuMuPRgx+f2NjD9O5zNalEZ5
EVk1OJNiNtdjjj2+p+CrkDONwEm0yidiY+1eEJV18JF8+uDan7B9YTcD8+sRmv9SP9LU+lIl+K5I
ihNoN6lyptSOhfK7bIO++bvMptEpCKE7YlQMLlNaj5L+lp+MFX4tt4nf6kWCEv3nuE9Qz8fWMAAk
NiQF2y7WhAr8P2dzbLed/piyXSTOsFIXEW8HeEmcuIMouupYwbm3b8HKE7Uqt6itvOxGM9JOFPQz
OILmWjJMSshGzj7bxAYZDecK5Ql8FNIYtEucEAMF7ATf+BrEUDUBMKqeK8LUShKuvPF/qmm5OEFE
YB5jYr6RpLmCqkatj+Qeh0MpDzcCNP+qOad83fVY3N4m2VjKUATTzpyS12PaFTS2MaoezA0Ql/67
kBmh8GTL9O4rjZDL6/78j/3vNDGASsIJ4K5+d4FLhlP0JRtfuzRANbAtTr8c3T5IuyjZDMukU35O
Q+RQb9PZuLsBVk+L4N4vl80rBaw78RfRTSi6dNHP6BftAM3JcP6rFrWVHMGLlGMP2XEiTjbWycJE
uUvZ5PQtnIJn7VsV9qSQ81LB3bngmvV2wwBCPdulHJJD0ams7mmpBgFk/ITOMsCnVoq5ohp4RkRf
zcXLx/ocYOVxam8BqGIEomIJip0RdtzBsUDilrKzYa30d+xu8/RSynTCViMt8qbZuz5/Wdo0mltu
8YBmOKhcSS7lVP2RTataDbduAyQMDDzpAthGSOu5gLZB1UhNPAopHJ9RmFIVW10diRGBHJk0+fQu
eXyJ+PFyYzaJzv4XG6amG/BrNZ77qT4Hvjiu6omOMfnqXDRupcO6wjuOQuHqgdOe4HB+hhqemHFd
jABbJ+vlQUTe0EkEYPtuArDyEd7pA0NocNvcBrKbNaKDKOGiQ+kouLDXE42/QWWQph86sW9PiA1F
RML2B6pELoDNUSIk10WLRmDgFKLgQ6113kwpbrPAUViIzKyVPv37bstkDzvy093JfIOLYphxjjoi
hQKe7thzR6vfou5li99uZfBcYck77m/8X3dg+g8Udje7OzZbMdx3YTjd7wA9n2IU8htzr1lgVpwJ
geLUJDuTVpbuJJnDbOIaTW9VVuUXblGxVwlBNMoEgK01v/5C45oANy61qy3zVAXXiSLaFQr6zaMZ
Uu1HpQ3wdI7oweD+q4erwOf09sm8FIxirMgqUBPyos2ocU2W11geN/Fmq1krE16KgxhKDDtkrrVh
ByF3rCfVeAzyU/wQT0y+XuS6zKe5xoEGygxA984wCqmYbGrAS2UMGgHxMNzF+jULhTHsiqBlv+ru
HqAVgckksGoCzjwBSCep+UyDL57deKxoUT4ATSFFDaz8iAhET+BgF4zDBoBZARaWjXQhJO6NS74P
RZ6lp0vtNxVFoOUjgPTWMoXIaPGo8bH8HrCMsojLGPUxV6tiH+mXH/TMBBueWPzRhtpaWkLZ4okd
rjYQsinVnNbFvzQzeHUXiIJcOMxMpc6WU0dGLG4+khLwjUw3NWMkVl2cnwdhMzpvay4277MagVoU
aMMOJcVVWMUFLLJ79kOr1oJbhuB9OP+UseIKefUJrvg6A9zoX86PB6+3NyJsUlmXJo3Q4o1+t2cJ
2D5kETXCNZ4fxEn7rEsJ9fYy2pZtaHnQMbjkQl6NS9YNHlud9pYAgEdy83ba3zE6sx0BtQ0F8bIg
iKviH/TR/Cu6YLf4nYbctW9v8BtLWKwSKifUyNTw4etJbjqPnyU/0IlVjpXqURxcKJt+rojlLtWt
iv0Z+h0HjhKgM6wX6z/fQqZ/c89dl7si11FBmJXb5+p8i7vgScSUl7hbWllpDd3TjOTeIvSv74+/
i8gXiNUzE5zAKThKPTvj/ifogjEgztgkX0KCu0KpurzkZYxC1tR01w1ctqB1Ups6DprKymI/lUc7
9oZUuomOZ2/nw6N7NLUPdbl+lloF/g/XsHC9I1HzxgRjnYDcQ8qEoXSkPV8KmdtTu+NxnyyrSROX
sTDACww2PoNSzSfXQRmhqXPta45fs6ZUrtFS71P7/VKZ2godGC9Ta+726RebfBC9Y4qNGq2+oj9Z
cP+KrRYGEkfyN47S5UvlmvKCsB39YRgyUNpvyQQDShYKahBOiBfRN8l4+0VNxNgmhzYcgMhgVgTw
tyKwjL/C78VwfoNocCoolwEIT5kQpwGN6v19k5qxPDOrCje1k25I8Of3rdrx0tDSxafdrA4xK3Pk
t23c0XllJWjsN3lzUWunTJBcYRoQcHZGRBekD6E/7+/dScGcT/1gr0vsDWSaMrNA7dDu3hO3ZwQp
u1Abu2VsoXsxZPWqB1TyCeiO7K2ZgTIwuVbaa67zQiW2m1RIhL95UsUluPfhgq0PSwUsNDOZCxI/
stanzeLUVqM7zlThWFaHva2vNLG+LBVox2FRBqrF3HQoidnJNyMU5zD6PGSITw4kigZzIJfdTlbq
GAOuxpSixUfso7tPTQKLi97vf15rtyh5saLqxM6s7RwQLld/WQEU91wpcoxFFmLaAnTqYLJ5yaqL
hqt/TiN6D4Ee/NgJJ4k/7vQBJgxa0AwikH4GQfAGpgcWTQsuTj6WK6K85mmUeGL6YlWC3sv28h4M
F7ozrvqMcuggZv+Vd+vd2MI+9nRcARL+Poz8o+QyAx08hhAV4zvwKEZFYX+l5z+noyl2ANCrIH+y
X4mgb30wJaq5XfOeeZdcZ8+kIWjYSdG47o5q2zV9kZnFsuUat2YRf9kUx7gxbkqvViKuB6LuOvHv
8VM409E6DRuf8RMZx73NzcVvJUpfJ1NZM24q/ikCGb+QrRhQz9n/nA6a9uMTquFndiAelO3ewtCn
Zvzq2h12rFThxr3q0DDj/uCqdONb/Sw0M6Qqy6oIh6vLexuQFETs/Lw3SiABTb7GxjSa80JSpaK2
4rTxV9eUMM0paugnV4mlNs3qhdPh44rWOmFEcXh4m+stFyMKv4o6a8/+awCK21G45QMfm9j28c2E
+egDDUBBXe4y/IrClLnWaUEnjxr6kSn0fZV6zjxr9wZ7ojVJJdW6Ls+rp99qiyMsCS4//l2E4jF8
trYVyEyleXu6kbrHhrUovdagzZYAR9wBNq+tCM3VHon4VnZPsxtRqhwXjG8nNuhl4ynW3BUUNqgV
1mDMHFuI80xK24ZhkqN022bhuFVuG2gr1ehhsBt98ojJ3MDRkQXId18sQuzgo8hRcp5dDeFePxTH
hQyqVZrpPWnE5TEHkRAHcUvJO/2/3rohOHGa94DAAbr56YuPgylFhh2Xte+f3WTr2xsSlOkBlg51
gIs0NXlFIk+WOQTtn++4luELX6e4U4xR1KaXMxNznKR7C7iE1RTO0wIwFaaXLdm7JOj8SikiRXvd
HzGCal3/YyPfIopHDzKWNtc4h7rrCysW1fBtqzwQDaqBD4NPKxmR0SZE8JPudB0ty3PrA+CO5B9J
Jbc34NwaMRGhePhhqhZwb26f/eJgH4WmrzT82oPVkECOti5jEIJ4+vjMzNP1u6LfeiYbAoeNvuMb
Om79zJMELRzF2Q20c0esM7q3Q0z11beDUedJxPuw+8mLipuR6LMcPph35mx8ub0xPCBKeRwq4VLZ
YeJcyADZE9bK+DrUPj46Ti/+eimtLVktAigebxhx1L8hab96Y/wIL3YW3Vbmyjc0TWKz/9TaE6nu
PMy+UvIylMVYvpu6+frcDG8CTBCdUQDQMuHrBG7dZSwDqYg/cqfP3bfiTJqtTn7TgssYFmSlbo/y
9njkguqvr6H219cqAX2keAt2rC5i55QP6ZVBf0qHygyf9z+ENptbdle6r36M29boX/RfVnPUr1D/
Fd6/yeEFuf9qc5DSmL4QWAeoZPH7TdNrmo1NRbuZp21JULO3HbTfLfRDGZSL9Qn9l3R6XXWD7CAP
j2X9bGtLdTN/tly2KMK5caSNNkfrdBslvR5thH2UE2V0FYbVOXVHMo82x1tamlhSD7WhoKoBcbjP
8I6ikZ4540wE0YX57S1oMDKEaKfh2GHvrXNNLuolnVH8YNrfk9TfEXvgaeTEUKPN96v18N8XNBDd
svNciZlC/gw5Er+UEKySubiE8lYrO1o4qsrIHiHIb+ihUY3teHrHaB7m9uYueBHTwCrHfl1xk1nl
1mfv8vg82sOG5GOC3IR0IBppIxJ9D84Uxb4GuAXjNzA5UAbZc7dpQskkyfLphEYqOoOepOzLJpAY
0Zc8d1t9N+iT2wibiZnlwo2a48e8DkdZ3l/Vb77zU4Q22NVAFOhq83N4q45z5So09zwyPv10IZmn
8XPFazAN+4AGGg4nZPCFKoo5+siPCThV1G0VXTa8MvHQjEwZDy22oIuxhdff2U7ggulij62oB+/V
hu0uBUbJRY1HeCacdBeRL9l6JS0v+3k4z0m/sqW3TPu3zKO2WEI38e/jQCZMZNAcoloRcvRHK/2W
EJ0wP6uPP4ldHfZdbTkO6+LKpcVPkwkWy/y0C8EV/1R3ivsTIGaiPNiFXR6p5cB1wH/tCHZ2iDVz
/841K4ftgVGUaYz8Zl+hM7m6XqEv9BTXtT/kEqD0p9XNNiCKYEJIuHSyCfOnl7xe+gYQtZi30DH+
ePl6D7J2PZLs4d2WZyJsGfmVwX5SfErin3egVi2hqCEibr8tgj1TgF2L4Mkwsx1MiVSwkI1aNvRC
DxE9ZDJ1XoQOfjqx/MYstlcx0cz8+n2NAYbw1fk5sERuQKTlQ2XfEYVz1dGpMcJ70mBqBZTQwGCW
LNVwwkZpt9DWaALSC5dMse67QKWZLlDchDa8k6VV5bzR5CdGrjGtKqf9SoXyWmSixX7Mpoza0T0m
mkt0+v3zQl0V3VLlCzvWkrVxoAAfY65zR5k24B3wSUWJmlkYz6oehgm4c2nv46BQjMs6BkzY8Ah6
XKMArPJsx4Au58nvJtR28ISUyho/pXIDxndeROGONFIxIcVsDiPmEcGH9MOME7F7RfUWTdT97mhH
TwxVbX8v6iACdAY3Um+9iEkRkdNa+o1faJW0Hdbfw8V4jH7GiitD7CIEnDKcrD1ahXL54PcnJLxn
wETsxAMf7bvyQxQkKRlryz3bh7TwpjhQMfIoh49N/bnO91ug586ylUpnJPHTtKMAXtG7AeUmtgBl
aFs2cib/ghG7ZrQ00G3I+9AYpe367txfcsL547X9rA6XLfEuhMvdc8QIXlDCbLJcpQ5umTicDx+c
J6bevK0ReKEyoc70tJ15iTnhlgQJd7LzGbI8A3WNRN3Eiods9rlbxapLy768yp224HD1YcLjwW51
QDZB4qNrq1mWSFVqwwDjz6EZnjG1Qkzayl+87NMYovXxY5yez7vbp9Abaiml7DCbKoWk3sUNOw7Q
78yoyRfg/xdleZwyUQCtOYfd8kFgiwTtLHhD1PXLAL1ho3LBR3Mf3XHG9Zy6B1tVtU/Hfk3eZ8L2
146Ebk7knb6pXrQglqelqSyGLSNK+vDpdt1kbDroj9iGtpWa4zUHoi5zgdLAcI8vjrffix9Fk1h+
VFMIZNaBM4g1uJ5wEY/kcBslrzl0y38yD1nVyqjFHKzKOP0kuG/a0qrR3wiWRldEXcVdhhVJGt4k
qkWHVaWb+1PnIL8cpqb+XAJV9vDKFXM/uWi5XWPI810LA++8uVceDouSRH6jQlDcr/xVGSxP/5fX
cO9FWkqMCkkf2Vr++ho37Bdp4IKDRKTpkZCEszGf2izI1sM1gEhNAr3LGn6tvjU2axRRGJtFojZL
brAhyhlMr5YrKdajLwHexiPvWM10YajBPSJmZQoR6pRWRiSlUDtp2ykjP9BbLZuzQXHq9tuS/1Qg
2l/q/eKrBjgoyCqrh+zA1l91mQmHFS2/PsQvhC48BhOBplG6IgwXN9z8tphGaY6pNRJAqjtpC462
K9WyzBdoQ7FNq41B/Z8CXosQe1dG0+yNdR7chN2HxpUO1XmBPWeZge0xqZduZb9aAFYjckVqx6J3
yK6r5JmCwYQ43phCuUTkXH3NaCGIBMUm4i0BjqGscAXby/889+wG/FAntQb+2Jpps5uHOVhOoX3q
64eHMhEKusFAUdQ17c3x5IiHRickKze8boyNj7JfwhedRFrlZQv1QVjnD/dztEabMzabFB1DfPNL
BMsGSTEgDsEGAyL61w6834SjzafjzU4EIlAGyjyPRBx1miObXDkcmpY0IzypNzydDuISl9CNvDRg
FLcNxuY6OZNrco1QHaHCmt2FzUW1MzK8Jmmc4lbMIQJtUWPkHYplVR+co0evlbVp+I6dUjntTs3m
aiDd+Zro6ZqL2QGz+XtYVRbZNz7A9B7zi6bVTASogedUTWwRw4jaHQw2w2pM8ZngjBmMlFMqGN+D
byAn1H0g5F0rRjG/YkewguYhtES/aOYGbi1BiIlVkKUsDSwA5i3tUKtUP7IMDD+RCIlT8uQPqEIG
6QWONktJGu44HftCciY8n6OWUBMRxTSIUhvztFEG/3zVyq4U/ZbnGFkOLOQastOOr1417IUQOgd9
fM81mUA9xnCzXWzQephfH9g9vE0+VsRFtIeoJyfddR9YpvDSDPyLUtaiFmDEosprmQ5ER5vwS7QH
fW9BI4IQarH4C+o7FfbLRLIfHKD6lx5V63jzWy1Ci/xnBXsbV/QCpY+TpikvKRRdNVFdnq+dOFcd
xmAs4FLxgu8ltTx2pIp5Nz43HOAQ9VjCYVKs6g9pIt8nU/Wj/uBo9kr0IWX3sccU22wpb7GR4QBw
GXPb52OcrBKyE7uY6rPe5e9GQI7roPLSOMgMn7OVZ5x6I7yHd3JJqREpVHiAPB8FjgAqZVRQbbaC
UVAmFo96wuSrVGAzBuIQJvxpxsailOQsoF6gstk3Clrp+8iYPq54N/m2bY+ijOjnzuH8mR0e9QkH
A3T1n4NWEwjeOLnvt7TNfs07XQ1EZq8SqRlUgYsRCTFsSMCJVsHy2YYd470bB7u2KNCIFsB/YClO
cRhfiJzxUbIkwPGXwKsyp5AR9w5uF0ORc4KJHVTOyhb6awMDJXfaFqASSzKHtFG8VwH38HZ1buE4
uOgmS3EP5UMsvqZMrMvjJTglgjTecVIugog5rxVCzqRnNB9aUTaUi4Hbp+uyhRNOMSgS0B7gYlHQ
xDaFQnaMWvueU3gaWHpzIHQQhkpmvVxNv6ygp9ytPyPfMxks+BR7y8U2JXMVWOLIGKq+4cgfb4wx
nmmiT7YmZrMmm+GufvJJ7s1qLp5O9CLsJLuGd2psFN1LK59pWi1IK9M1lO3xW189CZpksC5hY0xe
OpJarWKlctoBsQ/wrvsAv1WS56pfaiW4cCW7buN5jCx+2o6BExmmz0zKIe5Hmlxa9qjjIE4BD0Uj
CsFQmACbDa2kZXKoEn8C5/xOpSv25fRzQU4vl3MBJ7ZjwYP/Gp+hNBGvHjDEfQbJ/hGtoPXTd8Bf
49I6JwlvXWS7HglcYQODorZCw5V3Y7BuzURdpGlu0xBlSlNx9pJwIBRBjF0zkOMD1e9ucQCZMROm
9YLepK89XvYrFqJ76jfLH6wpL122UPBJBm9gDpFGx1A5IKs1Y/uGNPPSvVDEMJpBnLIVnXdZ4Kl8
zfjDQlb1gH9RxJ0dNuVbmBQc4ukZv9shCCzVqeJnsGls24gxEthsPbrQsCkyr2Oqx6mKX9SdUgm6
tYwfgUwAA9/PWdWXBoY3qCMCZNj3SMvtfxjAjp9caAXtLAvB98WBCm8sewUhcZo65atp2X9f9A7t
ExCW9ky9RXahdQzhgAmvUGkz6sV7yFDJKFxXHEb7NENK+K8OYom6vKx1jWfa53psXh4x82aK8Nmw
hRmfcw/6fiAqtDQndUMVb4MuL11dbPHMvd03ArzqY5QhgjZ5TZSlcrh2yce1+83rUhawbzKC3HEM
IHUnjvEpycYt5ld5nRY0DGZ+nDCQ9x1CbgqvQlBgdxguphXOq9vApLf1YWdybHyrdJZ18PVivQc8
+SLL/mhtPLGnk39KTbzdX7TttBlS5oylS8yV3QJOha4KxdFncRgcZDSL2+qCTDDfKEQP9Hmoncpc
7HucUAIst//5hiU9+VxlOH4bbwAVxTw0bR2xoDhZ+KZHbbMo9ixXroFq+GsSV8SgBm/AwSe2A8A5
P2xdK6RvotdigCJT1dcmQJnPWCzbewosMe01ELEFCTE7Gvhk73tD7HC+f71L5ly+GZeEBKIFsfpm
/kFqWc+jki2R09cTvnnZ7aHzaZMy0hvLq81UdYW+tMjbtUBpvcqsA8IKdn547UcbHZBX5dJ1cLOX
IM9JymA4AGVHTmU6/zFUwVuxtD3i2cT/o59dNIZ1zrpLUyLlcschZgbgLdLJGjBf437KJcgxbNAo
82jBmBj7Rm9brwvqWLvXIQvMyTg8aSTGi15er18pbkE2PezXU7BfeXmRmcMyEFws/WLs3ozeuRKe
GcbFV8hGX6JV3CbvN2ziCvMBD3oTXZ8bAy18SWPVIaBq5MQgAMlNCxcCN/BHsTn66quZocCOPkqx
EC4F5gehYE8VgnmjiBAzhrw/HEbWhipHBmW3by9W93OyLuxg7WvyyJiN95gSlRO6fD9n0KVAYd9w
/nH8tiCaI/3qob4cJzTufFQgvO6wsVEWV3Mnx4NbScnk+WMM4KYl6YHDAqDD9FNFzdw3yVMgr62Z
4PLaEYSMpv3JrvdVhLWMriqFQyVsgEAWJwlrqL2BG5pTXufHcqfxoQWoda5IaypA3Cs06dY8pkAm
vU1y2VdyuCo23AO6A8e19b9Ce2YhUvQ4mnvcboVpWMg1SSLzRwJo/otMls3EwPZ579zIXyPRoMDN
OvEvXk+AU2JYq+67Fv1bwdaH6tXv1N14WI8HtkBs1yNfTyBEv6W8VbydKyO6vDz5tgrUs8H5g0gg
MgefixxrclAWFpwTLzLGm/bycARKBlRn/N9YLi7A4rCz2KxSCUzIH1eH2L3qvwjYsefppLChiR9W
zOhNRgbc9eb3BzHXvNmCUbZW7OggiaUOeJ62Vc/N0qS1vqG4eJJKZsUXuOgjwtHDr5udcLuh2S6H
Z5bXU0af+0PtEVEsjeXlpBQbF8YJ2cMujjdD7mh5ypc0O1DY7z+X6DnNVBFYE9bgsD6XMc3/WsLB
N5EspoKsKQTQ7CWuLxfqAbh/2+kscXxcZjoQAxItnFKsijy+74Myrrm3ZvZOPN+NSdZF/DZS9boh
SuSKrXSBVlL5KZde6JJOnRWc6T90tV2so6gly0dST04bHOek9jK+mLSxE18sHF8ePbGxQtaLswk+
CLZ8GZd9D/GTt8EyHVcyxXhuAfJtzHxCJ63/ihw1kMHCC8Dnt3EDtqD9UhU304623JpOfQfwYqx0
Y+0pRnzYheRUSbX5kJhTdQ93+fZHZZry/DG7T0P1CgAunp7449pMdQDSVk3lRtKgCW5mmAm10GZu
LKfPpRzd9O0EcBNLOHEQ60Rkg69TF7iChXQw3+IuSP0HN0audmWaRWwDy/wad8wvwDfm5o+UGLoa
FBvV+3KdYc9xvFC/0oFBKxDjAYYz1sQHrZAw1AD2I78wjUVhrF8n0daZEOk7JH6G6fSIoiiJqTGv
Fo2bvtaEnui7xHWePcFQLfvtKf255yl5yQdo+juxFEiTiomV5qqFNbIRLt27BAKkKIDVSvgzz8Q3
W7Z5UdtWOHnDj0ZxIaCse04VFT1g/kz/Z423NKTzJOjH5mP5Ch23bcDd0VECjtaR3/HYRCNFT2tt
ik7avLfwtTL1rdfgQphEuXGsBEX+Ea1BOqd3bCGWtHpd1PxcpPyboFd5bfVLIO0ZDgzozu9mCeqj
rCXQe7sXkdBEYqZzmQyo/3HJzRPnSD0H7wneZ7E/YZexK79QQ8Ss4KEvkLaAj8ILIKSGQqD2RDty
/+MQiAHjXaXDNrlnwzkPyW2el74vhngWCff1wF0sWi/ztxTkRU10IXhkpM9hnDtGPiV5ODHqTAUQ
K5bI4acodNZGcsAXWHoBP6aBOWx+NKjrMWjZ5+29Dgv6jb0d+bYP9am6Xw6KgX+kp+S/eardpHne
pAFurKp1Mu79eNlJGPstz6XX59qiU6jMMuiVVp0Qkrh4m/5Eh4AeaWT+6P9VQT+548lDNXcSHzQS
kwrC5UTxiq34fKMZvMyjkUSgeOKHuYSuVPnzY0SBM1pkt2Ima6nHHjXxEavDKC4pauzdbRYPbd/h
rLL897A4I6hmgBpbWp+UofxEA06kWLuXzfwoxE+RXEmuVmiIHX9Get5ZiLNTGuztkiRWJ1ri7T1C
aJsykrY0ntRIv+dEbwTghSlnrtojkImOEkCyz2rfMffdPeKmTy1rq5kEUME6nxZ0vx/ZwarEoz9J
PanPpyMLNWZ1TM6t3EDzpB8SfN5CQe9YE+aG0QL0d2xvJP9R3WNbzTyAoufFGPSqo1EAUT9rusrl
T1fowPo9Vq6Cc+YZVd4PiyABZx2qwSFFsvpTgtf/TXxY6dhPwkJ90JFqgIwGM49DoddA1cNGeWQG
uq8HwRxZeqfIg/uMGe+fzCE6ehA7MYsU1NRc1GAnoBOwKBasrpHfYXSiYgAoDK3MY7EeJk1/Bc/q
SQ650l70VQUUHRBYQv9VQG2PxR8uIQi8WhrGyTsdBiwl2bKjiOJWELoBy9bzlnHzIIe7lq0+VHuP
047n1LoOPYB/4neovQ/2hH5PgroLz3dXAeWezXst5IDUpN/X3uCL5zhQpdEx0dBJvZlbiVlTwzcF
+sy3gYN1we6lRN2hMhcLcz7X0QXs9IGxfouuHo9+gH2NhSA71E2nwRsehqAZ2Pn5dBbOMzc7nos0
ouL7JrM+t4kkXs2ZOtYJkNjOTwwek/WUlNoRrvM2T0S0ZxF/MBeZ6F1Sr0M/kjmp7s+/X2lcna2a
QhkntthZdUDlMyxQeRawcz3qG3i2hiVhnooDvNz6C9yu+p2L4laPXPnw8IncMWMeNN7N7T6ivhw4
dL+dmbxnE0BWj7p0OVLTmViMiuH9iIwnRMT3ZlM/V6CN27lmzRiSmQGJ6f6z8goMAULsyGCB2uHc
cFLRCjaiiTHMHlK8MpN2ftuE47InArqEiGl64q5TY0S/vGdBeu5p9/KlwaK4cC0NqMb6m5mFWK0Q
FPbQ2MtwA+aWBVD90A3itMmOKPy9Zvq/J7EjXS+ecGzlMDlNfJq7dG9yxbT448CNSfKR3I7KUQJN
TkbQIHBF9qFG64FxPuocMC7ubdSTwN03VdPhvLODVHKlQffE3mBuarIQDPkDkgIq3L4unwqHlAqC
CtPvJv3bOuJEVfmaQ/vk0BLkw1ITD6UK9SYHFU2XpcppWO5q2K2vKvI+dxc6AvwxrrtM92sTtGZd
aFdR1SVRKavnpelmUFl5IRXYpOGrEddwjy8vMzRz2OeEqLFL+oriEXYBwnhLTQ1Jiw9AfmpEjJWn
dkBMXvMZiFqOMFTrPS5dXLVU8Rsu7BEEZCX6JzIIIXhW9ttVwKYvGVh1sbc8Qjg8E0RuoGmLDuok
n9x1TYg0BXBlp4i1AdArW6BVVEBEv7OLzapqRryJ9WzEv+9duP3lheAD8Sz2ESt6MfyEyQZYgXvy
4Va8wkFS1/mJ180Ugr911vRYh98R4O+UAIs4GMrfOm0ByT9CtAbJwV6garzbBTa4pkgDmXsreA75
U1TohhpaOwTTVMh6sf72lnOETwDeQm5Wq2P3zpV+LiTmi0Ath1naNIwgZfhPs0OK5MAyuguHW1Y5
0ebJABl8YeK9PUWjyXOcr/TYWWMXpd+CxOTYjoF5xT2QOyJHS2FFlNMIUyAHBZWBGOE8g/jiv0kG
FCgWVdrJBpmnZqLtxjh032XH9bh4SKsfmGp0O8AJjenXWlLpO8lEbsbTSPm3cnkMTQfPRuPwtmB4
FhVYeDk8OtkHUEsQbYuN/7nWIGNPqpYz0MD3JXAkHO1iQY5X66JEnZdB/frDAPy/MHAP+6pyZqfs
q2T28TsL9RDAtfJZKyy3Yl1Q/0me9fVg9x7XWIyuESiIt6sBBDvoTScHXk679xcFLpD0SXlwtWsx
Y5iNU2ofGsvM0QhD0rJwYv7WfBXldAg7Uqv+gb6lf68qOpyMriFtHic2L4l54ziCb/TIYsuNKNpD
n/mEviLVIi+GMZMDAvi9TKDE8yPCzVKA6oQr5lv/vPoEQKwQXlPuSm/ZSyFSIrJ7UGb0E/JFoiyN
OuEZgR8eGRZ41p962vgDYyvuYcOnAwwbWiwZTvDHh1k5n8lUhOwtEXF2f1BmLJrehxVZfQgl81HU
Y/bfJKmmTg6b0CZPi3bOQps8W7il3q6j7wMwORzC2Dim9kykfFLX2VyA+Zzn5UVaxGY1KfkwFLFD
Dv3qsCyOMUBgU4vhh7blFdgaqebSBjmhYZPmgDG/1+Y2U1Nh3YejaNf789ha3BzuvlfKcLUpCAan
20VEnAMCnbwB76i4w8IKT/+frr/JpWUfLXLFrw0ObctZzeZYUwH3+Y8qfrEff/V9pIMLDr9E8zTs
F0DEQgnqpbBIe++yE+0+H3BW2LJQfuof8ftOllmsPe6JnlohOtyPis6M4gcWjzvEm+9zNTU3vL28
KeWGIAl2GZ8EZwM50DfQ0gv1pIA4J/1z1/8PhBklVSoRYbJBCdVtJiYP9we1BOR12eptWOgf236k
t/9ts3xYUB7pRDJ627OKochaCnDBlzpAT8KKBObjYZ2OpQPdyOGPpBeEP2Q7O7sZs93bqOvqAJ5R
RioWkHsfQCO13+qnOSP2MkOH0sBLOS7q6sUO4pMfstWf9iUsDjzK5S4N4yPoBYUWnif7JaKqt4+t
OT+t0EM6O4qGbVUuPEkFnJmlcej7Kzuh3LrxoN/1GubvjfWV4yLZ5ifco8ZypPICYRZYE01VRVAf
IOm4DYblxy9vq2N5NF3ICYKf9k9uDG/xaDxEGVxpf9s/nYaDBqg1MTdmUNFIL9z2nqbGPau4wtLH
eyTWk5lokqOX9cnelJjYNqAqEtqIlNW0l+RxGfRdxxEMUl5Q5JEnxOZnQS9MaoiWjPd2Dmw54jl4
CGMteElHZ/6Wd27kHC0M/PRXormZPJgjTjEGndIxqPNZfR4L/sYcsuzFRhFtbzXyN/D0jdceJp7h
KqWqXPolBCjWrxXKltP8OlWH202R4JsM+9BNFL7w/2aVaeLIqq5i4kuifxhBlgDd6L32keyJKWLR
epsUG+x2ziWsAihSyFDHpdOtUw+snsVrEDMUNTtOxPV35JyjEpmjPPxKE/i3KnY4cIX6bWiB4LQO
Acc+d3eUj19e7kxyooe4j634ZdK+NVCNDL938oY6yedkdwuJ7xKvAU1YEvcoHjyO4QrwBB31vyXZ
H3hfJGlVug2hSKJAvKY4N+LJ0cAXcRkj+f9SJit1XrOw3I9QrJ+yl0y/KdkTkq9SZKhDnq1Xpe4x
l4KgHu5UFM3SetK8vr45I3AALDpoh2jdMvh00deZjiLMH6/ycX6wr65C9405BcWA75yiRMTzGkJL
EXGiOn9yg4TAq1byI04mdLcCnvQoXKhMmP2llJ3HYtPq6Wfp8+xlk3wzk673rjNjni7lunneYsMo
vconGMMbW8ug5h1u9eUpPFJkwS+Uh1U1HTl598n0B7+wZgLlUyIKAjxbrAqS0f9Q9mpn9j8odNi0
0x6t/NuszN1MudkVH3ML6AYw+5Xvhljt5sIp2Yjx5xAri4h0gO5hjSROhiAaH3gf1uivdIP8ZvZ+
x3x5PjAdn3bMM0GpWU/1ifxuGIQ7btv+/c8kXWNo77p71YWd0AXYJDCzctYCmUpuAdf9PH0E7/2Q
YFChWP/YzPJlqarCtGVVDKfAms7z5wG8W2X7qphrQZ6jk2XqMc+ottYVfioZPq4iErN3vGgl5RG1
1f84BITUo1xUpPH07mtndf2Z7ByqrvkepL0OH5meIvvogSJbhgZlOCbDKS/F8TK91S7tf0R79QOQ
tlSLOVnAAW9bVnem7euAZZWdm7U4PmCGWbrsIBG4Nqx0dAYwP85LZtTc5feePbCrXtrtqEoznSUF
NArlsr98coC8er+KC0fLXx7QzrnJZJ1iipwBLUKQ+TosztGYwc/VlSEvpvNPzT+Lmbhlf5rqnTIi
Ddj9RwCNiwpMdLm2cra3Ud+Jocu4aAfATo2u+OI7A7hHnYzntHrjjGsV6c3m8T/VNYxKzFG/njee
0uK0MZFdItgx9ti7KQmtG5S+y2m91FJb+kqe9ppKDKWxU+JAgWprQVmi4GEA/NPrwEN0D5wD4CWt
wbQFCnaH+IhIu0PtH8muZHzSgYKoGeVbfxC7iW7NpUJ8FsFlkGiaWKEYDiIR5+LfiksY/UM8i7+S
pJ02o9JEqukoZJFRCuqKTU5hscZcxSuZ37kcX6iQC+6hWRJrCe4XE2kInKoPUKSUL8/O/6x4gH1c
QzPWIZXl6PoQLNn4HLQv8Ceen8LaXbkzDtfxd6CIP9xhskyxbvsyIeBLfX4NDDlEO5U90WPXT268
NZiTMkV31WJ/2t5N9+qmkDgBfntSLVyLl+UwqSVIqwPOcsyRMbGZTCe/ewRtrMQhq1nUe5CpZrwp
C2NmmrkRkFKtZqfwUsa0b6nnXfAe3mE+1CSFSpxJtxariEA9kwoS3v0vhRQzf+teZvhzpdhqwIjt
VgWJEUXq+KntVBdrzWLF7VBYxXbptkUyQgqx1T3joplFPhakaYJE1Myw6Qlf8X/xeqbCgpP5enk0
OvfDPNhyZoNOuLWWaXtlh+tOLrTN2f1dNU3eSuM5QoJzmlrItLK3EXlvAN85xMN9thfN9yfD7vr2
tWWr4kXRNCh2brc3cBeckW4+Q8x/bC/K7ejHVWyZFPLBHuAVnu8dUJ7QonBkd6SLhsvnPIZMdn+s
m1hVHAUMl9iWQTZWwaPMeubsp62WbcUFO/DENb//28e5K1/HI1NfAFCPMVA/FzEj0kNvUip1YerT
UZmua5qDDaLGvMBJQvd2aSxmvqvRn/fqLOHCd3kFHPu1darrpWeHryRGViLgPKVFBOolzzrBDKyi
pU/wZNLS4E3eDgLzzckicJa9KGLuqXgwXYfokLlZtESFF0rki7ftAp0t4SoJ01M44iLvCWtYGgSv
hWjgGQTmi0YyXxd13L6IBsNEG1TJzT+r4dPNqX1n/TPzGDShpz7n4VEOTcVkdJCHqBYEcHvwUy8E
9iSGYayBFE3qwYMCpQXDbZPLLY84nsBudkYorcUtYEvt7dbUgxp2lZ7XZtCAkpk8uEJjiQ3+m8dg
xDVU7D71PJbSMGY1f6hfg9JfBSBRXToXMKIpFU+QPKMfDRgR7u6DYwXS+jMKkioKTsLRBJT2M8g4
NktJxce2ac5VwymPY0B4s0i+Ug0CzylY3WyvXb4+1ucypeHLMvUY3Anu1yyUs0ti+5Z6kyJld4Cb
NqIrDJxGNR8gHbbTbRRv53zre5suMeBXniSTdv7E4rhvklp1xpZtmX/LrN0M23ENNkLy6C29bc72
fOhck8aaJrZdXfbwDGvJcB+EK80NucIegkuS3toGemHt7EgChrkXXlq4PxTggX/SAufIV7mnnOop
jrHOCAEnAURG3yk2sszQ6mYPrNkraZ84CGKaP0rPydN0NgeoXCvJ7Aow6uRUX0wxHIWUPIaLAGo1
7lfwHGXu4wnDOstjNHgAKwVYjvcXm/jAh9+4Sw1GRAfEbCmm4P2IIj8cX265zn2konQKsKPZH7oz
3B/l5AfzAF4z6YjkUjngedKkCDfD+pdW2RSfx6+ydLJzxU8iUhpGiQeVEVOA/C4mP5J8VewyVa5X
B2PeQbixLfB4mLoZJjC0SCqnfa7D5WdJxkP3elZqffmNDBeICgpk1Vg/EZaqhfaF4DHR4iYRjllv
LZmWv8gS5e9G4C0HQ9hJI8hDWHIfK8yqGgSV85I5Wps2JcHRNX3s4A3XFU7y2kJjREKkYj+Q1IVB
Jy2BWbN6SDWJCt3NkKLyxAtSblip2+XJ4hp5wxvyfm8mAATMGoA2Cr+bxwm69IZFoq9GnsVCLk8T
wdddQKyszt4knpMnrzzkzQt6y4VZwFq0XEqjkjU8VhHOpsalkwXawqLyhabbA818/Oi98OYU8rvs
avqmjq7gdY69mJZ61mLTfXzAseXWwLES4yOy30pGBGwG/pHwPdk5qxAlStJCvvqPBKSEljxRpmHq
tbm+FTKBoEUdHL3Wyps6ix1cP8yVq0/7JhuzipCQm/5jxfkx16Q3e3NVnt3yB6rmXUB3Q0cdXGHF
ArS9KAWtU96x2GOsEUWe+tcNCnuaTbDQ1IPmH+IS2euSnlWFQL6uadbo/84z/quvaRsxi53wcDxL
DtT4IeG9MXNbHRj3Qw7xMsby3lqivyAxmv4TiG0FaANi//cNJNZbwrn3BMwlb+nrwnu46ZOFTGax
cw13rwr9WaQDoU0nlGZqRb+Wk+KWD/9E5TD59Me1bsz/rV/AdLpSOU0l5CieLlDtCiOR25RDWaRh
2xGSyxDTFtOG3g6lJf0d/uGLL7tnR9QUcGfe8AEAmLaHbfH0+ayLGuA/yZ5CwZhJ/DG7yHHd5ss5
LN3VKivGqyD//415Fu9qtD50VpC02652JJfbcqxux18e9V2yxf8iaLsGpl8zkE1fNeUJ72ESpm1P
/Xxxud6j/d07Tamo2JuBN0+X06y5lcu895jsAF2XlfEYa8GmnEMX3zHJaEXu0kURcS3nGQaflOLG
t3K21Wmx4bDCOntk1HFXYKR7LjsKcDAlYa/ayXg4sp62zFE0g1RHOvrzpnOmSfEVwcNtFIkLvoZh
SlB3MfOafY8OeWf4XI0UULl0LCpjootmTtFbJTH95a51eBjGy6m0ZIwdrTgxhEHQQJz1T5tG2KET
HxPZ89mTR7v6iAtdgkiZPBIPeFXGOkHobcFcyJyiiALfbirT7vjPPAHjdHX4jx8xwvcHUdJKESQF
GY5xJnlU/oA0OVimxWGDYc7K67ANuxStKxj9wQIrZUburWCJ6G5NDEY+olnP/MUOi6B3rmRp5+0a
GfXNVwpAAFdm544kyZBXT4pjLsp+aCgA3+jQqeHBrIs/FS7EZ7i6ppj8dfsKVxa9l++b1DSABzup
YC94OI4Q4LdUjULCkNLxP9YqupDVeN5HRMoIIy6tin9uqWsaETauPTSRC6jDbC0Vz8u0Rb01kKLd
UFwAx4xXVYZj6DHQLeAxN+ScaMiBL6ClCUGfdYN1wSSQsvVIJKG0lK8l+guMPWYMOffx91WlcaX2
P+E47dRxZhCch9UYprxO3d2JgRM8PURs6S8iWdm59E0zBigau+wNLAEfFZ+2URpl+3vyVu99owGJ
WlalDl9fRWFJCI0uK130Tyb3FV6MwHVEv3+7iBdmLfjr/ifys16IU2dNJkgUVordvkP3A1BlezXO
kMe3LbaJUWj+bKOwIqHrCU0s7NcVPC9t+PwdePo8EBXma0mz/grkWUNYZv5VE/h5X0gmPF6B/Scj
iMGl/YDsSN/ONpC6Z0+iz9k6uPKMuNDPuJJ5H9VFNR9XyNlWFRYHaHsJmebg+kIWWPOAXTs/OVXN
JXL+WpDUjKpGCdSGO5D2iOlZbEMU4kdkV4dDQ7mQZs9n8eX1JcckNvI7/9g21uem1fWkz/MZKNbN
ctD2jF2EVloOyFnzQGe520fYdXAMTc+be2OEVYwctt7bSHkN7mR6g+acgDBMScfXfMcHKoRJnxjj
h6KAwSjPDM9iLY4nTKdqSJCZh2GZNVXbIDuW/NfOygdesuUiDllHPtHHuJnOHjm9FM9QmrK+tpr3
dHxRmooWNT08uw6f1CBcx0QjDx9SMaoghOY8vYi2ACY5NmGhzmxBAv7Fz5atdAcqdsLSqdPvJPxU
tEJmq148Ox1fGdzf8ydR/Ye3yCeZIzK6SngQJNkddXWFoh3fuHxShITQFa/hN6wcRVyn6c8C7RYJ
BeP1XnCemFZwDZdgu0r9O/V8UW6v5YloCZ6tdFqf09tgSfln4vsKwn/042sOR4+a6xas/3RTIWRL
xplQoYAk7s23Jf7Uo+TfCIPbt/sQIieztlZ4LNGScZ/fwqjwMmMX7GBUJ3SvKS2RUQVULP1bEsuT
2kBYY+BiKYdkwHiDvACOLLP949cLz3IqGX58LLMCcx7EN+wjjGi5O9nDoMbfyt3f2rQqMkCxOtJG
TnR5Oz6RDRhibOal5/M6grzhf+YZrqqH1V9IH/HdMAW9otudG/Ac+IxKLnPMd40nLRCQudlFgOYm
ag9KdPc0p/IppBnZX4AMKnd3LshK5wc4gWAY5crNrgfXPw10xhiUzt7kR8KPIEoAw9H7RgQucvVQ
i7sc45pyN0NuwepGa2gLZESTdJU6Lurc5cv+FEHZIRldC22lto+To1mxmNDi+08/EC0Fwkd0mXmx
3K/3iEfIHRwQUpySBAmzoId1Mrz4+Z6MrGAqva1+Zgbtd5En+aYC3Wmv0AisIWXChvOEw51hALEy
mQJE6AsioQbyRA2S6EsssMVqwgXtRl8y1wzrualz+3W7G784M7+RmmE1O6CwlY0Xt8VT22rGMzQU
Ya9nAXw05mpisPfFr4yh/7ZypANLwe/7gvyW0AO53Jgn+ZTMjrAjznhCDgg8e+vWrVNsKE07Jl86
YZJNRbOoTEJLEl1Nm1KV4+ogvbx8tsTyXNqhCjpW6Yix+AFI/dTBmp14bsrlhFVwsQ6DAJlCFKDP
uiWVr4uY9NIxDPSEeB/DkLlPOhaKctI9oOtFYanF6mjVuNJF3RJGOEV+wvm4LMrkdXmd9bxKjV1R
5ogyIfNeJY4IXQEKHAseqBehii7NdZ6YPKEdFFpy4KSAvIPpc3BPXxMWRf7+eGFAYTJDA6cDK+y6
1h42tQCyHZCh2HXQs38v/BUD2N4UaU0a08KvqSBu5ll1mYgI4R8a4JgrYZ/bzf95ekrVsLh2407O
PzVdCCVKfHGVg2PRj6k+YZs3+bCEQPWpFv75Qx49CEkDaCRWeJsxHrhHcWOq/TXI1xesEuyBO5lD
/nOM5it3srIeOphIN3hX/WrM0xeiR3WBcyA0JEMP+QYeXGftp+9RRsu+JIpNvF4xUH/dSEPqmw+8
mgo9WS2fHFP8TyzwQmmWvzY8J5dfKF6MZjJvDQB2ZjGckf96vSRX6z4FYC3Voj/d9LM4QBTwD2Hc
EVd2A9lpdIVU3EdwUmJcCIUgHblV+vDgGxMhlZz1ZjHRCoM+MkvHzyRGkBwNz6E7izYx8pEYM1fL
XIg3XvrS+oqurwzZCYCdddZ6Df6JSbvMj73HpQhvJFB1Me2M5KMfoyp4HT+oXrvsAPo1Q9URvJCz
4BJaKHlZbgw+FpMhyBLjBX3SOtVFms/qTyocJVyFYYsse/AipLmsAjrk052G35+jYXdNhcx4Ykhj
C4ko0P9mRyUNvExKe1V92iLTnOdb9DBgouTEpfqoYSP0PiiAyVNt0V5MFtfHaR9SO1bip6letYiy
uxwST2IRib/yddUXp0a37XN+FcHE/hyFwk3JEWjtnYo7iHA8gUrLtyVEeLy3v1+yN9fGiCklEiIq
D2KC0iu8laXRe5UWJexGIBHywdPR0yRQx6VjUgQRVL346ReDHJSwooukszYoiYXsLSUCTO+CeuwL
ZbFm9WcmCHKDqv+I7ytKv0W3gdoyWP6Wj8uSkp+nd6ekpwTRrWNlulGhlQj4EAnq/0VQsHvlCGAQ
nlgt8SWuHRpuuIfbmiUiMhLOb7P5PPRtEfYiCWJ0uE59V7rGdQChyoq/WcnOHEzGRrk5LmCuRqe0
ALa7EkuPVNBi5aOhHL4hAjJzBZrt0fXIH7+M7s0h2Yr4OEi7oRB8xnaTRL2DUTVyOm/uPzhqTZY4
T9gxHSeoQ3htCw4a2aiHU9l70yMa4tuS7dajibaLPKtgaQBdSgqUQqfMyLSAnTCJbyeJAWodnfQs
wFLAiKO0hvrN8xuFOt2VIhKA2Y4hqnUMGhQXWyLS+JHUaWSXq/6dDWP84OnxezSwz1bBZD4eaZnL
yRzyJGjbRQndHKJ3tDcgT3CUamvmCXe0kYDQHH9boJ09EtIHkEVrgxeSg3Fa1N+Uy6uIgDAWj7EU
lJM+wkexouew2Ad6SWPYXUohhozEO4IElfhiDxLaWGZze7mqRy7o+Yjb7QU0RiQAYayC3uMXFg02
CgYvrJQ3++Jz25FNkqSpdUSBEY2pHJILKQFY7WPYbRBsLcGH9DM+DQdeEsIMPPs9w3dVk8pvwjFb
RPjTG18FaC0ULLY+afaUhHPKvWCIFZgHyRvkm+x0FfQ9Y5gjU21c8Z0BAzHILMm4QFCyjJI+p/Dj
uWbRO+kHbm+npHUvFWml2n8IKQs3F3jdO98weFmxf2C09Aabdja24mjyIbUGX0IpQ4LDsUHDaZiT
lg6vQ23jQkp4biLEpR0ROfwwzuZ4p6DF8nh/3Xi561sY0LxTrNRMes06G4gtPyqbTQohICb9054+
S8SdcrI7G9ciuApN+JuJbgFUiG0W911zx8qJbcWlu/BjCMsNgnoe+Az0ADxEOed5ujsiadoL+5Gm
XV9DMoNVjckNcL6xv9Vhzyb4OYQWMPLe8YR9qzYB+xFsW+XL1u81dBO2jo3o9tlm7bno9ByK6iaa
+867hP61oadaY2GDG9xNfI96GzBYF/IVIQY7CEIDjdkUpHQv6JVLX7LaPoxsFyuIX3dfJdJ557px
gULTHRnknvpzuud3aPF7HGkR5jN/NpJLW5kbg29Lb8dOcTQ/MDIWY7Inc73H2P3XBUptTuzwptTQ
XZU2bEyHchVgTf784lTLujIZCJITLr8FHIbGpPI5pK+xJdcbsE0fLwTlDAvtwaFpHE+vq9eIPACc
y1uaPEJVrpBFyqwIa59g+hGIxXmimqfPbf4v6lfd7hgzhCTuaqiqsXEFDtODyPuCNVjT1WQ3FbW6
TNp9uLc3ZZDCrw15g0zZS4IVM0VTfbznxUP1RRXwoEHDks2BBorjzYrB+X8sBA2x65kpwA04oi1H
nX1vQTgo+GbOpnAhtKIVHx9RaWjB7PPLV0ThLaI4hpMEqYvvcm9/uEg5SOtZQwvBqVDiRnqiy5Tm
jPB+DfgpOlmwu9UDAX151CvzP+D7vWGynKr5U8pZ5HNdl41m+1/RG86d6FvyQCNo4AmrJi6yVy77
VHeSRMS+WKybPotJ0zhoYBHDLBgE6XjQsngXOqXBTwSuVcVqnPSjnHtR/l29FK3EW1DSct6cSCjy
qwnCD/cf6kl+6pEznYlNz6cGL+Id+pikgeQBE/o/DpODV8zbqhglNAiYqeFbNmO6hWRzoxrRU2ss
AdfBowDHzQ1v2uISkEIqKgM3+i6dQmuqB3X5LMmmpPxJzf61bv7GOgzL9Qy9ynsKhW0tK98rkma6
zc8Hs/yRDN9PPKgz7Q2bdpXISvtcoTKNmLlBLdwO4mUu2tb9DI77v3GYffwMDUTgetb1Syop33Vp
jkWEc67biqYGp8flrNsV8TY1CgfJ6+Irok5oJf58faQOUxnjkZBoN7NkpcyOvzi4yiBVQCWkqmBe
maku5+QdXSgirkYDGFXLr9B11oqJSH8YejIUnYgcHU3f7eWZVFoPcxYe4coDOnoUjKARg3xAcSUI
B3IQ8dLbLIfGUVObr3xLK0Sj9Hl4nmK95hDN4fzOZOUkHuJA6D4hn6TPt8SHUmRk8ocXqEV+czUT
KYQFgVhGXfZMxgxXqdKF0/VzdVm62NCv6LbMwZzxy47cCPxJgl45dULBxo2rU599YbMNfPdmBK8v
QxUSKyDDiN7HTGkAmLeOiZPToUvSq6Tr9c8ZCReCG3QPqcQDNA4/PUw7o/5Y9UjtchmdMRt39vUc
aeA65EqJcUVoxnpifUm1kV2n8rnTt8fmuMp3XPIa51f0o46D7HxFQqY01nSA9lFJ88PFP3O+dV/q
ln/bVcR1z3l/aU8GPpBDwGSS5cQwIbDs003iJRuLgkCjgmJ/dCn7swQnlZ1Rs2rMoz4VnKXlTMyc
IDCBaMxfoh/pOkbv9RwmX+t7NmJgkL/MJ+TTtLQPklTMIrwdZC6GM32F2J5QyuDPSuH/ytAd/Neq
i5aNu/phH+sPb9yZ9zG8M2S8Ep04ms+RkYyVmPqGHnTc+IFDBdmatL7+HmmTUwQX8eglwoGPb5c6
qwG5cGBKL7kjt1xWfk2kejTU1Q9T/wLT4UR2Hjc1wvjAw69EumW2L4wX6nL5VSCCfA/95LZzX0zQ
Zc4Tu9ZqhL6zk5vsOpfDhjLZIVaCcXSU8pSBLKLi5CCuHj7Cuxrl/tXhvN7X3QfrmKVo5rUqYM19
jKViwRv8fnUgePFqo4JbyNjfaIDaQuPp2QqCNeQZy2j3slY0AEHKa6CnbhakgpfDa1Tzwr5LY2RV
5jEw/FAdT47WzdR/uPQ5Zp1iqPNmaZqhOc2BlTvttCySHY6doIp844yX3e5+B9GuvE4DUgtUV+q6
kBXHBMx5lJlPes2lfTAlzfPna6gTOEf7LDWQ4ml5/wwomAlEQIkoM6LELencwCVbAAu8SXsK2ycs
5cfAips3MNgaqTviHI65T2IxRLclPJVe6tnUx8zwVIBEM4qsXezI4j7uNn7IbgvzqzYuZ3ztFtUV
Ap1B4T5RkVzVziQrYG8+gLsIf22T/9uqT3ZWffA5FcQl1fBGCjTYjJ1u75rKk60FMwU3vI4bW6iH
Fe7qm5wb0Eq6WHJHG52kQYs0qr5B4MBDc29x4h8tn6uh0KBd4nf8HlN4GRBcTVVoF1E1SppVBvE5
MgYNMOOT3YcdKHOc9Z9+W0QHnLRx1AY7pJlqYkP5bqHTxzP6k40OgSYxfUQRZOcY8MN0vUg/YElO
1vMW3UlEn5NGuEyRDDI4yiObXaXD/HAKWe8CWjx3wimYfMVQmC7B4U6Y019reSCtJK2MzG+PRRT0
cYNgqRMSV2yt6XWRxXIJU9RuOtr7v9r1PS4gEBF2iDOgdaNNJSXRf0U8VrNBUUXfWmKz1cUQyKSn
GgxtJ9jgbCq5htjOKgu050ofcb5v9SOQ8mR6lfSO8RkHJEzd3G8WKj5Qur+dSYN1JUDt4IDiRaow
2LujldD3Lh3CwcbT0/Xad0UL+K/VNS6ax/L4lEWeOS8ZzIM5xigDSJ1geR0jK2D+qb6U5FvX25Gg
L6ASS1o3nKNQs6a1wIwoQ8T3Rc6IsWfk9abVCI14RzNigNUk9Y2e5r7KJzgE+3lMYUyiyPhTNqvi
e6xVw2+iniDe6z45C1Whw8lfUZwdmiOhu5VgWNYoHetfuxLvZNpW62bNaUUiCxsZgQiWh0ym0pHi
kLa4HZD3SBbSb1IEZbg1TCWOit/4xkJoFVyV8LVENHAyi2BwEC1dl9cR5SqoAwztW0zpKZ9TpKXF
bpU1vzGiqn4FuRpZCOI/BxoZaGEZlZRKZgZGcl6MpxcEJ+EJJbsIPWnPBypJFCTOFObPNzQrok9W
8e9+NmadV7caQTtfcbPdhktEqJ4e84s/g6ibibFg/nK5qr3fyho5aSCJKkKyYAv30juJNjwFC3o7
a19dr2PXmiug73EoqhG+4TbYx4wUPXarpz0g54NPOoLWk7kthkB1ADoVcdFtKhUqf5k9Sk+BLOCb
2stSn7Vo7whnOQpJkAYfR6RvFh3Ruz+8jxdlpXycOsmhF43UXEUmewBfPamP+R/IuHkM71O2w0Io
7pGqbv5T9RH1SMBbP+zCsa+WLuOc5FZk1XSdw539VWBSsexDb72Lok4IrXkZ2aHlLcER8DlXtmdi
KBjyB0tK8ZPEuAtajP/025LuacxaeZj2JT9l6Sakp0riuQ/bmYib1GL3wMmLLapGoKYs7Qsjeq0Q
SLojJJWY5zzTGHUgbZYARWVZVgTunnI+0jSPLnTjzhgP3Bt3sjMwNP4p62dQ5aml3Mh+Y10iTZ6T
AKeQMK/MzhNzTuerij6p9Hycdxkgq9qBxQhkG19/0qJrPj6CDVJnccH7UXwzUr3r8V0o292/2G/y
dtLSucS7onxffry5frRRkkV0y/dtB1Dmi7W/lAkmOvB7eZWhSqiy+KCUKTIvbGLeAqg/pmNY0IUp
zDpMG4esIVsU96ovR/QF5o3Q7GVA5rnl3AeOX4B2KtouCg03zPzNUrW7eAXthSJjJmpgjrhm3YU5
RztJyn200WRI/wLotys5NJu4gFWPemdpiDsN+JMjsHTJttH6uGke9zxT7vVg4dOhTmWicWAcar9d
orFPNsekTQ71lC9m+0mpv9Y33sLBKDl5iOSvLephEK4qX7g8V5Vd4eOBZl0bQnvJwS/hAnZ4XAqm
NkWSUysMH5e41HGJHcPiS2PklTyerNG4axqiDgaVo52//TgNTsr9AzDx5dVYTIIiBv0J5/neVBhQ
Ke7wDrIQ8X3Wi73nI9coiWPC4fNfC/Zky8qnJV10wvZBVZbkdvCF8ZJkPjtn7lV88+0e3ZXS56Yt
KULmDJDjO3Ee2qwvAhKC/1eEtdjC7pXYBPsrKuO19Ikqir7MLrOzyqVw/FC/cbg0PxdM4Bv9a6jb
Pf9NIsjEVrNk8oIBQHVgbsMNw82FzdRvwa2JThWUEEPBp4DpRqSQJTDQ54ysh4IpEgM/o2lSHIkP
J+ZUnoRCi6l31n+EBVFa69f4bjwQhUBpwGnj3KBP6rTjCs6a782bj6wja0EtWpEZDU9EbHx3hjyO
494XprWvQeYNAGWd+IK4i8BPVknMIkESD8DLzAX8dT2wE5RHKlsCuZQdsukpzZK6riT5lL6pdFjm
l432qCE47sPtWM50CBjzw6bWDNBusWn6Pkb/eksb16xnbq8pf0rXWf7XjjxufYzZNeHfnNojThKI
+Pf2OFOclQiWsj9kGcJXS9Lx/G7z4n1ADRp7mNy+UKnefVhndsxrX9pi++iPoVlXgL/69CXhFiki
+CA7FHPtvQXLcBm92i0QeDcppzMY49YaYHPx71UfiZx+BZmCHh/AV5YIEQTRFbfPvOm6g0YRkXPP
HtolFL8TUQX2oZQ1M7NLAm9MqC6OTDNEMrJIHTOuJMyogruakH8VvwIZNcEGTUKkU23x9cHXLyQF
z8CXAslwifBmPpBqGzzpsioDd6XJUkwG2IkyB0kU+C/mKRkd8tSgdF+vYMtcrQrl0bVij7OUR8kB
ES+4oAeO5KUIQJjK7LsH/F989a5HG9lOtEir85SI46HNFsMDERJRNzvj+HF7ilex7tQ0XsgHTWNi
NY5HirnoVrNJW24a6/OUtVSddE9yWgL27ouDA/nJ2tBW1j3DjIm0JyVvQVqyHhomNqxY4i6FXYVX
PdctVtHQsFNrabmST0jZcOlb+jJyl8J5sg/rIt/Mijzxt9KFyRRoVxwvIf1bzRKa4eizImkqe12A
wqTOuCrVedszR2lxP3C7ljtD+D/sxfPWSinKhmYie8uvKaQP5yBg6CmHe3RQocg7t1LP9qeuNbaG
QE8v4N/RpENsei4/BOtHaxGqOFT+GAO6iuNw2Zgfj2nCEbB0U2OEvfqfDIOc6NFnovY6cZzY0V7/
TX/wuL/3Tck67FUPktwEiAVuVxrF0JDEAYroR8sltNoTieZCfdM8L4Q+7Q+1+98ATAR505xPFzHo
Rqr/FfIWauGROaA+WrvaPoaX4h26vzlSaFqixrwKOsKEifGJvX8d9htfcRPmBvkssYat8vHRa4Ug
jRnIGcx8DcF/INZkit6fuWA2EnGWiF6A5JUzUiw9cb6K2ehBoRMKFOAsZLvHzmkfG/A7NNihjq+9
gYL+2oT3HqbceqdKHr/ilPzW7rTi/KK6MwvhQ0pIp0enUK5Mgo4zYht41WlwgjneNGDxobKNj1oP
L6AD0vsi1MY+q4p16LH9ZOpXY7TvyNxirFuRcYo0jFmhM27Dp4C/4LRn3g0OUZdnu3h6w/rMc9Nq
h+lM5BDulyUiruK5EJc6npBRdE5+QElJLxs0kEUB0BwkHMFxf/b7Kafxmzihs4ov87kZD2/VnQ97
j4H23Nj8X6djzqNvWdE48Ac3myuSLYoYUOdGTabuVOWVKv4P9YMqIzAPq9PQ7nCHdXPa5HAWiiOb
L5oXI6vBIOsQb4OOazTTPasERhwLWemGFVHKy7jjI6V9IC8TIVt0zV2IMVz293dFM5aovaM0j89P
cLslxQ1zRsjSw/SaE0WjjvUJHit9DzIeWKxM0Hz9TqfzZqJoaYlirdrOJAke03aLRwVK8zcc4Bjf
/yo8AF/McuEyfOogYvuAXiqAazDNcMoed3AEPPqiTQzF/CVF2VmFd83Q5rNNoDjVa1y8D7CJ5/8T
D07OuVcyGu/QCFgR15KY5jtqFmQ3FochXTjtY835Rz94nxv2rOkAQHRGaoTOfSTg1fFo9gDt6Ktv
ZUgw1hroqvIaxQSurPixQY6+d2w4B+x8b4SwsuXgwm6kVf7IIF0g202Iefs4zj86zQ/Qb9y8urkq
IHnwhSq4RJ/rUozSGSZqDwINpVpkRHBMrlGbI/GuClDHfTLTmpBW1QwiLUAcg7qTKeEzZk87Yhh9
OAWR5HrgNijZdI2ptkfBA+W9ezRzymLtjSq17BWNAjAQkOjOFx9nIOOL837QSi54ijis0RRLg7nz
Hls1w8xXB/lgR56acGq+qVp79RDdQKW+zvek6Meby8JhzbA0niaIdSlPe5mf5BcrXMmnEHpiRYr6
dtD1MtZdd9pm4qoWcWq9DclrP+kzj8gbG0LWyxlxelPfwg+6nlybDsPcU7bbIQZviODp/QP6e06n
+pWhfXMa+O8m5NRpCGhCCARTV9PWKUSZ0WQvN7sOsyPNWM+4X5Ul//48XbJGz+ChMqJzn8L252C/
lJl9UsCxZdn/TxMwZh1W2v+BRmKA1OWzu/CGxBFmKI2yOxCYYIYtxkKTLVMC8t8DOuYoTOwoIeUt
ZPVgpe8XVDBnZvbOA7SP7iSAx1gtuTGnV1OFW110gQiXkebiDl/NLkwcWCEMnlzEdS3z2autDwjy
OkvILpUuhv+CugZfxxJuI/pyAN3rfzP0TEdt2NCa3wtnSW/dhF444JZkTxn6+8/3KnUTKR+yEMN2
1WBq6zgmy/KVvEvaAPkHGHXWfRpSkgXgC0ITkIsRskcjdOEBwd7RKrp0qKVCPLqJLNU2Otct5lxE
7xFidfSe/siT/lplJolR4j34OAGG1tFYGjotDm3EhlqTppJy5VHPOkMX49lxPTvV6niN8q4/bjXD
Eh/2YyUjdlBBHl6I2TvgwzUdieBmKWp4fDKVFOyjptLaFCgSw58aZLun8ae54jYD/eeCPOCT+cvP
3rpica0gLEMJp7mW01cREJSoY/Mc7BMeRPQHCcM7+nLd2525BX8qmfcgkk2qn6r/5dcB0Z3WE8gc
jidvSAWdWvIPKE3CzAOwknAPX/dEYCjBT2uozVRkKzDIkFiJ+b3mZJC+B+ln8rE/UD6+5rXBU8Oi
5LSIg3bFGO7Z4CS/sZMCiz5KX8D+9ANwBhMyVORFpuFJxzlXVTTsNidgB4hXgyu1QjtNhMRLpQC0
3zCZZvfrJm/X91bDVcUQbxJ/Phi4Mt1jW8hUJ6YYsFjjv2IBFjZGvKWtbS5n1kLM5nVVuG7vXadX
Q0etHTd4wX39dCUXcTB2XZms9ZTvjawz6100FArs4C/IIG/dAMTiY8OB9DKYPugnwXP3M11q0549
z/fQrAKTmJ5Ae8C33tzpaTKDXGcjiDMnEoskPtulpZai9FmOJtmCPn8DaKbyAX8rVLSRHOUzhnVo
MMNyoWVNRLC6wGQYxj2ES3DKCe0wI0ri4y7R48TvDwxCa+A87Yo5RIgR3JdyjfLNBlm0w4axUgN8
XGyVGHe9dAelMs7dZpIdGSLf31rz7QMKKQjwDoO3KP0H87sapRIbmYS9VPgP8psP+ERPZhhwjAGg
T/z9DyoAhrWfV3vZ7Zxovj6yGgY9HQW/DxHbscGDbQ0YnsIChrPTuTLxTjpN2aKqK9PZltKCkMvs
gpQomqTH3jULxRei16KIjl7cquNh+yAaDK/0PL+3Tx8g1N4M6/GWh+lUl39Kc1FOHRNrcaGKeDdk
UWYTFcSwuNhstD0crsPkDhJ4jMDh2B3C4oTNjURvDCxx5spP206nVdCHeP7ZtO1vcZAB3E8SlP8A
DDsSv/yRypB5OlzYuSEGXYIyH/81gBjTBycjmTHIy3SFzyHAdzhc2XZ5DhhIr6AJeQAWUqBkpCMi
AWtdhjLyj+R5p0FNGNAPl0wb3js2Tq34c7YL/fzAqEpNlAymQmwyLjCJ8aEkjqMYfV5p3URSLf1P
jiimWkISd8orr8D0PaU4csr1uzf/xk1v4L2Yq27Z27Wzh6O7I5J52u9/EfbC+Zt2x1NzeAOlBkp0
fUNG6MaKfkq8Ri35T0X5o8xBXeKtsgOgBdY4BAaTdwYqaY8ix8VoUV2ffSKho87gbaTPjJqrcNra
uv+/4sZWQacH56YpGTPwk/2Vfq6LlN5mS8nmrqd8BUy8YWTCmYVeS7NY/RiL96yluef66yeJ4CLQ
Q0n9ItXOQtrXGPg+88MrLCQUACgHmudgBCiSpWSGtLkN8iRT4RzVuXiilsyOndKcPcS724d+40Q9
kD+NgdybSN7XIfo1U/VRbEVqxMJrFriHRBcnf5Yg0eMPgtZU3qLLccfpQhaygUFa/FaRxxdxuMTD
fQKNIYPRI7dmCTm7lw1xIEdSgRFzJWDmwGFgRxMWwQ+15qSGmG29fQ8+e49AlSSZCF51cLXFq8H9
XLRKwqxsR446pxt+oDV8b6TzBPhzfsc7JaaoRhhTmYdQsNcHT5aGilOIXOcltyW4ZXExTujxoDR1
mrjjxOlbDxddw5F7iHk/OttCCzxyvN3GZuGWkDLMs1B5+JvfQkHGJyzTyY6na8yQAt7nF90QZGnm
zg3UHDU8hHIgQ3YoHYWJFoZUwYN+FxHCt5skBHP8cAzamptqns8352cfamI3DkQgd3qs7RaIuQLv
pcOquZGIJ0uFXK46Jdty3VGCLSeosy2lWrBRRKzrH6jyld6XVwz1qr3UNICilHUm6yD8hxPsIN83
DEWVmsAVqLlGkgYA7gJ5jSYI4bGox715tO6ZGHvRuY4u0TBRqyNBUDvPXOuBCvVyvtLXu9+M5ysX
GxtOQK3Mf+I4kIKfy12kwMUi+zlRGbZOKiwn45wDEc9JaENPZtsAmNlKs1kIseFIH3BVhz4sV9km
KsXmMrcdDCc2axhOFEsyoErbL7bWkWZeL0rVW9Zx/ucD+zbSL35xb+aSE7f0H1NORO6wqGNhw6Up
nYuR7xMS/Bd9Xand2jAMIAFlkImBX93UtF/iVyuY9HYGRfUK8IouJ+03gfhGpMlQTQdbGsqMSFR9
5LTu2hdbn20rkkMzHhqFjAxKa9/hdp4v4WAZpodrpoFeQzIq8G8YRVsSCshB3QI1LEVuF8KhcCcu
K+kVGqfXokyYDj3OV7J1m0uZZE3d0XLf+BVPYEBNJ8sSKoX9I6UQXawvGQYQ8VxhVeHFl9sheoum
O94Rnjrs3q+eHcmdLK/KRHmWobXY4X6wfsA2//c4Ob7ZiyQoiTA+vD0QIC40nmpIHAq2xwt5a6lZ
9ChYHztxC2ZQnPbcUoccPuGD55h63ZTY8q5GViAxaebFH8YQ4nIPtwNq1iXq65Sdb1OBuxOV8Hl3
z/yvHjWkaJKUDt94sFNGjBWMD9o1+fl5NNLW5JEEeQlY2vQ6TOglbBLBgyRweCg/PcBl0e4aDQsl
Z5oAw41J/PL5k7T1r2jPLM4E0XqWIwAKg7lW9FweIKtEm7AbivVzL+B78TYW5/3NftU8XoHK87XS
4Uimw7lW1+3znECbFGojSFuoKMnSVQcV7od3pUcJxvqamPuryd3M3J+pP/L689JGzRXGe/HVWyEY
EWUyFi2fwpy8LT/290JeidvpPYqy6s3Eax86VmSmPgNyJE22nSYma8l7V7WynEMAJsBBNdTmgxiI
lt4mOopah9Ntc7eGw9iLgldF3fRXJjTrAKMGggsr8dFxnWgkdk+6GRSjt1CQyXIzGGe+gWii3QPR
xBIo8DupF7gzo5LNZeYGsvrdYGbmf7ojMcoIIcIMrd+OKL59yVS+GRU0YMDBFzixdSA0OwppNxeL
YWQ7kv5HGikT4ebniXpOe7oBCeDHiGSUuMz1S+K9xqqigzg1bdTOK1UKwqK3rCUxJHbPww22u7F+
iWlDbkYzJemn3VAIjy/jRWQf41qVIfJuoFe4M5Ij9ojOtzj3CYmDeFwba1FObEDCrGWTEIwWuWu+
J0gacCz0gvhgUXhyxnIoD8+J29MYsSU5haPoxHDybHYd5ZcQ7hmfK6zw3s1T13tngobgMDIaSU8E
CnLBiZyrxPxx1w==
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
