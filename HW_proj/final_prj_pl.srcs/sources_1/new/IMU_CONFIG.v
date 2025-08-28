`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/24 17:52:20
// Design Name: 
// Module Name: IMU_CONFIG
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


module IMU_CONFIG(
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
    input               IMU_ENABLE,
    output reg          IMU_config_complete
    );
    // IMU intitialization process
    localparam  WRITE=1'b0;
    localparam  READ=1'b1;
    // Configuration registers
    localparam  DEVICE_CONFIG=8'h11;
    localparam  PWR_MGMT0 = 8'h4E;
    // after configureate PWR_MGMT0 register, KEEP 45ms delay between other write operation
    localparam  GYRO_CONFIG0 = 8'h4F;
    localparam  ACCEL_CONFIG0 = 8'h50;
    // Configuration values
    localparam  DEVICE_CONFIG_VALUE = 8'b0000_0001; // reset device configuration register value
    localparam  PWR_MGMT0_VALUE = 8'b0000_1111; // Power management register value
    localparam  GYRO_CONFIG0_VALUE = 8'b0010_0011; // Gyro configuration register value
    localparam  ACCEL_CONFIG0_VALUE = 8'b0100_0011; // Accelerometer configuration register value

    reg [3:0]   status='d0;
    reg [1:0]   spi_busy_check='d0;
    reg         config_buffer_done='d0;
    reg [31:0]  gap_counter='d0;
    reg [31:0]  config_buffer_done_cnt='d0;

    reg [15:0] spi_rx_data_buffer;

    // SPI-PHY BUSY check
    // always@(posedge sysclk_200M) spi_busy_check[1:0] <= {spi_busy_check[0], spi_busy};
    // SPI configuration logic
    reg[3:0] write_state = 'd0;
    always@(posedge sysclk_200M)begin
        case(write_state)
            'd0: begin
                if(IMU_ENABLE && config_buffer_done <= 1'b1)write_state <= 'd1;
                else write_state <= 'd0;
                spi_config_en <= 1'b0;
                gap_counter <= 'd0;
                IMU_config_complete <= 1'b0;
            end
            'd1:begin//write reset register
                if(spi_busy==1'b1)write_state <= 'd2;
                else write_state <= 'd1;
                spi_config_en <= 1'b1;
                gap_counter <= 'd0;
                IMU_config_complete <= 1'b0;
            end
            'd2:begin//wait reset complete
                if(spi_busy==1'b0)begin
                    if(gap_counter >= 32'd200_000_000)begin
                        write_state <= 'd3;
                    end
                    gap_counter <= gap_counter + 'd1;
                end
                else begin
                    write_state <= 'd2;
                    gap_counter <= 'd0;
                end
                spi_config_en <= 1'b0;
                IMU_config_complete <= 1'b0;
            end
            'd3:begin//write pwr management register
                if(spi_busy==1'b1)write_state <= 'd4; 
                else write_state <= 'd3;
                spi_config_en <= 1'b1;
                gap_counter <= 'd0;
                IMU_config_complete <= 1'b0;
            end
            'd4:begin//wait pwr management complete
                if(spi_busy==1'b0)begin
                    if(gap_counter >= 32'd9_000_000)begin
                        write_state <= 'd5;
                    end
                    gap_counter <= gap_counter + 'd1;
                end
                else begin
                    write_state <= 'd4;
                    gap_counter <= 'd0;
                end
                spi_config_en <= 1'b0;
                IMU_config_complete <= 1'b0;
            end
            'd5:begin//write gyro configuration register
                if(spi_busy==1'b1)write_state <= 'd6; 
                else write_state <= 'd5;
                spi_config_en <= 1'b1;
                gap_counter <= 'd0;
                IMU_config_complete <= 1'b0;
            end
            'd6:begin//wait gyro configuration complete
                if(spi_busy==1'b0)begin
                    if(gap_counter >= 32'd100)begin
                        write_state <= 'd7;
                    end
                    gap_counter <= gap_counter + 'd1;
                end
                else begin
                    write_state <= 'd6;
                    gap_counter <= 'd0;
                end
                spi_config_en <= 1'b0;
                IMU_config_complete <= 1'b0;
            end
            'd7:begin//write accel configuration register
                if(spi_busy==1'b1)write_state <= 'd8; 
                else write_state <= 'd7;
                spi_config_en <= 1'b1;
                gap_counter <= 'd0;
                IMU_config_complete <= 1'b0;
            end
            'd8:begin//wait accel configuration complete
                if(spi_busy==1'b0)begin
                    if(gap_counter >= 32'd100)begin
                        write_state <= 'd9;
                    end
                    gap_counter <= gap_counter + 'd1;
                end
                else begin
                    write_state <= 'd8;
                    gap_counter <= 'd0;
                end
                spi_config_en <= 1'b0;
                IMU_config_complete <= 1'b0;
            end
            'd9:begin//wait for all configuration complete
                if(gap_counter >= 32'd1000)begin
                    IMU_config_complete <= 1'b1;
                    gap_counter <= gap_counter;
                end
                else begin
                    IMU_config_complete <= 1'b0;
                    gap_counter <= gap_counter + 'd1;
                end
                write_state <= 'd9;
                spi_config_en <= 1'b0;
            end
            default: begin 
                write_state <= 'd0;
                spi_config_en <= 1'b0;
                gap_counter <= 'd0;
                IMU_config_complete <= 1'b0;
            end
        endcase
    end
    reg [31:0] delay_counter = 'd0;




    // State machine write for configuration register data
    always@(posedge sysclk_200M) begin
        case (status)
            'd0:begin
                if(IMU_ENABLE) begin// Write device configuration register
                    if(spi_tx_ready==1'b1 && spi_tx_valid==1'b1) begin 
                        status<='d1;
                        spi_tx_valid <= 1'b0;
                    end
                    else begin 
                        status<='d0;
                        spi_tx_valid <= 1'b1;
                    end
                    write_register <= {DEVICE_CONFIG, DEVICE_CONFIG_VALUE}; 
                    config_buffer_done_cnt <= 'd0;
                end
                else begin
                    status <= 'd0; 
                    write_register<=16'd0;
                    spi_tx_valid <= 1'b0;
                end
                config_buffer_done <= 1'b0;
                delay_counter <= 'd0;
            end 
            'd1: begin// Write power management register
                if(spi_tx_ready==1'b1 && spi_tx_valid==1'b1) begin 
                    status<='d2;
                    spi_tx_valid <= 1'b0;
                end
                else begin 
                    status<='d1;
                    spi_tx_valid <= 1'b1;
                end
                write_register <= {PWR_MGMT0, PWR_MGMT0_VALUE};
                config_buffer_done <= 1'b0;
                delay_counter <= 'd0;
            end
            'd2: begin// Write Gyro configuration register
                if(spi_tx_ready==1'b1 && spi_tx_valid==1'b1) begin 
                    status<='d3;
                    spi_tx_valid <= 1'b0;
                end
                else begin 
                    status<='d2;
                    spi_tx_valid <= 1'b1;
                end
                write_register <= {GYRO_CONFIG0, GYRO_CONFIG0_VALUE}; 
                config_buffer_done <= 1'b0;
                delay_counter <= 'd0;
            end
            'd3: begin// Write Accel configuration register
               if(spi_tx_ready==1'b1 && spi_tx_valid==1'b1) begin 
                    status<='d15;
                    spi_tx_valid <= 1'b0;
                end
                else begin 
                    status<='d3;
                    spi_tx_valid <= 1'b1;
                end
                write_register <= {ACCEL_CONFIG0,ACCEL_CONFIG0_VALUE}; 
                config_buffer_done <= 1'b0;
                delay_counter <= 'd0;
            end
            'd15:begin
                status<='d15;
                write_register <= 'd0;
                spi_tx_valid <= 1'b0;
                config_buffer_done <= 1'b1;
                delay_counter <= 'd0;
            end
            default: begin
                status <= 'd0; // Reset to initial state
                write_register <= 16'd0;
                spi_tx_valid <= 1'b0;
                config_buffer_done <= 1'b0;
                delay_counter <= 'd0;
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

    

    // IMU_CONFIG_ILA IMU_CONFIG_ILA (
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
    //     .probe9(spi_rx_ready),
    //     .probe10(write_state),
    //     .probe11(config_buffer_done),
    //     .probe12(gap_counter)
    // );
endmodule
