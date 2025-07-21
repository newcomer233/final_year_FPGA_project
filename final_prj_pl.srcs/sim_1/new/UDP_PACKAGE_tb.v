`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/01 16:24:32
// Design Name: 
// Module Name: UDP_PACKAGE_tb
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
`timescale 1ns / 1ps

module UDP_PACKAGE_tb;



    // Clock and reset
    reg axis_clk;
    reg axi_txd_arstn;

    // AXI Stream output to TEMAC (DUT output)
    wire [7:0]  s_axis_txd_tdata;
    wire        s_axis_txd_tkeep;
    wire        s_axis_txd_tlast;
    wire        s_axis_txd_tvalid;
    wire [0:0]  s_axis_txd_tuser;
    reg         s_axis_txd_tready;

    // AXI Stream input from MAC (not used in test)
    reg  [7:0]  m_axis_rxd_tdata = 0;
    reg         m_axis_rxd_tkeep = 0;
    reg         m_axis_rxd_tlast = 0;
    wire        m_axis_rxd_tready;
    reg         m_axis_rxd_tvalid = 0;
    reg  [0:0]  m_axis_rxd_tuser = 0;

    // Payload input
    reg         transmit_enable;
    wire [31:0] transmit_busy;
    reg  [15:0] tx_data_length;

    reg  [7:0]  sensor_data_tdata;
    reg         sensor_data_tkeep;
    reg         sensor_data_tlast;
    wire        sensor_data_tready;
    reg         sensor_data_tvalid;
    reg  [0:0]  sensor_data_tuser;

    // Instantiate the DUT
    UDP_PACKAGE dut (
        .axis_clk(axis_clk),
        .axi_txd_arstn(axi_txd_arstn),
        .s_axis_txd_tdata(s_axis_txd_tdata),
        .s_axis_txd_tkeep(s_axis_txd_tkeep),
        .s_axis_txd_tlast(s_axis_txd_tlast),
        .s_axis_txd_tready(s_axis_txd_tready),
        .s_axis_txd_tvalid(s_axis_txd_tvalid),
        .s_axis_txd_tuser(s_axis_txd_tuser),
        .m_axis_rxd_tdata(m_axis_rxd_tdata),
        .m_axis_rxd_tkeep(m_axis_rxd_tkeep),
        .m_axis_rxd_tlast(m_axis_rxd_tlast),
        .m_axis_rxd_tready(m_axis_rxd_tready),
        .m_axis_rxd_tvalid(m_axis_rxd_tvalid),
        .m_axis_rxd_tuser(m_axis_rxd_tuser),
        .transmit_enable(transmit_enable),
        .transmit_busy(transmit_busy),
        .tx_data_length(tx_data_length),
        .sensor_data_tdata(sensor_data_tdata),
        .sensor_data_tkeep(sensor_data_tkeep),
        .sensor_data_tlast(sensor_data_tlast),
        .sensor_data_tready(sensor_data_tready),
        .sensor_data_tvalid(sensor_data_tvalid),
        .sensor_data_tuser(sensor_data_tuser)
    );

    // Clock generation
    always #5 axis_clk = ~axis_clk;

    initial begin
        axis_clk = 0;
        axi_txd_arstn = 0;
        s_axis_txd_tready = 1;
        transmit_enable = 0;
        tx_data_length = 16'd4;  // Send 4 bytes of data

        sensor_data_tdata = 8'h00;
        sensor_data_tkeep = 1;
        sensor_data_tlast = 0;
        sensor_data_tvalid = 0;
        sensor_data_tuser = 0;

        // Reset pulse
        #20;
        axi_txd_arstn = 1;

        // Trigger transmission
        #20;
        transmit_enable = 1;
        #10;
        transmit_enable = 0;

        // Simulate payload stream
        wait(sensor_data_tready);
        @(posedge axis_clk);
        sensor_data_tvalid = 1;
        sensor_data_tdata = 8'h11;
        @(posedge axis_clk);
        sensor_data_tdata = 8'h22;
        @(posedge axis_clk);
        sensor_data_tdata = 8'h33;
        @(posedge axis_clk);
        sensor_data_tdata = 8'h44;
        sensor_data_tlast = 1;
        @(posedge axis_clk);
        sensor_data_tvalid = 0;
        sensor_data_tlast = 0;

        // Observe
        #100;
        $finish;
    end

endmodule
