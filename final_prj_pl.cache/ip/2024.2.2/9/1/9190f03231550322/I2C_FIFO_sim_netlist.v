// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Thu Jun 19 14:25:57 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ I2C_FIFO_sim_netlist.v
// Design      : I2C_FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_FIFO,fifo_generator_v13_2_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53184)
`pragma protect data_block
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
+l0q
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
