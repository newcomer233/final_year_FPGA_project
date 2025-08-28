`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/19 16:33:45
// Design Name: 
// Module Name: ADC_READ
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


module ADC_READ(
    input               sysclk_200M,
    //interface SPI RX
    input               spi_rx_valid,
    output reg          spi_rx_ready,
    input  [127:0]      spi_rx_data,
    input               spi_rx_last,
    // Configuration status interface
    input               ADC_ENABLE,
    input               ADC_config_complete,
    // interface to SPI PHY
    output reg          spi_en,
    input               spi_busy,
    // interface to ADC
    output reg          ADC_CONVST=1'b1,
    input               ADC_BUSY,
    // Internal signals
    output reg [15:0] spi_rx_data_A,
    output reg [15:0] spi_rx_data_B,
    output reg [15:0] spi_rx_data_C,
    output reg [15:0] spi_rx_data_D,
    output reg [15:0] spi_rx_data_E,
    output reg [15:0] spi_rx_data_F,
    output reg [15:0] spi_rx_data_G,
    output reg [15:0] spi_rx_data_H,
    output reg        spi_rx_data_valid
    );


    reg [31:0] ADC_CONVST_counter;
    reg [1:0] ADC_BUSY_judge;
    reg [1:0] spi_busy_judge;
    reg spi_busy_done;
    
    always@(posedge sysclk_200M) ADC_BUSY_judge <= {ADC_BUSY_judge[0], ADC_BUSY};

    always@(posedge sysclk_200M) spi_busy_judge <= {spi_busy_judge[0], spi_busy};
    //Read data from spi rx fifo
    always@(posedge sysclk_200M) begin
        if(ADC_ENABLE && ADC_config_complete)begin
            if (spi_rx_valid && spi_rx_ready) begin
                spi_rx_data_A <= spi_rx_data[127:112];
                spi_rx_data_B <= spi_rx_data[111:96];
                spi_rx_data_C <= spi_rx_data[95:80];
                spi_rx_data_D <= spi_rx_data[79:64];
                spi_rx_data_E <= spi_rx_data[63:48];
                spi_rx_data_F <= spi_rx_data[47:32];
                spi_rx_data_G <= spi_rx_data[31:16];
                spi_rx_data_H <= spi_rx_data[15:0];
                spi_rx_data_valid <= 1'b1;
                spi_rx_ready <= 1'b0;  
            end
            else begin
                spi_rx_ready <= 1'b1;
                spi_rx_data_A <=spi_rx_data_A;
                spi_rx_data_B <=spi_rx_data_B;
                spi_rx_data_C <=spi_rx_data_C;
                spi_rx_data_D <=spi_rx_data_D;
                spi_rx_data_E <=spi_rx_data_E;
                spi_rx_data_F <=spi_rx_data_F;
                spi_rx_data_G <=spi_rx_data_G;
                spi_rx_data_H <=spi_rx_data_H;
                spi_rx_data_valid <= 1'b0;
            end
        end
        else begin
            spi_rx_ready <= 1'b1; //REMOVE FIFO DATA
            spi_rx_data_A <= 16'h0000;
            spi_rx_data_B <= 16'h0000;
            spi_rx_data_C <= 16'h0000;
            spi_rx_data_D <= 16'h0000;
            spi_rx_data_E <= 16'h0000;
            spi_rx_data_F <= 16'h0000;  
            spi_rx_data_G <= 16'h0000;
            spi_rx_data_H <= 16'h0000;
            spi_rx_data_valid <= 1'b0;
        end
    end
    reg [31:0]waiting_counter='d0;
    reg ADC_CONVST_start_flag=1'b0;
    always@(posedge sysclk_200M) begin
        if(ADC_ENABLE && ADC_config_complete) begin
            if(waiting_counter>=32'd20_000) begin//original is 32'd2000
                ADC_CONVST_start_flag <= 1'b1;
                waiting_counter <= waiting_counter;
            end
            else begin
                waiting_counter <= waiting_counter + 32'd1;
                ADC_CONVST_start_flag <= 1'b0;
            end
        end
        else begin
            waiting_counter <= 32'd0;
            ADC_CONVST_start_flag <= 1'b0;
        end
    end
    //ADC CONVST signal
    reg [1:0] ADC_CONVST_state;
    localparam IDLE = 'd0,
               START = 'd1,
               WAIT = 'd2,
               DONE = 'd3;
    always@(posedge sysclk_200M)begin
        case (ADC_CONVST_state)
            IDLE: begin
                if(ADC_CONVST_start_flag==1'b1 && ADC_ENABLE && spi_busy ==1'b0) begin 
                    ADC_CONVST_state <= START;
                    // spi_en <= 1'b1; // Enable SPI for ADC configuration
                end
                else begin 
                    ADC_CONVST_state <= IDLE;
                    // spi_en <= 1'b0; // Disable SPI when not in use
                end
                ADC_CONVST_counter <= 32'd0;
                ADC_CONVST <= 1'b1; 
            end
            START: begin
                // if(ADC_CONVST_counter>='d200) begin
                if(ADC_CONVST_counter>='d100_000) begin
                    ADC_CONVST_state <= WAIT;
                    ADC_CONVST_counter <= 32'd0;
                end
                else begin
                    ADC_CONVST_state <= START;
                    ADC_CONVST_counter <= ADC_CONVST_counter + 32'd1;
                end
                if(ADC_CONVST_counter>='d100) ADC_CONVST<=1'b1;
                else ADC_CONVST<=1'b0; 
                // spi_en <= 1'b0; // Disable SPI after starting ADC conversion
            end
            WAIT: begin
                if(spi_busy_done==1'b1) ADC_CONVST_state <= DONE;
                else ADC_CONVST_state <= WAIT;
                ADC_CONVST_counter <= 32'd0;
                ADC_CONVST <= 1'b1;
                // spi_en <= 1'b0;
            end
            DONE: begin
                if(ADC_BUSY==2'b00) ADC_CONVST_state <= IDLE;
                else ADC_CONVST_state <= DONE;
                    
                ADC_CONVST_counter <= 32'd0;
                ADC_CONVST <= 1'b1;
                // spi_en <= 1'b0;
            end
            default: begin
                ADC_CONVST_state <= IDLE;
                ADC_CONVST <= 1'b1;
                ADC_CONVST_counter <= 32'd0;
                // spi_en <= 1'b0;
            end
        endcase
    end
    always@(posedge sysclk_200M) begin
        if(ADC_CONVST_state==WAIT || ADC_CONVST_state==START) begin
            if(spi_busy_judge==2'b11) spi_busy_done <= 1'b0; // SPI busy start
            else if(spi_busy_judge==2'b00) spi_busy_done <= 1'b1; // SPI busy end
            else spi_busy_done <= spi_busy_done; // Maintain state
        end
        else spi_busy_done <= 1'b0; // Reset when not in WAIT state
    end
    always@(posedge sysclk_200M) begin
        if(ADC_BUSY_judge==2'b10) spi_en <= 1'b1; // ADC busy start
        else spi_en <= 1'b0;
    end
    // ADC_READ_ILA ADC_READ_ILA(
    //     .clk(sysclk_200M),
    //     .probe0(spi_rx_valid),
    //     .probe1(spi_rx_ready),
    //     .probe2(spi_rx_data_A),
    //     .probe3(spi_rx_data_B),
    //     .probe4(spi_rx_data_C),
    //     .probe5(spi_rx_data_D),
    //     .probe6(spi_rx_data_E),
    //     .probe7(spi_rx_data_F),
    //     .probe8(spi_rx_data_G),
    //     .probe9(spi_rx_data_H),
    //     .probe10(ADC_CONVST_state),
    //     .probe11(ADC_CONVST_counter),
    //     .probe12(ADC_CONVST),
    //     .probe13(ADC_BUSY),
    //     .probe14(spi_en)
    // );
endmodule
