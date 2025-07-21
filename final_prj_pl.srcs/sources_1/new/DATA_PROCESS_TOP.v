`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/03 16:58:09
// Design Name: 
// Module Name: DATA_PROCESS_TOP
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
// UDP is little endian, pay attention to the data order
//////////////////////////////////////////////////////////////////////////////////


module DATA_PROCESS_TOP(
    input sysclk_200m,
    input axi_rstn,
    //ADC data interface
    input[127:0]    adc_data,
    input           adc_data_valid,
    //IMU data interface
    input           imu_data_valid,
    input [111:0]   imu_data,
    //UDP data interface
    output   [7:0]   sensor_data_tdata,
    output           sensor_data_tkeep,
    output           sensor_data_tlast,
    input            sensor_data_tready,
    output           sensor_data_tvalid,
    output   [0:0]   sensor_data_tuser,

    output           transmit_enable,
    input            transmit_busy,
    output  [15:0]   udp_data_length
    );
    DATA_TO_UDP DATA_TO_UDP(
    //System clock
    .sysclk_200m(sysclk_200m),
    .axi_rstn(axi_rstn),
    //ADC data interface
    .adc_data(adc_data),
    .adc_data_valid(adc_data_valid),
    //IMU data interface
    .imu_data_valid(imu_data_valid),
    .imu_data(imu_data),
    //UDP data interface
    .sensor_data_tdata  (sensor_data_tdata ),
    .sensor_data_tkeep  (sensor_data_tkeep ),
    .sensor_data_tlast  (sensor_data_tlast ),
    .sensor_data_tready (sensor_data_tready),
    .sensor_data_tvalid (sensor_data_tvalid),
    .sensor_data_tuser  (sensor_data_tuser ),
    .transmit_enable    (transmit_enable),
    .transmit_busy      (transmit_busy),
    .udp_data_length    (udp_data_length)
    );
endmodule
