`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/17 15:23:10
// Design Name: 
// Module Name: ADC_CONFIG
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


module ADC_CONFIG(
    input               sysclk_200M,
    //interface SPI tx
    input               spi_busy,
    output reg [15:0]   write_register,
    output reg          spi_tx_valid,
    input               spi_tx_ready,

    input      [15:0]   spi_rx_data,
    input               spi_rx_valid,
    output reg          spi_rx_ready=1'b1,

    output reg          spi_config_en,
    // Configuration status interface
    input               ADC_ENABLE,
    output reg          ADC_config_complete
    );
    // Configuration registers
    localparam STATUS = 8'h01;
    localparam CONFIG = 8'h02;
    localparam RANGE_CH1_CH2 = 8'h03;
    localparam RANGE_CH3_CH4 = 8'h04;
    localparam RANGE_CH5_CH6 = 8'h05;
    localparam RANGE_CH7_CH8 = 8'h06;
    localparam BANDWIDTH     = 8'h07;
    localparam OVERSAMPLING  = 8'h08;
    localparam CH1_GAIN      = 8'h09;
    localparam CH2_GAIN      = 8'h0A;
    localparam CH3_GAIN      = 8'h0B;
    localparam CH4_GAIN      = 8'h0C;
    localparam CH5_GAIN      = 8'h0D;
    localparam CH6_GAIN      = 8'h0E;
    localparam CH7_GAIN      = 8'h0F;
    localparam CH8_GAIN      = 8'h10;
    localparam CH1_OFFSET    = 8'h11;
    localparam CH2_OFFSET    = 8'h12;
    localparam CH3_OFFSET    = 8'h13;
    localparam CH4_OFFSET    = 8'h14;
    localparam CH5_OFFSET    = 8'h15;
    localparam CH6_OFFSET    = 8'h16;
    localparam CH7_OFFSET    = 8'h17;
    localparam CH8_OFFSET    = 8'h18;
    localparam CH1_PHASE     = 8'h19;
    localparam CH2_PHASE     = 8'h1A;
    localparam CH3_PHASE     = 8'h1B;
    localparam CH4_PHASE     = 8'h1C;
    localparam CH5_PHASE     = 8'h1D;
    localparam CH6_PHASE     = 8'h1E;
    localparam CH7_PHASE     = 8'h1F;
    localparam CH8_PHASE     = 8'h20;
    localparam DIGITAL_DIAG_ENABLE = 8'h21;
    localparam DIGITAL_DIAG_ERR = 8'h22;   
    localparam OPEN_DETECT_ENABLE    = 8'h23;
    localparam OPEN_DETECT   = 8'h24;
    localparam DIAGNOSTIC_MUX_CH1_2 = 8'h28;
    localparam DIAGNOSTIC_MUX_CH3_4 = 8'h29;
    localparam DIAGNOSTIC_MUX_CH5_6 = 8'h2A;
    localparam DIAGNOSTIC_MUX_CH7_8 = 8'h2B;
    localparam OPEN_DETECT_QUEUE     = 8'h2C;
    localparam FS_CLK_COUNTER = 8'h2D;
    localparam OS_CLK_COUNTER = 8'h2E;
    localparam ID = 8'h6F;

    // Register values
    localparam CONFIG_VALUE = 8'b0001_1000;
    localparam RANGE_CH1_CH2_VALUE = 8'b0011_0011;
    localparam RANGE_CH3_CH4_VALUE = 8'b0011_0011;
    localparam RANGE_CH5_CH6_VALUE = 8'b0011_0011;
    localparam RANGE_CH7_CH8_VALUE = 8'b0011_0011;
    localparam BANDWIDTH_VALUE = 8'h00;


    reg [3:0]   status='d0;
    reg [1:0]   spi_busy_check='d0;
    reg [3:0]   next_state='d0;
    reg         config_buffer_done='d0;
    reg [3:0]   spi_tx_begin_cnt='d0;
    reg [31:0]  spi_tx_end_cnt='d0;
    reg [31:0]  gap_counter='d0;

    reg [15:0] spi_rx_data_buffer;

    // SPI-PHY BUSY check
    always@(posedge sysclk_200M) spi_busy_check[1:0] <= {spi_busy_check[0], spi_busy};
    reg [31:0] complete_counter = 'd0;
    // SPI configuration logic
    always@(posedge sysclk_200M) begin
        if(!config_buffer_done) begin
            spi_config_en       <= 'b0;
            spi_tx_begin_cnt    <= 'd0;
            spi_tx_end_cnt      <= 'd0;
            ADC_config_complete <= 'b0;
            gap_counter         <= 'd0;
            complete_counter    <= 'd0; // Reset complete counter
        end
        else begin
            if(spi_tx_begin_cnt == 'd4 && spi_tx_end_cnt =='d4) begin
                if(complete_counter>=32'd1000)begin
                    ADC_config_complete <= 1'b1; // Configuration complete  
                    complete_counter <= complete_counter; // Reset complete counter
                end
                else begin
                    complete_counter <= complete_counter + 'd1; // Increment complete counter
                    ADC_config_complete <= 1'b0; // Configuration not yet complete
                end
                spi_tx_begin_cnt<=spi_tx_begin_cnt;
                spi_tx_end_cnt <= spi_tx_end_cnt;
                gap_counter <= gap_counter + 'd0;
            end
            else begin
                if(spi_busy_check==2'b01) spi_tx_begin_cnt <= spi_tx_begin_cnt + 'd1;
                else spi_tx_begin_cnt <= spi_tx_begin_cnt;

                if(spi_busy_check==2'b10) spi_tx_end_cnt <= spi_tx_end_cnt + 'd1;
                else spi_tx_end_cnt <= spi_tx_end_cnt;

                if(spi_busy==2'b00) begin
                    if(gap_counter>='d10) begin 
                        spi_config_en <= 1'b1; // Enable SPI configuration
                        gap_counter <= 'd0; // Reset gap counter
                    end
                    else begin
                        spi_config_en <= 1'b0; // Disable SPI configuration
                        gap_counter<= gap_counter + 'd1;
                    end
                end
                else begin 
                    spi_config_en <= 1'b0; // Disable SPI configuration
                    gap_counter <= 'd0; // Reset gap counter
                end
            end
        end
    end

    // State machine write for configuration register data
    always@(posedge sysclk_200M) begin
        case (status)
            // READ ID register
            'd0:begin
                if(ADC_ENABLE) begin
                    if(spi_tx_ready==1'b1) begin 
                        status<='d1;
                        spi_tx_valid <= 1'b1;
                    end
                    else begin 
                        status<='d0;
                        spi_tx_valid <= 1'b0;
                    end
                    write_register <= {ID,8'h00}; //get in ADC register mode
                end
                else begin
                    status <= 'd0; 
                    write_register<=16'd0;
                    spi_tx_valid <= 1'b0;
                end
                config_buffer_done <= 1'b0;
            end 
            //write register data
            'd1: begin
                if(spi_tx_ready==1'b1) begin 
                    status<='d2;
                    spi_tx_valid <= 1'b1;
                end
                else begin 
                    status<='d1;
                    spi_tx_valid <= 1'b0;
                end
                write_register <= {CONFIG, CONFIG_VALUE}; // write CONFIG register
                config_buffer_done <= 1'b0;
            end
            'd2: begin
                if(spi_tx_ready==1'b1) begin 
                    status<='d3;
                    spi_tx_valid <= 1'b1;
                end
                else begin 
                    status<='d2;
                    spi_tx_valid <= 1'b0;
                end
                write_register <= 16'h0000;
            end
            'd3: begin
                if(spi_tx_ready==1'b1) begin 
                    status<='d15;
                    spi_tx_valid <= 1'b1;
                end
                else begin 
                    status<='d3;
                    spi_tx_valid <= 1'b0;
                end
                write_register <= 16'h0000;
            end
            'd15:begin
                status<='d15;
                write_register <= 'd0;
                spi_tx_valid <= 1'b0;
                config_buffer_done <= 1'b1;
            end
            default: begin
                status <= 'd0; // Reset to initial state
                write_register <= 16'd0;
                spi_tx_valid <= 1'b0;
                config_buffer_done <= 1'b0;
            end
        endcase
    end

    always@(posedge sysclk_200M) begin
        if(spi_rx_valid) spi_rx_ready <= 1'b1;
        else spi_rx_ready <= 1'b0;
    end
    always@(posedge sysclk_200M) begin
        if(spi_rx_valid & spi_rx_ready) spi_rx_data_buffer<= spi_rx_data;
        else spi_rx_data_buffer <= spi_rx_data_buffer;
    end

    

    // ADC_CONFIG_ILA ADC_CONFIG_ILA (
    //     .clk(sysclk_200M),
    //     .probe0(status),
    //     .probe1(write_register),
    //     .probe2(spi_busy),
    //     .probe3(spi_tx_ready),
    //     .probe4(spi_tx_valid),
    //     .probe5(spi_tx_begin_cnt),
    //     .probe6(spi_tx_end_cnt),
    //     .probe7(spi_rx_data_buffer),
    //     .probe8(spi_rx_valid),
    //     .probe9(spi_rx_ready)
    // );
endmodule
