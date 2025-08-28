`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/30 11:12:58
// Design Name: 
// Module Name: SENSOR_TOP
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


module SENSOR_TOP(
    input sysclk_200m,
    input axi_rstn,
    input IMU_ENABLE,
    input IMU_ENABLE_2,
    input ADC_ENABLE,
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
    inout I2C_SCL,
    inout I2C_SDA,
    //ADC internal interface
    output reg[127:0] adc_data,
    output reg adc_data_valid,

    output reg imu_data_valid,
    output reg [111:0] imu_data,

    output reg imu_data_valid_2,
    output reg [111:0] imu_data_2
    );
    //internal IMU data interface
    wire         IMU_DATA_VALID;
    wire  [15:0] TEMP_data;
    wire  [15:0] ACCEL_X;
    wire  [15:0] ACCEL_Y;
    wire  [15:0] ACCEL_Z;
    wire  [15:0] GYRO_X;
    wire  [15:0] GYRO_Y;
    wire  [15:0] GYRO_Z;

    wire         IMU_DATA_VALID_2;
    wire  [15:0] TEMP_data_2;
    wire  [15:0] ACCEL_X_2;
    wire  [15:0] ACCEL_Y_2;
    wire  [15:0] ACCEL_Z_2;
    wire  [15:0] GYRO_X_2;
    wire  [15:0] GYRO_Y_2;
    wire  [15:0] GYRO_Z_2;

    //internal ADC digital interface
    wire  [15:0] spi_rx_data_A;
    wire  [15:0] spi_rx_data_B;
    wire  [15:0] spi_rx_data_C;
    wire  [15:0] spi_rx_data_D;
    wire  [15:0] spi_rx_data_E;
    wire  [15:0] spi_rx_data_F;
    wire  [15:0] spi_rx_data_G;
    wire  [15:0] spi_rx_data_H;
    wire         spi_rx_data_valid;//only valid 1 clock

    IMU_TOP IMU_TOP(
    .sysclk_200m    (sysclk_200m),
    .axi_rstn       (axi_rstn),
    .IMU_ENABLE     (IMU_ENABLE),
    //IMU digital interface
    .IMU_SPI_CLK    (IMU_SPI_CLK ),
    .IMU_SPI_DIN    (IMU_SPI_DIN ),
    .IMU_SPI_DOUT   (IMU_SPI_DOUT),
    .IMU_SPI_CS_N   (IMU_SPI_CS_N),
    //IMU data interface
    .IMU_DATA_VALID (IMU_DATA_VALID ),
    .TEMP_data      (TEMP_data     ),
    .ACCEL_X        (ACCEL_X       ),
    .ACCEL_Y        (ACCEL_Y       ),
    .ACCEL_Z        (ACCEL_Z       ),
    .GYRO_X         (GYRO_X        ),
    .GYRO_Y         (GYRO_Y        ),
    .GYRO_Z         (GYRO_Z        )
    );

    IMU_TOP IMU_TOP_2(
    .sysclk_200m    (sysclk_200m),
    .axi_rstn       (axi_rstn),
    .IMU_ENABLE     (IMU_ENABLE_2),
    //IMU digital interface
    .IMU_SPI_CLK    (IMU_SPI_CLK_2 ),
    .IMU_SPI_DIN    (IMU_SPI_DIN_2 ),
    .IMU_SPI_DOUT   (IMU_SPI_DOUT_2),
    .IMU_SPI_CS_N   (IMU_SPI_CS_N_2),
    //IMU data interface
    .IMU_DATA_VALID (IMU_DATA_VALID_2 ),
    .TEMP_data      (TEMP_data_2     ),
    .ACCEL_X        (ACCEL_X_2     ),
    .ACCEL_Y        (ACCEL_Y_2     ),
    .ACCEL_Z        (ACCEL_Z_2     ),
    .GYRO_X         (GYRO_X_2      ),
    .GYRO_Y         (GYRO_Y_2      ),
    .GYRO_Z         (GYRO_Z_2      )
    );
    
    ADC_TOP ADC_TOP(
    .sysclk_200m    (sysclk_200m),
    .axi_rstn       (axi_rstn),
    .ADC_ENABLE     (ADC_ENABLE),
    //ADC digital interface
    .SPI_CLK        (SPI_CLK      ),
    .SPI_CS_N       (SPI_CS_N     ),
    .SPI_DIN_A      (SPI_DIN_A    ),
    .SPI_DIN_B      (SPI_DIN_B    ),
    .SPI_DIN_C      (SPI_DIN_C    ),
    .SPI_DIN_D      (SPI_DIN_D    ),
    .SPI_DIN_E      (SPI_DIN_E    ),
    .SPI_DIN_F      (SPI_DIN_F    ),
    .SPI_DIN_G      (SPI_DIN_G    ),
    .SPI_DIN_H      (SPI_DIN_H    ),
    .SPI_DOUT       (SPI_DOUT     ),
    //control interface
    .ADC_CONVST     (ADC_CONVST),
    .ADC_BUSY       (ADC_BUSY),
    // output [2:0]    ADC_OSR,
    .ADC_RST        (ADC_RST),
    // Internal signals
    .spi_rx_data_A          (spi_rx_data_A),
    .spi_rx_data_B          (spi_rx_data_B),
    .spi_rx_data_C          (spi_rx_data_C),
    .spi_rx_data_D          (spi_rx_data_D),
    .spi_rx_data_E          (spi_rx_data_E),
    .spi_rx_data_F          (spi_rx_data_F),
    .spi_rx_data_G          (spi_rx_data_G),
    .spi_rx_data_H          (spi_rx_data_H),
    .spi_rx_data_valid      (spi_rx_data_valid)
    );

    // I2C_TOP I2C_TOP(
    // .sysclk_200m    (sysclk_200m),
    // .axi_rstn       (axi_rstn),
    // //I2C digital interface
    // .I2C_SCL        (I2C_SCL),
    // .I2C_SDA        (I2C_SDA)
    // );
    always@(posedge sysclk_200m) begin
        if(spi_rx_data_valid) begin
            adc_data <= {
                spi_rx_data_A,
                spi_rx_data_B,
                spi_rx_data_C,
                spi_rx_data_D,
                spi_rx_data_E,
                spi_rx_data_F,
                spi_rx_data_G,
                spi_rx_data_H
            };
            adc_data_valid <= 1'b1;
        end
        else begin
            adc_data_valid <= 1'b0;
            adc_data <= 128'h0;
        end
    end

    always@(posedge sysclk_200m) begin
        if(IMU_DATA_VALID) begin
            imu_data<= {
                TEMP_data,
                ACCEL_X,
                ACCEL_Y,
                ACCEL_Z,
                GYRO_X,
                GYRO_Y,
                GYRO_Z
            };
            imu_data_valid <= 1'b1;
        end
        else begin
            imu_data_valid <= 1'b0;
            imu_data <= 112'h0;
        end
    end

    always@(posedge sysclk_200m) begin
        if(IMU_DATA_VALID_2) begin
            imu_data_2 <= {
                TEMP_data_2,
                ACCEL_X_2,
                ACCEL_Y_2,
                ACCEL_Z_2,
                GYRO_X_2,
                GYRO_Y_2,
                GYRO_Z_2
            };
            imu_data_valid_2 <= 1'b1;
        end
        else begin
            imu_data_valid_2 <= 1'b0;
            imu_data_2 <= 112'h0;
        end
    end
endmodule
