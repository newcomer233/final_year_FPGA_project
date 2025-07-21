`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/28 18:08:55
// Design Name: 
// Module Name: I2C_CONFIG_READ
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
// Description: Configure AXI IIC core and MAX86916 to read green LED data
//////////////////////////////////////////////////////////////////////////////////



module I2C_CONFIG_READ(
    input wire          s_axi_aclk,
    input wire          s_axi_aresetn,

    // AXI4-Lite write interface to I2C IP
    output reg [31:0]   wr_data_buffer,
    output reg [8:0]    wr_addr_buffer,
    output reg          wr_enable,
    input wire          wr_busy,

    // AXI4-Lite read interface to I2C IP
    output reg [8:0]    rd_addr_buffer,
    output reg          rd_enable,
    input wire [31:0]   rd_data_buffer,
    input wire          rd_data_valid,
    input wire          rd_busy,

    output reg [23:0]   green_led_data,
    output reg          green_led_data_valid
);

// State definitions
localparam IDLE          = 'd0,
           CFG_IIC_CR    = 'd1,
           CFG_IIC_ADDR  = 'd2,
           MAX_CFG_SEQ   = 'd3,
           MAX_CFG_CUR   = 'd4,
           MAX_CFG_FIFO  = 'd5,
           READ_FIFO1    = 'd6,
           READ_FIFO2    = 'd7,
           READ_FIFO3    = 'd8,
           DONE          = 'd9;

reg [3:0] state;
reg [23:0] fifo_data_raw;

always @(posedge s_axi_aclk) begin
    if (!s_axi_aresetn) begin
        state <= IDLE;
        wr_enable <= 0;
        rd_enable <= 0;
        wr_data_buffer <= 0;
        wr_addr_buffer <= 0;
        rd_addr_buffer <= 0;
        green_led_data <= 24'd0;
        green_led_data_valid <= 0;
    end else begin
        case (state)
            IDLE: begin
                if (!wr_busy && !rd_busy) begin
                    wr_addr_buffer <= 9'h100;        // AXI IIC: CR register (0x100)
                    wr_data_buffer <= 32'h00000002;  // CR: Enable IIC core
                    wr_enable <= 1;
                    state <= CFG_IIC_CR;
                end
            end
            CFG_IIC_CR: begin
                wr_enable <= 0;
                if (!wr_busy) begin
                    wr_addr_buffer <= 9'h104;        // AXI IIC: Slave address register (0x104)
                    wr_data_buffer <= 32'h000000AE;  // MAX86916 7-bit addr + W bit = 0xAE
                    wr_enable <= 1;
                    state <= CFG_IIC_ADDR;
                end
            end
            CFG_IIC_ADDR: begin
                wr_enable <= 0;
                if (!wr_busy) begin
                    wr_addr_buffer <= 9'h009;
                    wr_data_buffer <= 32'h00000002;
                    wr_enable <= 1;
                    state <= MAX_CFG_SEQ;
                end
            end
            MAX_CFG_SEQ: begin
                wr_enable <= 0;
                if (!wr_busy) begin
                    wr_addr_buffer <= 9'h00C;
                    wr_data_buffer <= 32'h0000001F;
                    wr_enable <= 1;
                    state <= MAX_CFG_CUR;
                end
            end
            MAX_CFG_CUR: begin
                wr_enable <= 0;
                if (!wr_busy) begin
                    wr_addr_buffer <= 9'h008;
                    wr_data_buffer <= 32'h00000003;
                    wr_enable <= 1;
                    state <= MAX_CFG_FIFO;
                end
            end
            MAX_CFG_FIFO: begin
                wr_enable <= 0;
                if (!wr_busy) begin
                    rd_addr_buffer <= 9'h007;
                    rd_enable <= 1;
                    state <= READ_FIFO1;
                end
            end
            READ_FIFO1: begin
                rd_enable <= 0;
                if (rd_data_valid) begin
                    fifo_data_raw[23:16] <= rd_data_buffer[7:0];
                    rd_addr_buffer <= 9'h007;
                    rd_enable <= 1;
                    state <= READ_FIFO2;
                end
            end
            READ_FIFO2: begin
                rd_enable <= 0;
                if (rd_data_valid) begin
                    fifo_data_raw[15:8] <= rd_data_buffer[7:0];
                    rd_addr_buffer <= 9'h007;
                    rd_enable <= 1;
                    state <= READ_FIFO3;
                end
            end
            READ_FIFO3: begin
                rd_enable <= 0;
                if (rd_data_valid) begin
                    fifo_data_raw[7:0] <= rd_data_buffer[7:0];
                    green_led_data <= fifo_data_raw;
                    green_led_data_valid <= 1;
                    state <= DONE;
                end
            end
            DONE: begin
                green_led_data_valid <= 0;
                state <= DONE;
            end
        endcase
    end
end

endmodule
