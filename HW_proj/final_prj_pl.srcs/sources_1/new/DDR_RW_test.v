`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/04 17:11:27
// Design Name: 
// Module Name: DDR_RW_test
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


module DDR_RW_test(
    input               axis_clk,
    input               axi_txd_arstn,
    // axi lite read interface
        //raddress
    output  [31:0]   S_AXI_araddr,
    input            S_AXI_arready,
    output           S_AXI_arvalid,
        //rdata
    input [31:0]     S_AXI_rdata,
    output           S_AXI_rready,
    input [1:0]      S_AXI_rresp,
    input            S_AXI_rvalid,
    // axi lite write interface
        //waddress
    output  [31:0] S_AXI_awaddr,
    input          S_AXI_awready,
    output         S_AXI_awvalid,
        //wdata
    output  [31:0] S_AXI_wdata,
    input          S_AXI_wready,
    output  [3:0]  S_AXI_wstrb,
    output         S_AXI_wvalid,
        //bresp
    output         S_AXI_bready,
    input [1:0]    S_AXI_bresp,
    input          S_AXI_bvalid
);
    wire [31:0]       wr_data_buffer;
    wire [31:0]       wr_addr_buffer;
    wire              wr_enable_wire;
    
    wire              wr_enable;
    wire              wr_busy;

    wire [31:0]       rd_addr_buffer;
    wire              rd_enable;
    wire              rd_enable_wire;
    wire  [31:0]      rd_data_buffer;
    wire              rd_data_valid;
    wire              rd_busy;
    
    axi4lite_process axi4lite_process(
    .s_axi_aclk         (axis_clk       ),
    .s_axi_aresetn      (axi_txd_arstn  ),
    // AXI4-Lite control interface
    .S_AXI_araddr       (S_AXI_araddr   ),
    .S_AXI_arready      (S_AXI_arready  ),
    .S_AXI_arvalid      (S_AXI_arvalid  ),
    .S_AXI_awaddr       (S_AXI_awaddr   ),
    .S_AXI_awready      (S_AXI_awready  ),
    .S_AXI_awvalid      (S_AXI_awvalid  ),
    .S_AXI_bready       (S_AXI_bready   ),
    .S_AXI_bresp        (S_AXI_bresp    ),
    .S_AXI_bvalid       (S_AXI_bvalid   ),
    .S_AXI_rdata        (S_AXI_rdata    ),
    .S_AXI_rready       (S_AXI_rready   ),
    .S_AXI_rresp        (S_AXI_rresp    ),
    .S_AXI_rvalid       (S_AXI_rvalid   ),
    .S_AXI_wdata        (S_AXI_wdata    ),
    .S_AXI_wready       (S_AXI_wready   ),
    .S_AXI_wstrb        (S_AXI_wstrb    ),
    .S_AXI_wvalid       (S_AXI_wvalid   ),

    .wr_data_buffer     (wr_data_buffer ),
    .wr_addr_buffer     (wr_addr_buffer ),
    .wr_enable          (wr_enable_wire),
    .wr_busy            (wr_busy        ),

    .rd_addr_buffer     (rd_addr_buffer),
    .rd_enable          (rd_enable_wire),
    .rd_data_buffer     (rd_data_buffer),
    .rd_data_valid      (rd_data_valid ),
    .rd_busy            (rd_busy       )
    );
    reg [31:0] rd_data_buffer_reg;
    always @(posedge axis_clk ) begin
        if(rd_data_valid)  rd_data_buffer_reg <= rd_data_buffer;
        else rd_data_buffer_reg <= rd_data_buffer_reg;
    end
    reg [1:0] wr_state;
    reg [1:0] rd_state;
    assign wr_enable_wire = wr_state== 2'b01 ? 1'b1 : 1'b0;
    assign rd_enable_wire = rd_state== 2'b01 ? 1'b1 : 1'b0;
    always@(posedge axis_clk) wr_state <= {wr_state[0], wr_enable};
    always@(posedge axis_clk) rd_state <= {rd_state[0], rd_enable};
    udp_config_vio udp_config_vio(
        .clk (axis_clk),
        .probe_out0 (wr_data_buffer),
        .probe_out1 (wr_addr_buffer),
        .probe_out2 (wr_enable),
        .probe_out3 (rd_addr_buffer),
        .probe_out4 (rd_enable),

        .probe_in0  (wr_busy),
        .probe_in1  (rd_data_buffer_reg),
        .probe_in2  (rd_data_valid),
        .probe_in3  (rd_busy)
    );
endmodule
