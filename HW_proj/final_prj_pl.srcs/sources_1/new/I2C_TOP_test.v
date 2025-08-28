`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/30 14:56:24
// Design Name: 
// Module Name: I2C_TOP_test
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


module I2C_TOP_test(
    input sysclk_200m_p,
    input sysclk_200m_n,
    //I2C digital interface
    inout I2C_SCL,
    inout I2C_SDA

    );
    // axi interface signals
    wire          s_axi_aclk;
    wire          s_axi_aresetn;
    // axi lite read interface
    wire [8:0]    S_AXI_araddr;
    wire          S_AXI_arready;
    wire          S_AXI_arvalid;

    wire [31:0]   S_AXI_rdata;
    wire          S_AXI_rready;
    wire [1:0]    S_AXI_rresp;
    wire          S_AXI_rvalid;
    // axi lite write interface
    wire [8:0]    S_AXI_awaddr;
    wire          S_AXI_awready;
    wire          S_AXI_awvalid;

    wire [31:0]   S_AXI_wdata;
    wire          S_AXI_wready;
    wire [3:0]    S_AXI_wstrb;
    wire          S_AXI_wvalid;

    wire          S_AXI_bready;
    wire [1:0]    S_AXI_bresp;
    wire          S_AXI_bvalid;
    // general purpose output
    wire [0:0]    gpo;
    wire          iic2intc_irpt;
    //internal signal interface
    wire [31:0]   wr_data_buffer; 
    wire [8:0]    wr_addr_buffer;
    wire          wr_enable;
    wire          wr_busy;

    wire [8:0]    rd_addr_buffer;
    wire          rd_enable;
    wire [31:0]   rd_data_buffer;
    wire          rd_data_valid;
    wire          rd_busy;

    clk_wiz_0 system_clock(
    // Diff Clock
    .clk_in1_p(sysclk_200m_p),
    .clk_in1_n(sysclk_200m_n),
    // SYSTEM CLOCK
    .clk_out1(sysclk_200m),           
    .locked(locked)
    );
    assign s_axi_aclk = sysclk_200m;
    assign s_axi_aresetn = locked;
    // Register the wr_enable and rd_enable signals to detect rising edges
    reg[1:0] wr_enable_reg;
    reg[1:0] rd_enable_reg;
    always @(posedge s_axi_aclk) wr_enable_reg <= {wr_enable_reg[0], wr_enable};
    always @(posedge s_axi_aclk) rd_enable_reg <= {rd_enable_reg[0], rd_enable};
    wire wr_enable_rising_edge;
    wire rd_enable_rising_edge;

    assign wr_enable_rising_edge = ~wr_enable_reg[1] & wr_enable_reg[0];
    assign rd_enable_rising_edge = ~rd_enable_reg[1] & rd_enable_reg[0];

    PPG_I2C_PHY_wrapper PPG_I2C_PHY
   (.I2C_SCL             (I2C_SCL       ),
    .I2C_SDA             (I2C_SDA       ),
    .S_AXI_araddr        (S_AXI_araddr  ),
    .S_AXI_arready       (S_AXI_arready ),
    .S_AXI_arvalid       (S_AXI_arvalid ),
    .S_AXI_awaddr        (S_AXI_awaddr  ),
    .S_AXI_awready       (S_AXI_awready ),
    .S_AXI_awvalid       (S_AXI_awvalid ),
    .S_AXI_bready        (S_AXI_bready  ),
    .S_AXI_bresp         (S_AXI_bresp   ),
    .S_AXI_bvalid        (S_AXI_bvalid  ),
    .S_AXI_rdata         (S_AXI_rdata   ),
    .S_AXI_rready        (S_AXI_rready  ),
    .S_AXI_rresp         (S_AXI_rresp   ),
    .S_AXI_rvalid        (S_AXI_rvalid  ),
    .S_AXI_wdata         (S_AXI_wdata   ),
    .S_AXI_wready        (S_AXI_wready  ),
    .S_AXI_wstrb         (S_AXI_wstrb   ),
    .S_AXI_wvalid        (S_AXI_wvalid  ),
    .gpo                 (gpo           ),
    .iic2intc_irpt       (iic2intc_irpt ),
    .s_axi_aclk          (s_axi_aclk    ),
    .s_axi_aresetn       (s_axi_aresetn )
    );

    I2C_RW_CTRL I2C_RW_CTRL(
    .s_axi_aclk     (s_axi_aclk),
    .s_axi_aresetn  (s_axi_aresetn),
    .S_AXI_araddr   (S_AXI_araddr),
    .S_AXI_arready  (S_AXI_arready),
    .S_AXI_arvalid  (S_AXI_arvalid),
    .S_AXI_rdata    (S_AXI_rdata),
    .S_AXI_rready   (S_AXI_rready),
    .S_AXI_rresp    (S_AXI_rresp),
    .S_AXI_rvalid   (S_AXI_rvalid),

    .S_AXI_awaddr   (S_AXI_awaddr),
    .S_AXI_awready  (S_AXI_awready),
    .S_AXI_awvalid  (S_AXI_awvalid),
    .S_AXI_wdata    (S_AXI_wdata),
    .S_AXI_wready   (S_AXI_wready),
    .S_AXI_wstrb    (S_AXI_wstrb),
    .S_AXI_wvalid   (S_AXI_wvalid),

    .S_AXI_bready   (S_AXI_bready),
    .S_AXI_bresp    (S_AXI_bresp),
    .S_AXI_bvalid   (S_AXI_bvalid),

    .wr_data_buffer (wr_data_buffer),
    .wr_addr_buffer (wr_addr_buffer),
    .wr_enable      (wr_enable_rising_edge),
    .wr_busy        (wr_busy),
    .rd_addr_buffer (rd_addr_buffer),
    .rd_enable      (rd_enable_rising_edge),
    .rd_data_buffer (rd_data_buffer),
    .rd_data_valid  (rd_data_valid),
    .rd_busy        (rd_busy)
    );

    reg [31:0] rd_data_buffer_reg;
    always @(posedge s_axi_aclk) begin
        if (rd_data_valid) rd_data_buffer_reg <= rd_data_buffer;
        else rd_data_buffer_reg <= rd_data_buffer_reg; 
    end


    I2C_test_vio I2C_test_vio(
    .clk         (sysclk_200m),

    .probe_out0  (wr_enable),
    .probe_out1  (wr_data_buffer),
    .probe_out2  (wr_addr_buffer),
    .probe_out3  (rd_enable),
    .probe_out4  (rd_addr_buffer),

    .probe_in0  (rd_data_buffer),
    .probe_in1  (rd_data_valid),
    .probe_in2  (wr_busy),
    .probe_in3  (rd_busy)
    );
endmodule
