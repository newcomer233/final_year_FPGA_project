// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Thu Jun 19 14:25:56 2025
// Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spi_ram_sim_netlist.v
// Design      : spi_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spi_ram,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.333724 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "spi_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_10 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Vo/CdCry+4XqWyOAGIjJkQxiiFmxV56JJA9+DRAoA73w3PX/VB2Q5+hs51IJHJDQpfz8b+RkWiDc
wzwfz369ViGuppNv4dXlNznLJnJnC7EiskELf02DdJnWWoSZpu+OHK3OSBEQ/zsd9Jo2Fo1W/rmW
MGZUU/6yH18wHS4h1Ks=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0wk1VmWYpT58dDId4XJkh8egEYIlbnZZOGeyGy5kRkRnXHqDOWQ+oylx90YDv9xCL7Hk4eMKPCF2
m4MOF7S4hVPD0/sWpEA8P8FAe8xJ87dKWSVL4jsUlHtRrOJgD7GALPmxmP7Si18wN1nhP/Em10F8
/dLfzgj1xP3Zf5H9fEp2GcwX2TuABOVnDWshUVbBokKz/60SbCSepujD00YwhBntPBKLjT63NlmT
RTSjuWX0rpXlxj6VOXIYSdG7RSLBcpnJy64tUezG1b35R+o5DxZXCqjet77d6quzpY0zZZt9Ulht
JmIAuDRf34NavmVAN7Mtd0cnmfoh7ogGicjKvQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F/wTwmHmqba+ezt7048nG7m9PFcFX8+e1ugB8tNrzJbpZSuJRRd6CQfWgrFM6z3Lt+Xnv27fU91W
7UPwQzlK1jnTliJBxoAq1fE2EHH6Meu6+HJfRVpgJ7fg13fbfZIfHUvNXIsh98f9heu0jLNI6weE
/vvav4FblngbAAYUgd0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PMW8encF5gzdNpDYeC/r8ImvAQhXqmTUs6jwRDNtn48A6Ujylle4R1SCnyZkY+FJKwRrbwQYM5xZ
q0WAIHjuqQu9pP4jSz77dIgvrGNt/Jq52Ez+a8pAE/wAoX0RiMsIeHFJYKfkmGjaCqeRtGDmk3BV
9+dy4HcmsDt9Uh4xvFjdpggdkLbiE5tjHgzwTlr5njpIBBM3Mc6IQE9aae7pv8wKGZh0ty66qFAn
4S9+ebhRZxOoWu/Dy19sbR1RkcJRag8MPJw9oRctKzduV4AF5TwH1waH32OTyX1p1716Vo25yin9
+rz315JRpqTLSkZJDH0UVGxiqyJ73W6GTzGjvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y9dtFDZe/9fosnZUVejOdy+XS5PuLJ0yXHKg9fuNlibvaa70MDgcUmFI1aUQMIXkh/nyrlAYhEOw
ZYwLUiCgGX9gv4rJdGQtx6W5YHqEqKc6ojSRxBAaLdRpzdYB0DpW8oIbjnXFf7e1yx+LS0ZeRvga
Fh2UzEgqmwMNRgmnJM4j2rvUiRrhCjtiaXlkc9pB80ojbMz6j5O0jOYRDx8scLtA39zyl6jlHXkZ
0NhLqQuJbbWjmec6JRtGnaM5QouDbk+MW/fNkDY31kIbegNsEOLQpMNJ83TJH5kTnsHlY9l+0XJ4
tN8eHqmH3rYC3OGyXe7Fa8ZFq6ms3GQKGeMfhA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cxjMtMSESPI2+yc8BX2YuZW6C3RMyKfgTvyd4r8Gx1wWxH8i+oZbwjGEFrD70y8NIz21xljoxFEk
JmtYWVokBQDW3gKLSJSvxmzp0T6nMPTGtNrpUDalO3XojGO7PY5zxMgZP7ntyQop50FaRZncfqcN
5w5hYNWywr3sHm14iUZQvYkjfpfI/X0gHmaRZTUBwZnVc3yZYPKpIi/5HdJ0+dh3SqEErHU3sVTy
bnAyZkhEZ9ZbLjELJ9twQdIRF4MiHKefy97m/3WdDg2YAmsDhwVJqEDSQRrhJ1qxyCHTjvccibuz
u7FvVmHfh6hk1tUEJgfJBY2OFz8zJE//prc5iA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ez5C57juA3+sjvTiTimQXL3ngWJqcGkQ5hv2jVBj+qRGyMllvIQOBQlpQ+bYLkOWnTv/S8+6PSxT
jUx6SYCJfbiumC5jC3z/QW4c0ZC4XzIFAgVdN4am8yXHRSI8ApBLYsSyfpVsI2zGpgVek+1s684p
Gx2VLV1Wwf3TcgyHHu6+yizJ+IJrkFjBOqaNptlbq1bdEtVxRkNyJiuKh3hzbPmt386lGeCpCmeS
Ci/w6goqagrSZZ7CwRDpp6J+IHjwRIUheUuNWzxQKdW+FCjw9qNPCND4sELBajCtfBQzY23j6RZD
kUanS7/EEh2ctRvZ6ckx/Y0zFNJYqHo8Lc56aA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HJCYSjhpgL6sqdTzuctiBLPlx6fhwuFI2l891REPcV2cKYvrbMCYI17hADRbvcxNH4paQ5/fmqeb
rE9BqB08LRASMx7jlAdSCYKA99cNcVMsByGT1l32kX7+Gtt27iKAIwVTu34+moPXqCCM4c6jUBzB
+UAJGBtS2wc0k+kTtXp6dCXiyjYXC2UFEDt8w9CU1qb2TXkPpgxXcfR4skit7umjdS0NxiP88l7x
PvAeoTea8Nw3NyDr9766x8Q1W1rRkuRmL+1VM37vp+BJsf6MNpeE5FNpkrhdCjc0D3dtRQVsCStO
scOhLAnzS45HjTjy9siiiNpJhXtCEr+5PWuEXVj4OC+yevy5VFcClOy11RiGXUho3zn1YnCjvFUJ
HO4BCq9TThOthuOExIiymQlqo0juTKNFELWCzlCbbJMDntY4twIW1uyY76cuBTeqq0r6SuzbelbH
iF1J/Ai1WoG1NEn6/Ld8lGm+aTPi/mRUvBbdYq6Xx0I1hJ/lrwpbbvpZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
i2BfTRuoHRFB8ZXhJCQrSS5Kh/ofOKU6mrd8mOrx1SgmsHKu6td+g6cqGS2nIDZbr1QjP33k7Zjp
xKd5lImYtNz1lFR34XzdVY1YY4Mz0QRDBjsP/kAJr7DZAqZjrJAO3md/zSG8f5SaAh8iTo+EBM+6
afCMZ6ich+nq02odtxrZ5Uhzoa2vt9DW4DcnXj+tuoKWUoRKcWxCrh31TNiwS2b4E/El43/B29XG
FxzmoEh4GH3ZaiuU113Ld+/xkQRsMLFn1JubodEkM9sNeTHfppPAGwjUgCzk8/2hXirRJu/XaML9
VWT5S7x5yGlmti7sQnP9kzJJRUcjTTJzgE5KOQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FexSVDj1WIebhRipXI5Gh3YLSX845WpAldeuElSHB0huSoXz+Np2tkseCkkF2eCCt8CNhVExuuEr
7/KHUlFqvHa9DLpKIOLmNFWiy8Ay2iuzmmxyL/MPPn/teKD2VjFeD6ssY8l2BwKbCD73MswOuiCc
spGmyJ2i3k6JMBpL+zswzmIpKJ3j76vYQF+o5HgmDtaakOUGTD1nQNPMyZ1ZBD9AvAC9J3eY8qZS
1Wdw7OXuMZ5CZutq7JXBHnLE0i4Zgcf2nWCg+gKKgvBZXlGpEkhs30/caJ4SGThuIkRNEUsnHcfp
jA52TVN8H4BdzJH3hCTxAhB1e5lNWlKwQ+gYEw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lu5hRxSLFQyLllOA9u5s1HixJJG7j3i4H09yHKiH8Dp26PhhohxwUADFKakrM7CdHL8s7BqigcX0
gERo4eIo8tMf2dBC9mu7P36rm9gCwpvvyiCA52BzF7pay+3P1pMoTC4HhwPNE6jjh2wytbNC11dG
Vy58tmmu3wmLHagXe6TbdJpcYT31yQaqmU4KGKa1xKkiI3FyGRm/MzXZcSfTCQjCiqGXQH1Lnapo
2W3GdrN+nv+SFjJe5j5+T3lxn/fmOusE1hz0LsLbVXEY8ARKrO1m0K91l+AQO9q+hPuF5pSAyHKv
VzZ6TlJOmIhHrqSknN1Au5CIrbyauNSDELtQiw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21216)
`pragma protect data_block
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
OiiVw3d/oSGR070U
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
