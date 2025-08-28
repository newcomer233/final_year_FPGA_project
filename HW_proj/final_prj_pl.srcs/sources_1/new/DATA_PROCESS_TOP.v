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

    input           imu_data_valid_2,
    input [111:0]   imu_data_2,
    //UDP data interface
    output   [7:0]   sensor_data_tdata,
    output           sensor_data_tkeep,
    output           sensor_data_tlast,
    input            sensor_data_tready,
    output           sensor_data_tvalid,
    output   [0:0]   sensor_data_tuser,

    output           transmit_enable,
    input            transmit_busy,
    output  [15:0]   udp_data_length,
    //DDR4 interface
        //ADC AXI interface
    output  [31:0]   ADC_AXI_awaddr,
    input            ADC_AXI_awready,
    output           ADC_AXI_awvalid,

    input            ADC_AXI_bid,
    output           ADC_AXI_bready,
    input   [1:0]    ADC_AXI_bresp,
    input            ADC_AXI_bvalid,

    output  [127:0]  ADC_AXI_wdata,
    output           ADC_AXI_wlast,
    input            ADC_AXI_wready,
    output           ADC_AXI_wvalid,
        //IMU AXI interface
    output [31:0]    IMU_AXI0_awaddr,
    input            IMU_AXI0_awready,
    output           IMU_AXI0_awvalid,

    input            IMU_AXI0_bid,
    output           IMU_AXI0_bready,
    input   [1:0]    IMU_AXI0_bresp,
    input            IMU_AXI0_bvalid,

    output  [127:0]  IMU_AXI0_wdata,
    output           IMU_AXI0_wlast,
    input            IMU_AXI0_wready,
    output           IMU_AXI0_wvalid,
        //IMU AXI interface
    output [31:0]    IMU_AXI1_awaddr,
    input            IMU_AXI1_awready,
    output           IMU_AXI1_awvalid,

    input            IMU_AXI1_bid,
    output           IMU_AXI1_bready,
    input   [1:0]    IMU_AXI1_bresp,
    input            IMU_AXI1_bvalid,

    output  [127:0]  IMU_AXI1_wdata,
    output           IMU_AXI1_wlast,
    input            IMU_AXI1_wready,
    output           IMU_AXI1_wvalid

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
    
    .imu_data_valid_2(imu_data_valid_2),
    .imu_data_2(imu_data_2),

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
    wire [127:0]  ADC_AXI_wdata_little_end;
    wire [127:0]  IMU_AXI0_wdata_little_end;
    wire [127:0]  IMU_AXI1_wdata_little_end;

    assign ADC_AXI_wdata = {
           ADC_AXI_wdata_little_end[15:8]    , ADC_AXI_wdata_little_end[7:0]   , // H
           ADC_AXI_wdata_little_end[31:24]   , ADC_AXI_wdata_little_end[23:16] , // G
           ADC_AXI_wdata_little_end[47:40]   , ADC_AXI_wdata_little_end[39:32] , // F
           ADC_AXI_wdata_little_end[63:56]   , ADC_AXI_wdata_little_end[55:48] , // E
           ADC_AXI_wdata_little_end[79:72]   , ADC_AXI_wdata_little_end[71:64] , // D
           ADC_AXI_wdata_little_end[95:88]   , ADC_AXI_wdata_little_end[87:80] , // C
           ADC_AXI_wdata_little_end[111:104] , ADC_AXI_wdata_little_end[103:96] , // B
           ADC_AXI_wdata_little_end[127:120] , ADC_AXI_wdata_little_end[119:112]  // A  → 最低地址
        };
    assign IMU_AXI0_wdata ={
           IMU_AXI0_wdata_little_end[15:8]    , IMU_AXI0_wdata_little_end[7:0]   , // H
           IMU_AXI0_wdata_little_end[31:24]   , IMU_AXI0_wdata_little_end[23:16] , // G
           IMU_AXI0_wdata_little_end[47:40]   , IMU_AXI0_wdata_little_end[39:32] , // F
           IMU_AXI0_wdata_little_end[63:56]   , IMU_AXI0_wdata_little_end[55:48] , // E
           IMU_AXI0_wdata_little_end[79:72]   , IMU_AXI0_wdata_little_end[71:64] , // D
           IMU_AXI0_wdata_little_end[95:88]   , IMU_AXI0_wdata_little_end[87:80] , // C
           IMU_AXI0_wdata_little_end[111:104] , IMU_AXI0_wdata_little_end[103:96] , // B
           IMU_AXI0_wdata_little_end[127:120] , IMU_AXI0_wdata_little_end[119:112]  // A  → 最低地址
        };
    assign IMU_AXI1_wdata ={
           IMU_AXI1_wdata_little_end[15:8]    , IMU_AXI1_wdata_little_end[7:0]   , // H
           IMU_AXI1_wdata_little_end[31:24]   , IMU_AXI1_wdata_little_end[23:16] , // G
           IMU_AXI1_wdata_little_end[47:40]   , IMU_AXI1_wdata_little_end[39:32] , // F
           IMU_AXI1_wdata_little_end[63:56]   , IMU_AXI1_wdata_little_end[55:48] , // E
           IMU_AXI1_wdata_little_end[79:72]   , IMU_AXI1_wdata_little_end[71:64] , // D
           IMU_AXI1_wdata_little_end[95:88]   , IMU_AXI1_wdata_little_end[87:80] , // C
           IMU_AXI1_wdata_little_end[111:104] , IMU_AXI1_wdata_little_end[103:96] , // B
           IMU_AXI1_wdata_little_end[127:120] , IMU_AXI1_wdata_little_end[119:112]  // A  → 最低地址
        };    


    DATA_TO_DDR DATA_TO_DDR(
    //System clock
    .sysclk_200m(sysclk_200m),
    .axi_rstn(axi_rstn),
    //ADC data interface
    .adc_data(adc_data),
    .adc_data_valid(adc_data_valid),
    //IMU data interface
    .imu_data_valid(imu_data_valid),
    .imu_data(imu_data),

    .imu_data_valid_2(imu_data_valid_2),
    .imu_data_2(imu_data_2),
    //DDR4 interface
        //ADC AXI interface
    .ADC_AXI_awaddr  (ADC_AXI_awaddr),
    .ADC_AXI_awready (ADC_AXI_awready),
    .ADC_AXI_awvalid (ADC_AXI_awvalid),

    .ADC_AXI_bid     (ADC_AXI_bid),
    .ADC_AXI_bready  (ADC_AXI_bready),
    .ADC_AXI_bresp   (ADC_AXI_bresp),
    .ADC_AXI_bvalid  (ADC_AXI_bvalid),

    .ADC_AXI_wdata   (ADC_AXI_wdata_little_end),
    .ADC_AXI_wlast   (ADC_AXI_wlast),
    .ADC_AXI_wready  (ADC_AXI_wready),
    .ADC_AXI_wvalid  (ADC_AXI_wvalid),
        //IMU AXI interface
    .IMU_AXI0_awaddr  (IMU_AXI0_awaddr),
    .IMU_AXI0_awready (IMU_AXI0_awready),
    .IMU_AXI0_awvalid (IMU_AXI0_awvalid),

    .IMU_AXI0_bid     (IMU_AXI0_bid),
    .IMU_AXI0_bready  (IMU_AXI0_bready),
    .IMU_AXI0_bresp   (IMU_AXI0_bresp),
    .IMU_AXI0_bvalid  (IMU_AXI0_bvalid),

    .IMU_AXI0_wdata   (IMU_AXI0_wdata_little_end),
    .IMU_AXI0_wlast   (IMU_AXI0_wlast),
    .IMU_AXI0_wready  (IMU_AXI0_wready),
    .IMU_AXI0_wvalid  (IMU_AXI0_wvalid),
        //IMU AXI interface
    .IMU_AXI1_awaddr  (IMU_AXI1_awaddr),
    .IMU_AXI1_awready (IMU_AXI1_awready),
    .IMU_AXI1_awvalid (IMU_AXI1_awvalid),

    .IMU_AXI1_bid     (IMU_AXI1_bid),
    .IMU_AXI1_bready  (IMU_AXI1_bready),
    .IMU_AXI1_bresp   (IMU_AXI1_bresp),
    .IMU_AXI1_bvalid  (IMU_AXI1_bvalid),

    .IMU_AXI1_wdata   (IMU_AXI1_wdata_little_end),
    .IMU_AXI1_wlast   (IMU_AXI1_wlast),
    .IMU_AXI1_wready  (IMU_AXI1_wready),
    .IMU_AXI1_wvalid  (IMU_AXI1_wvalid)
    );

endmodule
