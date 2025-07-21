// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
// Date        : Wed Oct 27 15:37:39 2021
// Host        : DESKTOP-8F4L95K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FXC2024/FXC2024_01151_V6_1025/FXC2024_01151_V6/top.gen/sources_1/ip/slave_map/slave_map_sim_netlist.v
// Design      : slave_map
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "slave_map,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module slave_map
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7573 mW" *) 
  (* C_FAMILY = "zynq" *) 
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
  (* C_INIT_FILE = "slave_map.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  slave_map_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AkuQNVPNY9+9shMIkhpLTksKYrmlYMDGELxZLzmEPmLmFFG9PK80BYONcHXcZt8RiZ9O4/CnrQBC
CVpNwGDzEFNEWb1E+sBT/kwiiPAYmNaiRmMA5uIjzREW9RN/QihrFSNbz9zPzQr9UXcnxR3GSqWN
lwBLZZXmEQKLijApRzA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uGvdVCe9dp9nrbuubxG4+gQOK8OqdFhfcZHi5WZh5LUwYFXWH/D9RZ2OIoa/GNhkIOKyLOd09nUA
CjPJL1Nnl1l77ChKwzIi3B+v7DkXtXmf86gR6YYyR7az2jc4B3YMVYPNvhfV0zLRWZe9c5Chjj0W
wVmfrgc9GFBoKXG9SyXTNJy2RU68/gTNie3vug3tpc22+aT8NrQpWHH8WA9zIHKTZmW18Ul5Mpks
SeoknAEaZSK7eRFnpVgIYTvtL4CnspbFX8GGCj099WRZFkdAp0NrxlMJ5Gf0w4p+2RGGX7vdNCcU
zcV5qRtwLGYeKoO2fDGSiXlO1R2b6xeGr3vj4w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tpswLO8DyUkGLxrQBs3HsoCtlUARDpnz+ZPysfe04xgDUSvShZeLQRsfide+SSGU0zlcxgqmMx7/
sTH+YWieiyzXUqv56irKwHA0AJ9wS6qNQFoZWsP4prhN937PdsveCnzPbNhOydY+1/g9Acyf1Yfa
yKmBMA36vbj+Kxb4Ipc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AEY57OZMes7pulhuoLcYvSAS+/aEhKjZLskUu4V7Qt6I/eANyPs8vD4J9UVBPuToMfvwCjBI9yUY
mYBT28pBr293y15iVzjM7U+o6HwIGHULsfRqT1KVwFdraGywVWN/3+qZhvBIPDaA+4Px2sjTEgnu
kNzWyI2HIdbACM2ack1JQBmEr4k0KLI9PuV59OSOZwjtC7D6oDBUKg/RvN8FSv8Q9XANV03FQ67X
qP9ahH0HKuC7cr9KZFpqS+R2ULWwnBF/q98CuEAzPbTct7xFb+pvzrA5NND7EqBa0lJwlpDsALOE
w7L/EWa5qbTyryNZGhLM/A3uPeyIlo/pD3dVrg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XNTUosZBY5NKWe2dKcWY9/oG7CSX05DvgGf/33143aPkF7YqCLfxQH12oX+QkD25LDeH4/pCDZoQ
kfG/BpYQsbRjQJ3qwMirs/YOWG18OyvBWmLYyiMSxmrFUISda4GbymyfLybE0CeUYI1POTpUPMhF
kjoBBalr4I61BvCIztfFjQ2Y1F3JePYHe6+7Neb3cMwk+/DX976CxQ20Js9GcWA/2KD2Yz0fn9UH
FTcl8C+Q8IJJTgD3HwEhbAfnKjjY8aqqMa5Iq5bvmjy2WLHDeoSfpQqYT4jrbeAD/ZkqHfGaxvm0
s7c6aaymQIJLM0WiWbuBRf7b38vwav8SWIDaLQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CLboCUCRaPMUWmMgyNL7H93EZP6I4nnXrzkfrbP/rTungNHg9RpJ1qyE5kM+ywUKYufMY0AZtlSW
8HIBWuYCXK0QNt1HNyd/twqV1VT1dmVvjuPgbw6BSNH/iPx2qCO1U33Gieqh2S36LEWMRd3cW0gi
Lq6JrEtuqdIbFHzjU+8hGXefnaat161MGp61BJkNHiMg7yh36dg1AAXEaxT0zHQQtVusUvrrdDUN
zQ9TRiJCOxjx8iSrWizGNZlzBQLbD3l1iX5R9GnLbJC2fvrFLGY3Rywc3VTTTNGKMPSL7wXHnlPm
05R7GJOob3f8EkqncfqDDp8otA4ov4sJ1i2WSQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PbAQGy4IhNDuhR8PCDbgGk3HDa4XnOAIouyGUyEHL8cTh4UJAseSGUwW1sKr7gq3+Gmob6NOpt0u
dTuHVGxvQ4LnINyUUSelFaKv6JB21ows4FQ4TwvsKCpMHRJuZwQf+590t+TstWEIGfdcyOT6+abG
1nllgTprfFdtSsjmJ8rd52PaWNfBrmGaUwPud/ecnyojtfMpKbio6ZuqdO7qe/nf/R5Zvifh/eNg
gFBfKqmAXGeGRD86VfWt7vuPSkzNysLL2YJ3l/fkuItmMhQhOjzHeYWBQSrB914OxjlKplIB4FLq
YepxejZubRUADKaJq10UAQtWULSJAI/qV7w2UQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
PskPdtTd7KI9QcaMe/NiJfTBEYITLKIdUHDNINhTMdlNiMBqltYAbQmcGvos7o3y0BU7X+4d8O8X
ZjTN2mRBqbUQFwd8AHDNIBv2LL3WWX7vYXCYneRyl2MVrHCCTDpMsjx637Pv11Yy4WKDrpJMHY5I
4fbL+sJbViJY5oYxwNc9bMyoTs/AVNB65Mmm2efzBHaLoQXLYh8tpPmRkYvch2zIOhwXH7QyoAHJ
2PKRhlCz7e39svplWvfFzQubaNEmrMbIp9p3YyBL/1Tyzj6H6PlemVM9+j8vWKDqFOOWHtobQfWX
q8ijm2GV9t7lKgxbo6NNAylMBtyzYF6MjfTwBPDQ7gOx6BqHmPf6V0zvB4Y4F7MVgt4SSmZHZD9t
jTshmVJ+V9o47R7NlH7lJ5dHRf5u3p/S5KjbYrhf6UYCyNJ0tn6RMTVGec+j/GCyMI53SkT4NLFa
fQXfm1FBcXL6SJ0umRSTmMx09BDtyfW0SgUZBuqXbkCutrwrTh2MEtkk

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DEeTNgyxYOF3lbvn0F9RsjOAmrZ+YNXOCSQTbK3G4fn9fY5wWq3QlHc08tvj9DscqvTuKY5tcuO2
/I+uczqNJ8bPDC0KfoGBaSKWO0YqsRZiuMCJMxehhSMs2fJrQNjUOffpMOYFN3Wwq2rQwoJ0/5sv
ch2vmDdsOqby6rxFXn64ox5KKGYhpF5a32zr/6QaVQrfr2CvXJcMsGFfFx9VatfHkYVFaD0Ib5Je
4GFAm6Qp7TqL100np135fnbUiSeCk1VkUkpzQpWSi55E1ppywrsaW+LxRSbX1u5BVmnSkKfbNnVJ
jtTWZvAHLkNPaa/K2U/zUji8wkMZ0XAGkjWuWA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21008)
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
