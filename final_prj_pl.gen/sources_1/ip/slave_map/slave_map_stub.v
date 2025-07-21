// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
// Date        : Wed Oct 27 15:37:39 2021
// Host        : DESKTOP-8F4L95K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FXC2024/FXC2024_01151_V6_1025/FXC2024_01151_V6/top.gen/sources_1/ip/slave_map/slave_map_stub.v
// Design      : slave_map
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1.1" *)
module slave_map(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[6:0],dina[7:0],douta[7:0],clkb,web[0:0],addrb[6:0],dinb[7:0],doutb[7:0]" */;
  input clka;
  input [0:0]wea;
  input [6:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input [0:0]web;
  input [6:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
endmodule
