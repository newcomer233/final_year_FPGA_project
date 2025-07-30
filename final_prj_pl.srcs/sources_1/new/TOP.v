`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/30 16:29:19
// Design Name: 
// Module Name: TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP(
    //System clock
    //200MHz differential clock
    input sysclk_200m_p,
    input sysclk_200m_n,
    //IMU PHYSICAL interface
    inout   IMU_SPI_CLK,
    input   IMU_SPI_DIN,
    output  IMU_SPI_DOUT,
    inout   IMU_SPI_CS_N,

    inout   IMU_SPI_CLK_2,
    input   IMU_SPI_DIN_2,
    output  IMU_SPI_DOUT_2,
    inout   IMU_SPI_CS_N_2,
    //ADC PHYSICLA interface
    inout   SPI_CLK,
    input   SPI_DIN_A,
    input   SPI_DIN_B,
    input   SPI_DIN_C,
    input   SPI_DIN_D,
    input   SPI_DIN_E,
    input   SPI_DIN_F,
    input   SPI_DIN_G,
    input   SPI_DIN_H,
    output  SPI_DOUT,
    inout   SPI_CS_N,
    output  ADC_CONVST,
    input   ADC_BUSY,
    output  ADC_RST,
    //I2C physical interface
    // inout I2C_SCL,
    // inout I2C_SDA,
    //ETHernet physical interface
    output          mdc,
    inout [0:0]     mdio,
    output [0:0]    phy_rst_n,

    input [3:0]     rgmii_rd,
    input           rgmii_rx_ctl,
    input           rgmii_rxc,
    output [3:0]    rgmii_td,
    output          rgmii_tx_ctl,
    output          rgmii_txc,
    //DDR4 interface
    output          c0_ddr4_act_n,
    output  [16:0]  c0_ddr4_adr,
    output  [1:0]   c0_ddr4_ba,
    output  [0:0]   c0_ddr4_bg,
    output  [0:0]   c0_ddr4_ck_c,
    output  [0:0]   c0_ddr4_ck_t,
    output  [0:0]   c0_ddr4_cke,
    output  [0:0]   c0_ddr4_cs_n,
    inout   [3:0]   c0_ddr4_dm_n,
    inout   [31:0]  c0_ddr4_dq,
    inout   [3:0]   c0_ddr4_dqs_c,
    inout   [3:0]   c0_ddr4_dqs_t,
    output  [0:0]   c0_ddr4_odt,
    output          c0_ddr4_reset_n
    );
    //System clock
    wire         axis_clk;      // 200MHz clock for AXI interface and Global logic
    wire         gtx_clk_125M;  // 125MHz clock for Ethernet interface
    wire         refclk_100M;   // 100MHz reference clock for Ethernet PHY
    //UDP TOP interface
    wire         axi_txd_arstn;
    wire         transmit_enable;
    wire         transmit_busy;
    wire [15:0]  tx_data_length;
    wire [7:0]   sensor_data_tdata;
    wire         sensor_data_tkeep;
    wire         sensor_data_tlast;
    wire         sensor_data_tready;
    wire         sensor_data_tvalid;
    wire [0:0]   sensor_data_tuser;
    //ADC data interface
    wire [127:0] adc_data;          // 8 channels, 16 bits each
    wire         adc_data_valid;    // ADC data valid signal
    //IMU data interface
    wire         imu_data_valid;    // IMU data valid signal
    wire [111:0] imu_data;          // IMU data, 7 channels
    wire         imu_data_valid_2;  // IMU data valid signal for second IMU
    wire [111:0] imu_data_2;        // IMU data for second
    //AXI4 INTERCONNECTOR INTERFACE
        //ADC INTERFACE
    wire [31:0]  ADC_AXI_awaddr;
    wire [1:0]   ADC_AXI_awburst;
    wire [3:0]   ADC_AXI_awcache;
    wire [0:0]   ADC_AXI_awid;
    wire [7:0]   ADC_AXI_awlen;
    wire [0:0]   ADC_AXI_awlock;
    wire [2:0]   ADC_AXI_awprot;
    wire [3:0]   ADC_AXI_awqos;
    wire         ADC_AXI_awready;
    wire [2:0]   ADC_AXI_awsize;
    wire         ADC_AXI_awvalid;
    wire [0:0]   ADC_AXI_bid;
    wire         ADC_AXI_bready;
    wire [1:0]   ADC_AXI_bresp;
    wire         ADC_AXI_bvalid;
    wire [127:0] ADC_AXI_wdata;
    wire         ADC_AXI_wlast;
    wire         ADC_AXI_wready;
    wire [15:0]  ADC_AXI_wstrb;
    wire         ADC_AXI_wvalid;
        //IMU INTERFACE 0
    wire [31:0]  IMU_AXI0_awaddr;
    wire [1:0]   IMU_AXI0_awburst;
    wire [3:0]   IMU_AXI0_awcache;
    wire [0:0]   IMU_AXI0_awid;
    wire [7:0]   IMU_AXI0_awlen;
    wire [0:0]   IMU_AXI0_awlock;
    wire [2:0]   IMU_AXI0_awprot;
    wire [3:0]   IMU_AXI0_awqos;
    wire         IMU_AXI0_awready;
    wire [2:0]   IMU_AXI0_awsize;
    wire         IMU_AXI0_awvalid;
    wire [0:0]   IMU_AXI0_bid;
    wire         IMU_AXI0_bready;
    wire [1:0]   IMU_AXI0_bresp;
    wire         IMU_AXI0_bvalid;
    wire [127:0] IMU_AXI0_wdata;
    wire         IMU_AXI0_wlast;
    wire         IMU_AXI0_wready;
    wire [15:0]  IMU_AXI0_wstrb;
    wire         IMU_AXI0_wvalid;
        //IMU INTERFACE 1
    wire [31:0]  IMU_AXI1_awaddr;
    wire [1:0]   IMU_AXI1_awburst;
    wire [3:0]   IMU_AXI1_awcache;
    wire [0:0]   IMU_AXI1_awid;
    wire [7:0]   IMU_AXI1_awlen;
    wire [0:0]   IMU_AXI1_awlock;
    wire [2:0]   IMU_AXI1_awprot;
    wire [3:0]   IMU_AXI1_awqos;
    wire         IMU_AXI1_awready;
    wire [2:0]   IMU_AXI1_awsize;
    wire         IMU_AXI1_awvalid;
    wire [0:0]   IMU_AXI1_bid;
    wire         IMU_AXI1_bready;
    wire [1:0]   IMU_AXI1_bresp;
    wire         IMU_AXI1_bvalid;
    wire [127:0] IMU_AXI1_wdata;
    wire         IMU_AXI1_wlast;
    wire         IMU_AXI1_wready;
    wire [15:0]  IMU_AXI1_wstrb;
    wire         IMU_AXI1_wvalid;
    //clock signals
    wire sysclk_200m_wire; // ibufds 200MHz clock wire for IBUFDS
    wire sysclk_200m;      // bufg 200MHz clock output
    IBUFDS #(
      .DIFF_TERM("FALSE"),       // Differential Termination
      .IBUF_LOW_PWR("FALSE"),    // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) IBUFDS_inst (
      .O(sysclk_200m_wire), // Buffer output
      .I(sysclk_200m_p),    // Diff_p buffer input (connect directly to top-level port)
      .IB(sysclk_200m_n)    // Diff_n buffer input (connect directly to top-level port)
   );

    BUFG sysclk_bufg (
        .I(sysclk_200m_wire),
        .O(sysclk_200m)
    );

    system_clock system_clock_inst (
        .clk_in1        (sysclk_200m), // 200MHz clock input

        .sysclk_200M    (axis_clk),
        .eth_125M       (gtx_clk_125M),
        .refclk_333M    (refclk_100M)
    );


    SENSOR_TOP SENSOR_TOP(
    .sysclk_200m    (axis_clk   ),
    .axi_rstn       (axi_txd_arstn),
    //IMU PHYSICAL interface
    .IMU_SPI_CLK    (IMU_SPI_CLK ),
    .IMU_SPI_DIN    (IMU_SPI_DIN ),
    .IMU_SPI_DOUT   (IMU_SPI_DOUT),
    .IMU_SPI_CS_N   (IMU_SPI_CS_N),
    //IMU PHYSICAL interface 2
    .IMU_SPI_CLK_2    (IMU_SPI_CLK_2 ),
    .IMU_SPI_DIN_2    (IMU_SPI_DIN_2 ),
    .IMU_SPI_DOUT_2   (IMU_SPI_DOUT_2),
    .IMU_SPI_CS_N_2   (IMU_SPI_CS_N_2),
    //ADC PHYSICLA interface
    .SPI_CLK    (SPI_CLK    ),
    .SPI_DIN_A  (SPI_DIN_A  ),
    .SPI_DIN_B  (SPI_DIN_B  ),
    .SPI_DIN_C  (SPI_DIN_C  ),
    .SPI_DIN_D  (SPI_DIN_D  ),
    .SPI_DIN_E  (SPI_DIN_E  ),
    .SPI_DIN_F  (SPI_DIN_F  ),
    .SPI_DIN_G  (SPI_DIN_G  ),
    .SPI_DIN_H  (SPI_DIN_H  ),
    .SPI_DOUT   (SPI_DOUT   ),
    .SPI_CS_N   (SPI_CS_N   ),
    .ADC_CONVST (ADC_CONVST),
    .ADC_BUSY   (ADC_BUSY),
    // output [2:0]    ADC_OSR,
    .ADC_RST    (ADC_RST),
    //I2C interface
    .I2C_SCL    (I2C_SCL),
    .I2C_SDA    (I2C_SDA),
    //ADC internal interface
    .adc_data           (adc_data ),
    .adc_data_valid     (adc_data_valid ),

    .imu_data_valid     (imu_data_valid ),
    .imu_data           (imu_data   ),

    .imu_data_valid_2   (imu_data_valid_2 ),
    .imu_data_2         (imu_data_2 )
    );

    UDP_TOP UDP_TOP(
    .axis_clk               (axis_clk       ),
    .gtx_clk_125M           (gtx_clk_125M   ),
    .refclk_100M            (refclk_100M    ),
    .axi_txd_arstn          (axi_txd_arstn  ),
    //physical interface
    .mdc                    (mdc            ),
    .mdio                   (mdio           ),
    .phy_rst_n              (phy_rst_n      ),
    .rgmii_rd               (rgmii_rd       ),
    .rgmii_rx_ctl           (rgmii_rx_ctl   ),
    .rgmii_rxc              (rgmii_rxc      ),
    .rgmii_td               (rgmii_td       ),
    .rgmii_tx_ctl           (rgmii_tx_ctl   ),
    .rgmii_txc              (rgmii_txc      ),
    //package data interface
    .transmit_enable        (transmit_enable   ),
    .transmit_busy          (transmit_busy     ),
    .tx_data_length         (tx_data_length    ),
    .sensor_data_tdata      (sensor_data_tdata ),
    .sensor_data_tkeep      (sensor_data_tkeep ),
    .sensor_data_tlast      (sensor_data_tlast ),
    .sensor_data_tready     (sensor_data_tready),
    .sensor_data_tvalid     (sensor_data_tvalid),
    .sensor_data_tuser      (sensor_data_tuser )
    );

    DATA_PROCESS_TOP    DATA_PROCESS_TOP(
    //System clock
    .sysclk_200m    (axis_clk),
    .axi_rstn       (axi_txd_arstn),
    //ADC data interface
    .adc_data       (adc_data),
    .adc_data_valid (adc_data_valid),
    //IMU data interface
    .imu_data_valid (imu_data_valid),
    .imu_data       (imu_data),

    .imu_data_valid_2 (imu_data_valid_2),
    .imu_data_2       (imu_data_2),
    //UDP data interface
    .sensor_data_tdata  (sensor_data_tdata ),
    .sensor_data_tkeep  (sensor_data_tkeep ),
    .sensor_data_tlast  (sensor_data_tlast ),
    .sensor_data_tready (sensor_data_tready),
    .sensor_data_tvalid (sensor_data_tvalid),
    .sensor_data_tuser  (sensor_data_tuser ),
    .transmit_enable    (transmit_enable),
    .transmit_busy      (transmit_busy),
    .udp_data_length    (tx_data_length),
    
    //DDR4 interface
        //ADC AXI interface
    .ADC_AXI_awaddr  (ADC_AXI_awaddr),
    .ADC_AXI_awready (ADC_AXI_awready),
    .ADC_AXI_awvalid (ADC_AXI_awvalid),

    .ADC_AXI_bid     (ADC_AXI_bid),
    .ADC_AXI_bready  (ADC_AXI_bready),
    .ADC_AXI_bresp   (ADC_AXI_bresp),
    .ADC_AXI_bvalid  (ADC_AXI_bvalid),

    .ADC_AXI_wdata   (ADC_AXI_wdata),
    .ADC_AXI_wlast   (ADC_AXI_wlast),
    .ADC_AXI_wready  (ADC_AXI_wready),
    .ADC_AXI_wvalid  (ADC_AXI_wvalid),
        //IMU AXI interface
    .IMU_AXI0_awaddr  (IMU_AXI0_awaddr),
    .IMU_AXI0_awready (IMU_AXI0_awready),
    .IMU_AXI0_awvalid (IMU_AXI0_awvalid),

    .IMU_AXI0_bid     (IMU_AXI0_bid),
    .IMU_AXI0_bready  (IMU_AXI0_bready),
    .IMU_AXI0_bresp   (IMU_AXI0_bresp),
    .IMU_AXI0_bvalid  (IMU_AXI0_bvalid),

    .IMU_AXI0_wdata   (IMU_AXI0_wdata),
    .IMU_AXI0_wlast   (IMU_AXI0_wlast),
    .IMU_AXI0_wready  (IMU_AXI0_wready),
    .IMU_AXI0_wvalid  (IMU_AXI0_wvalid),
        //IMU AXI interface
    .IMU_AXI1_awaddr  (IMU_AXI1_awaddr),
    .IMU_AXI1_awready (IMU_AXI1_awready),
    .IMU_AXI1_awvalid (IMU_AXI1_awvalid),

    .IMU_AXI1_bid     (IMU_AXI1_bid),
    .IMU_AXI1_bready  (IMU_AXI1_bready),
    .IMU_AXI1_bresp   (IMU_AXI1_bresp),
    .IMU_AXI1_bvalid  (IMU_AXI1_bvalid),

    .IMU_AXI1_wdata   (IMU_AXI1_wdata),
    .IMU_AXI1_wlast   (IMU_AXI1_wlast),
    .IMU_AXI1_wready  (IMU_AXI1_wready),
    .IMU_AXI1_wvalid  (IMU_AXI1_wvalid)
    );

    top_vio(
    .clk(axis_clk),
    .probe_out0(axi_txd_arstn)
    );




    DDR4_wrapper DDR4_and_ZYNQ_TOP(
    //System clock
    .PL_ACLK            (axis_clk),
    .PL_ARESETN         (axi_txd_arstn),

    //ADC DATA INTERFACE
    .ADC_AXI_awaddr     (ADC_AXI_awaddr   ),
    .ADC_AXI_awburst    (2'b01  ),
    .ADC_AXI_awcache    (4'b0000),
    .ADC_AXI_awid       ('d0    ),
    .ADC_AXI_awlen      ('d0    ),
    .ADC_AXI_awlock     ('d0    ),
    .ADC_AXI_awprot     ('d0    ),
    .ADC_AXI_awqos      ('d0    ),
    .ADC_AXI_awready    (ADC_AXI_awready  ),
    .ADC_AXI_awsize     (3'b100 ), // 128 bits
    .ADC_AXI_awvalid    (ADC_AXI_awvalid  ),

    .ADC_AXI_bid        (ADC_AXI_bid      ),
    .ADC_AXI_bready     (ADC_AXI_bready   ),
    .ADC_AXI_bresp      (ADC_AXI_bresp    ),
    
    .ADC_AXI_bvalid     (ADC_AXI_bvalid   ),
    .ADC_AXI_wdata      (ADC_AXI_wdata    ),
    .ADC_AXI_wlast      (ADC_AXI_wlast    ),
    .ADC_AXI_wready     (ADC_AXI_wready   ),
    .ADC_AXI_wvalid     (ADC_AXI_wvalid   ),

    .ADC_AXI_wstrb      (16'hFFFF), // 128 bits, all strobes active), 
    //IMU DATA INTERFACE
    .IMU_AXI0_awaddr    (IMU_AXI0_awaddr  ),
    .IMU_AXI0_awburst   (2'b01  ),
    .IMU_AXI0_awcache   (4'b0000),
    .IMU_AXI0_awid      ('d0    ),
    .IMU_AXI0_awlen     ('d0    ),
    .IMU_AXI0_awlock    ('d0    ),
    .IMU_AXI0_awprot    ('d0    ),
    .IMU_AXI0_awqos     ('d0    ),
    .IMU_AXI0_awready   (IMU_AXI0_awready ),
    .IMU_AXI0_awsize    (3'b100 ),
    .IMU_AXI0_awvalid   (IMU_AXI0_awvalid ),
    .IMU_AXI0_bid       (IMU_AXI0_bid     ),
    .IMU_AXI0_bready    (IMU_AXI0_bready  ),
    .IMU_AXI0_bresp     (IMU_AXI0_bresp   ),
    .IMU_AXI0_bvalid    (IMU_AXI0_bvalid  ),
    .IMU_AXI0_wdata     (IMU_AXI0_wdata   ),
    .IMU_AXI0_wlast     (IMU_AXI0_wlast   ),
    .IMU_AXI0_wready    (IMU_AXI0_wready  ),
    
    .IMU_AXI0_wvalid    (IMU_AXI0_wvalid  ),
    .IMU_AXI0_wstrb     (16'hFFFF), // 128 bits, all strobes active),
    //IMU DATA INTERFACE 2
    .IMU_AXI1_awaddr    (IMU_AXI1_awaddr  ),
    .IMU_AXI1_awburst   (2'b01  ),
    .IMU_AXI1_awcache   (4'b0000),
    .IMU_AXI1_awid      ('d0    ),
    .IMU_AXI1_awlen     ('d0    ),
    .IMU_AXI1_awlock    ('d0    ),
    .IMU_AXI1_awprot    ('d0    ),
    .IMU_AXI1_awqos     ('d0    ),
    .IMU_AXI1_awready   (IMU_AXI1_awready ),
    .IMU_AXI1_awsize    (3'b100 ),
    .IMU_AXI1_awvalid   (IMU_AXI1_awvalid ),
    .IMU_AXI1_bid       (IMU_AXI1_bid     ),
    .IMU_AXI1_bready    (IMU_AXI1_bready  ),
    .IMU_AXI1_bresp     (IMU_AXI1_bresp   ),
    .IMU_AXI1_bvalid    (IMU_AXI1_bvalid  ),
    .IMU_AXI1_wdata     (IMU_AXI1_wdata   ),
    .IMU_AXI1_wlast     (IMU_AXI1_wlast   ),
    .IMU_AXI1_wready    (IMU_AXI1_wready  ),
    .IMU_AXI1_wvalid    (IMU_AXI1_wvalid  ),
    
    .IMU_AXI1_wstrb     (16'hFFFF),
    //DDR4 INTERFACE
    .c0_ddr4_act_n      (c0_ddr4_act_n   ),
    .c0_ddr4_adr        (c0_ddr4_adr     ),
    .c0_ddr4_ba         (c0_ddr4_ba      ),
    .c0_ddr4_bg         (c0_ddr4_bg      ),
    .c0_ddr4_ck_c       (c0_ddr4_ck_c    ),
    .c0_ddr4_ck_t       (c0_ddr4_ck_t    ),
    .c0_ddr4_cke        (c0_ddr4_cke     ),
    .c0_ddr4_cs_n       (c0_ddr4_cs_n    ),
    .c0_ddr4_dm_n       (c0_ddr4_dm_n    ),
    .c0_ddr4_dq         (c0_ddr4_dq      ),
    .c0_ddr4_dqs_c      (c0_ddr4_dqs_c   ),
    .c0_ddr4_dqs_t      (c0_ddr4_dqs_t   ),
    .c0_ddr4_odt        (c0_ddr4_odt     ),
    .c0_ddr4_reset_n    (c0_ddr4_reset_n ),
    .ddr4_rst           (1'b0),
    .c0_sys_clk_i       (sysclk_200m) // 200MHz clock for DDR4
    // .C0_SYS_CLK_clk_n   (sysclk_200m_n),
    // .C0_SYS_CLK_clk_p   (sysclk_200m_p),
    // .sysclk_100M        (sysclk_100M)
    );
endmodule
