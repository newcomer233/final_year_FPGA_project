//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Mon Jun 30 11:54:20 2025
//Host        : LAPTOP-VEGJAO5A running 64-bit major release  (build 9200)
//Command     : generate_target PPG_I2C_PHY.bd
//Design      : PPG_I2C_PHY
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PPG_I2C_PHY,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PPG_I2C_PHY,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "PPG_I2C_PHY.hwdef" *) 
module PPG_I2C_PHY
   (I2C_SCL,
    I2C_SDA,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    gpo,
    iic2intc_irpt,
    s_axi_aclk,
    s_axi_aresetn);
  inout [0:0]I2C_SCL;
  inout [0:0]I2C_SDA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PPG_I2C_PHY_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [8:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [8:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  output [0:0]gpo;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IIC2INTC_IRPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IIC2INTC_IRPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output iic2intc_irpt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN PPG_I2C_PHY_s_axi_aclk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;

  wire [0:0]I2C_SCL;
  wire [0:0]I2C_SDA;
  wire [0:0]SCL;
  wire [0:0]SDA;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DONT_TOUCH *) wire [8:0]S_AXI_0_1_ARADDR;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DONT_TOUCH *) wire S_AXI_0_1_ARREADY;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DONT_TOUCH *) wire S_AXI_0_1_ARVALID;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DONT_TOUCH *) wire [8:0]S_AXI_0_1_AWADDR;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DONT_TOUCH *) wire S_AXI_0_1_AWREADY;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DONT_TOUCH *) wire S_AXI_0_1_AWVALID;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DONT_TOUCH *) wire S_AXI_0_1_BREADY;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_0_1_BRESP;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DONT_TOUCH *) wire S_AXI_0_1_BVALID;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DONT_TOUCH *) wire [31:0]S_AXI_0_1_RDATA;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DONT_TOUCH *) wire S_AXI_0_1_RREADY;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_0_1_RRESP;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DONT_TOUCH *) wire S_AXI_0_1_RVALID;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DONT_TOUCH *) wire [31:0]S_AXI_0_1_WDATA;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DONT_TOUCH *) wire S_AXI_0_1_WREADY;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DONT_TOUCH *) wire [3:0]S_AXI_0_1_WSTRB;
  (* CONN_BUS_INFO = "S_AXI_0_1 xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DONT_TOUCH *) wire S_AXI_0_1_WVALID;
  wire axi_iic_scl_o;
  wire axi_iic_scl_t;
  wire axi_iic_sda_o;
  wire axi_iic_sda_t;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk_0_1;
  wire s_axi_aresetn_0_1;

  assign S_AXI_0_1_ARADDR = S_AXI_araddr[8:0];
  assign S_AXI_0_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_0_1_AWADDR = S_AXI_awaddr[8:0];
  assign S_AXI_0_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_0_1_BREADY = S_AXI_bready;
  assign S_AXI_0_1_RREADY = S_AXI_rready;
  assign S_AXI_0_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_0_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_0_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_0_1_ARREADY;
  assign S_AXI_awready = S_AXI_0_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_AXI_bvalid = S_AXI_0_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_0_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_AXI_rvalid = S_AXI_0_1_RVALID;
  assign S_AXI_wready = S_AXI_0_1_WREADY;
  assign s_axi_aclk_0_1 = s_axi_aclk;
  assign s_axi_aresetn_0_1 = s_axi_aresetn;
  PPG_I2C_PHY_ila_0_0 I2C_ILA
       (.clk(s_axi_aclk_0_1),
        .probe0(SCL),
        .probe1(SDA));
  PPG_I2C_PHY_system_ila_0_0 IIC_AXI_ILA
       (.SLOT_0_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_0_1_ARADDR}),
        .SLOT_0_AXI_arready(S_AXI_0_1_ARREADY),
        .SLOT_0_AXI_arvalid(S_AXI_0_1_ARVALID),
        .SLOT_0_AXI_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_0_1_AWADDR}),
        .SLOT_0_AXI_awready(S_AXI_0_1_AWREADY),
        .SLOT_0_AXI_awvalid(S_AXI_0_1_AWVALID),
        .SLOT_0_AXI_bready(S_AXI_0_1_BREADY),
        .SLOT_0_AXI_bresp(S_AXI_0_1_BRESP),
        .SLOT_0_AXI_bvalid(S_AXI_0_1_BVALID),
        .SLOT_0_AXI_rdata(S_AXI_0_1_RDATA),
        .SLOT_0_AXI_rready(S_AXI_0_1_RREADY),
        .SLOT_0_AXI_rresp(S_AXI_0_1_RRESP),
        .SLOT_0_AXI_rvalid(S_AXI_0_1_RVALID),
        .SLOT_0_AXI_wdata(S_AXI_0_1_WDATA),
        .SLOT_0_AXI_wready(S_AXI_0_1_WREADY),
        .SLOT_0_AXI_wstrb(S_AXI_0_1_WSTRB),
        .SLOT_0_AXI_wvalid(S_AXI_0_1_WVALID),
        .clk(s_axi_aclk_0_1),
        .resetn(s_axi_aresetn_0_1));
  PPG_I2C_PHY_util_ds_buf_0_0 SCL_BUF
       (.IOBUF_IO_I(axi_iic_scl_o),
        .IOBUF_IO_IO(I2C_SCL),
        .IOBUF_IO_O(SCL),
        .IOBUF_IO_T(axi_iic_scl_t));
  PPG_I2C_PHY_util_ds_buf_0_1 SDA_BUF
       (.IOBUF_IO_I(axi_iic_sda_o),
        .IOBUF_IO_IO(I2C_SDA),
        .IOBUF_IO_O(SDA),
        .IOBUF_IO_T(axi_iic_sda_t));
  PPG_I2C_PHY_axi_iic_0_0 axi_iic
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(S_AXI_0_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arready(S_AXI_0_1_ARREADY),
        .s_axi_arvalid(S_AXI_0_1_ARVALID),
        .s_axi_awaddr(S_AXI_0_1_AWADDR),
        .s_axi_awready(S_AXI_0_1_AWREADY),
        .s_axi_awvalid(S_AXI_0_1_AWVALID),
        .s_axi_bready(S_AXI_0_1_BREADY),
        .s_axi_bresp(S_AXI_0_1_BRESP),
        .s_axi_bvalid(S_AXI_0_1_BVALID),
        .s_axi_rdata(S_AXI_0_1_RDATA),
        .s_axi_rready(S_AXI_0_1_RREADY),
        .s_axi_rresp(S_AXI_0_1_RRESP),
        .s_axi_rvalid(S_AXI_0_1_RVALID),
        .s_axi_wdata(S_AXI_0_1_WDATA),
        .s_axi_wready(S_AXI_0_1_WREADY),
        .s_axi_wstrb(S_AXI_0_1_WSTRB),
        .s_axi_wvalid(S_AXI_0_1_WVALID),
        .scl_i(SCL),
        .scl_o(axi_iic_scl_o),
        .scl_t(axi_iic_scl_t),
        .sda_i(SDA),
        .sda_o(axi_iic_sda_o),
        .sda_t(axi_iic_sda_t));
endmodule
