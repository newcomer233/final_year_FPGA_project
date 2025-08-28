`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/01 12:02:51
// Design Name: 
// Module Name: axi4lite_process
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


module axi4lite_process(
    input s_axi_aclk,
    input s_axi_aresetn,
    // axi lite read interface
        //raddress
    output reg [31:0] S_AXI_araddr,
    input             S_AXI_arready,
    output reg        S_AXI_arvalid,
        //rdata
    input [31:0]      S_AXI_rdata,
    output reg        S_AXI_rready,
    input [1:0]       S_AXI_rresp,
    input             S_AXI_rvalid,
    // axi lite write interface
        //waddress
    output reg [31:0] S_AXI_awaddr,
    input             S_AXI_awready,
    output reg        S_AXI_awvalid,
        //wdata
    output reg [31:0] S_AXI_wdata,
    input             S_AXI_wready,
    output reg [3:0]  S_AXI_wstrb,
    output reg        S_AXI_wvalid,
        //bresp
    output reg        S_AXI_bready,
    input [1:0]       S_AXI_bresp,
    input             S_AXI_bvalid,

    //internal signal interface
    input [31:0]      wr_data_buffer, // Buffer for read/write data
    input [31:0]      wr_addr_buffer, // Buffer for write address
    input             wr_enable,
    output reg        wr_busy,

    input [31:0]      rd_addr_buffer,
    input             rd_enable,
    output reg [31:0] rd_data_buffer,
    output reg        rd_data_valid,
    output reg        rd_busy
    );
    localparam WR_IDLE ='d0;
    localparam WR_ADDR ='d1;
    localparam WR_DATA ='d2;
    localparam WR_RESP ='d3;

    localparam RD_IDLE   = 3'd0;
    localparam RD_ADDR   = 3'd1;
    localparam RD_DATA   = 3'd2;

    reg [31:0] axi4_lite_wr_stage;
    reg [2:0]  axi4_lite_rd_stage;



    // axi lite write process
    always @(posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            S_AXI_awaddr    <= 32'b0;
            S_AXI_awvalid   <= 1'b0;
            S_AXI_wdata     <= 32'b0;
            S_AXI_wstrb     <= 4'b0;
            S_AXI_wvalid    <= 1'b0;
            S_AXI_bready    <= 1'b0;
            axi4_lite_wr_stage <= WR_IDLE;
            wr_busy         <= 1'b0;
        end 
        else begin
            case(axi4_lite_wr_stage)
                WR_IDLE:begin
                    if (wr_enable) begin
                        S_AXI_awaddr        <= wr_addr_buffer;  
                        S_AXI_wdata         <= wr_data_buffer;  
                        S_AXI_wstrb         <= 4'b1111;         
                        axi4_lite_wr_stage  <= WR_ADDR;
                        wr_busy           <= 1'b1; 
                    end 
                    else begin
                        axi4_lite_wr_stage  <= WR_IDLE; 
                        S_AXI_wdata         <= 32'd0;
                        S_AXI_awaddr        <= 9'd0;
                        S_AXI_wstrb         <= 4'd0; 
                        wr_busy             <= 1'b0; 
                    end
                        S_AXI_awvalid       <= 1'b0; 
                        S_AXI_wvalid        <= 1'b0; 
                        S_AXI_bready        <= 1'b0; 
                end
                WR_ADDR:begin
                    if (S_AXI_awready && S_AXI_awvalid) begin 
                        axi4_lite_wr_stage <= WR_DATA; 
                        S_AXI_awvalid   <= 1'b0; 
                    end
                    else begin 
                        axi4_lite_wr_stage <= WR_ADDR; 
                        S_AXI_awvalid   <= 1'b1;
                    end
                    S_AXI_wvalid    <= 1'b0; 
                    S_AXI_bready    <= 1'b0; 
                    S_AXI_awaddr    <= S_AXI_awaddr;
                    S_AXI_wdata     <= S_AXI_wdata; // Use the buffered data
                    S_AXI_wstrb     <= 4'b1111; // Set write strobe
                    wr_busy         <= 1'b1; 
                end
                WR_DATA:begin
                    if(S_AXI_wready && S_AXI_wvalid) begin 
                        axi4_lite_wr_stage <= WR_RESP; 
                        S_AXI_wvalid    <= 1'b0;
                    end
                    else begin 
                        axi4_lite_wr_stage <= WR_DATA; 
                        S_AXI_wvalid    <= 1'b1;
                    end
                    S_AXI_awvalid   <= 1'b0; 
                     
                    S_AXI_bready    <= 1'b0; 
                    S_AXI_awaddr    <= S_AXI_awaddr;
                    S_AXI_wdata     <= S_AXI_wdata; // Use the buffered data
                    S_AXI_wstrb     <= 4'b1111; // Set write strobe
                    wr_busy         <= 1'b1; 
                end
                WR_RESP:begin
                    if (S_AXI_bvalid) begin 
                        axi4_lite_wr_stage <= WR_IDLE; 
                        S_AXI_bready    <= 1'b1; 
                    end
                    else begin 
                        axi4_lite_wr_stage <= WR_RESP; 
                        S_AXI_bready    <= 1'b1; 
                    end
                    S_AXI_awvalid   <= 1'b0; 
                    S_AXI_wvalid    <= 1'b0; 
                    
                    S_AXI_awaddr    <= S_AXI_awaddr;
                    S_AXI_wdata     <= S_AXI_wdata; // Use the buffered data
                    S_AXI_wstrb     <= 4'b1111; // Set write strobe
                    wr_busy         <= 1'b1; 
                end
                default:begin
                    S_AXI_awaddr    <= 32'd0;
                    S_AXI_wdata     <= 32'd0;
                    S_AXI_awvalid   <= 1'd0;
                    S_AXI_wvalid    <= 1'b0;
                    S_AXI_wstrb     <= 4'd0;
                    S_AXI_bready    <= 1'b0;
                    wr_busy         <= 1'b0; 
                    axi4_lite_wr_stage <= WR_IDLE;
                end
            endcase
        end
    end


    // axi lite read process
    always @(posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            S_AXI_araddr   <= 32'd0;
            S_AXI_arvalid  <= 1'b0;

            S_AXI_rready   <= 1'b0;
            rd_data_buffer <= 32'd0;
            rd_data_valid  <= 1'b0; 
            axi4_lite_rd_stage <= RD_IDLE;
            rd_busy         <= 1'b0; 
        end else begin
            case (axi4_lite_rd_stage)
                RD_IDLE: begin
                    if (rd_enable) begin
                        S_AXI_araddr  <= rd_addr_buffer;
                        axi4_lite_rd_stage <= RD_ADDR;   
                        rd_busy       <= 1'b1;                
                    end 
                    else begin
                        S_AXI_araddr  <= 32'd0;
                        axi4_lite_rd_stage <= RD_IDLE;
                        rd_busy       <= 1'b0;
                    end
                    S_AXI_arvalid <= 1'b0;
                    S_AXI_rready  <= 1'b0;
                    rd_data_valid <= 1'b0;
                end
                RD_ADDR: begin
                    if (S_AXI_arvalid && S_AXI_arready) begin
                        axi4_lite_rd_stage <= RD_DATA;
                        S_AXI_arvalid <= 1'b0;  
                    end 
                    else begin
                        axi4_lite_rd_stage <= RD_ADDR;
                        S_AXI_arvalid <= 1'b1;
                    end
                    S_AXI_rready  <= 1'b0;
                    rd_data_valid <= 1'b0;
                    rd_busy       <= 1'b1;
                end
                RD_DATA: begin
                    if (S_AXI_rvalid && S_AXI_rready) begin
                        axi4_lite_rd_stage <= RD_IDLE;

                        S_AXI_rready   <= 1'b0;
                        rd_data_valid  <= 1'b1;
                        rd_data_buffer <= S_AXI_rdata;
                    end else begin
                        axi4_lite_rd_stage <= RD_DATA;

                        S_AXI_rready <= 1'b1;
                        rd_data_valid <= 1'b0;
                        rd_data_buffer<= 32'd0;
                    end
                    S_AXI_arvalid <= 1'b0; 
                    rd_busy       <= 1'b1;
                end

                default: begin
                    S_AXI_araddr  <= 32'd0;
                    S_AXI_arvalid <= 1'b0;
                    S_AXI_rready  <= 1'b0;
                    rd_data_valid <= 1'b0;
                    rd_busy       <= 1'b0;
                    axi4_lite_rd_stage <= RD_IDLE;
                end
            endcase
        end
    end
endmodule
