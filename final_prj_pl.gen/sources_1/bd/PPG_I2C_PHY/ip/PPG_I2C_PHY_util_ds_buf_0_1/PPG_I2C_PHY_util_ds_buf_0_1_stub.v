// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Tue Jul 22 21:35:32 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/final_prj/final_prj_pl/final_prj_pl.gen/sources_1/bd/PPG_I2C_PHY/ip/PPG_I2C_PHY_util_ds_buf_0_1/PPG_I2C_PHY_util_ds_buf_0_1_stub.v
// Design      : PPG_I2C_PHY_util_ds_buf_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PPG_I2C_PHY_util_ds_buf_0_1,util_ds_buf,{}" *) (* core_generation_info = "PPG_I2C_PHY_util_ds_buf_0_1,util_ds_buf,{x_ipProduct=Vivado 2024.2.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_ds_buf,x_ipVersion=2.2,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_SIZE=1,C_BUF_TYPE=IOBUF,C_BUFGCE_DIV=1,C_BUFG_GT_SYNC=0,C_OBUFDS_GTE5_ADV=00,C_REFCLK_ICNTL_TX=00000,C_SIM_DEVICE=VERSAL_AI_CORE_ES1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "util_ds_buf,Vivado 2024.2.2" *) 
module PPG_I2C_PHY_util_ds_buf_0_1(IOBUF_IO_T, IOBUF_IO_I, IOBUF_IO_O, 
  IOBUF_IO_IO)
/* synthesis syn_black_box black_box_pad_pin="IOBUF_IO_T[0:0],IOBUF_IO_I[0:0],IOBUF_IO_O[0:0],IOBUF_IO_IO[0:0]" */;
  input [0:0]IOBUF_IO_T;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IOBUF_IO_I CLK" *) (* x_interface_mode = "slave IOBUF_IO_I" *) (* x_interface_parameter = "XIL_INTERFACENAME IOBUF_IO_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input [0:0]IOBUF_IO_I;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IOBUF_IO_O CLK" *) (* x_interface_mode = "master IOBUF_IO_O" *) (* x_interface_parameter = "XIL_INTERFACENAME IOBUF_IO_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN PPG_I2C_PHY_util_ds_buf_0_1_IOBUF_IO_O, INSERT_VIP 0" *) output [0:0]IOBUF_IO_O;
  inout [0:0]IOBUF_IO_IO;
endmodule
