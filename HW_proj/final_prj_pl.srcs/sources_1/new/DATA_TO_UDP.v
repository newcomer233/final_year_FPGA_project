`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/03 17:09:54
// Design Name: 
// Module Name: DATA_TO_UDP
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


module DATA_TO_UDP(
    //System clock
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

    output reg          transmit_enable,
    input               transmit_busy,
    output  [15:0]      udp_data_length
    );
    localparam UDP_DATA_LENGTH = 128/8;
    localparam UDP_IMU_DATA_LENGTH = 112/8;
    localparam UDP_IMU_DATA_LENGTH_2 = 112/8;
    assign udp_data_length = UDP_DATA_LENGTH + UDP_IMU_DATA_LENGTH + UDP_IMU_DATA_LENGTH_2;
    assign sensor_data_tuser = 1'b0; // no error, no last packet
    
    reg [127:0]     udp_adc_data_reg;
    reg             udp_adc_data_valid;
    reg [111:0]     udp_imu_data_reg;
    reg             udp_imu_data_valid;
    reg [111:0]     udp_imu_data_reg_2;
    reg             udp_imu_data_valid_2;
    reg [351:0]     udp_data_reg;

    // change ADC data to UDP liitle endian,
    always@(posedge sysclk_200m or negedge axi_rstn) begin
        if(!axi_rstn) begin 
            udp_adc_data_reg <= 128'h0;
            udp_adc_data_valid <= 1'b0;
        end
        else begin
            if (adc_data_valid) begin
                udp_adc_data_reg <= {adc_data[7:0], adc_data[15:8], adc_data[23:16], adc_data[31:24],
                                     adc_data[39:32], adc_data[47:40], adc_data[55:48], adc_data[63:56],
                                     adc_data[71:64], adc_data[79:72], adc_data[87:80], adc_data[95:88],
                                     adc_data[103:96], adc_data[111:104], adc_data[119:112], adc_data[127:120]};
                udp_adc_data_valid <= 1'b1;
            end
            else begin
                udp_adc_data_reg <= udp_adc_data_reg;
                udp_adc_data_valid <= 1'b0;
            end
        end
    end
    // change IMU data to UDP liitle endian,
    always@(posedge sysclk_200m or negedge axi_rstn) begin
        if(!axi_rstn) begin 
            udp_imu_data_reg <= 112'h0;
            udp_imu_data_valid <= 1'b0;
        end
        else begin
            if (imu_data_valid) begin
                udp_imu_data_reg <= {imu_data[7:0], imu_data[15:8], imu_data[23:16], imu_data[31:24],
                                     imu_data[39:32], imu_data[47:40], imu_data[55:48], imu_data[63:56],
                                     imu_data[71:64], imu_data[79:72], imu_data[87:80], imu_data[95:88],
                                     imu_data[103:96], imu_data[111:104]};
                udp_imu_data_valid <= 1'b1;
            end
            else begin
                udp_imu_data_reg <= udp_imu_data_reg;
                udp_imu_data_valid <= 1'b0;
            end
        end
    end
    // change IMU data 2 to UDP liitle endian,
    always@(posedge sysclk_200m or negedge axi_rstn) begin
        if(!axi_rstn) begin 
            udp_imu_data_reg_2 <= 112'h0;
            udp_imu_data_valid_2 <= 1'b0;
        end
        else begin
            if (imu_data_valid_2) begin
                udp_imu_data_reg_2 <= {imu_data_2[7:0], imu_data_2[15:8], imu_data_2[23:16], imu_data_2[31:24],
                                     imu_data_2[39:32], imu_data_2[47:40], imu_data_2[55:48], imu_data_2[63:56],
                                     imu_data_2[71:64], imu_data_2[79:72], imu_data_2[87:80], imu_data_2[95:88],
                                     imu_data_2[103:96], imu_data_2[111:104]};
                udp_imu_data_valid_2 <= 1'b1;
            end
            else begin
                udp_imu_data_reg_2 <= udp_imu_data_reg_2;
                udp_imu_data_valid_2 <= 1'b0;
            end
        end
    end
    //UDP data mixing
    // reg UDP_adc_flag;
    // reg UDP_imu_flag;
    reg udp_data_valid;
    reg udp_imu_data_valid_reg;
    reg udp_imu_data_valid_2_reg;
    reg udp_adc_data_valid_reg;
    always@(posedge sysclk_200m or negedge axi_rstn) begin
        if(!axi_rstn) begin 
            udp_data_reg <= 352'd0000_0000_0000_0000_0000_0000_0000_0000;
            udp_data_valid <= 1'b0;
            udp_adc_data_valid_reg <= 'd0;
            udp_imu_data_valid_reg <= 'd0;
            udp_imu_data_valid_2_reg <= 'd0;
        end
        else begin
            case(udp_data_valid)
                'd0:begin
                    if(udp_adc_data_valid_reg && udp_imu_data_valid_reg && udp_imu_data_valid_2_reg) udp_data_valid <= 1'b1;
                    else udp_data_valid <= 1'b0;

                    if(udp_adc_data_valid) udp_adc_data_valid_reg <= 1'b1;
                    else udp_adc_data_valid_reg <= udp_adc_data_valid_reg;

                    if(udp_imu_data_valid) udp_imu_data_valid_reg <= 1'b1;
                    else udp_imu_data_valid_reg <= udp_imu_data_valid_reg;

                    if(udp_imu_data_valid_2) udp_imu_data_valid_2_reg <= 1'b1;
                    else udp_imu_data_valid_2_reg <= udp_imu_data_valid_2_reg;

                    

                    if (udp_adc_data_valid) udp_data_reg[127:0] <= udp_adc_data_reg;
                    else udp_data_reg[127:0] <= udp_data_reg[127:0];
                    if (udp_imu_data_valid) udp_data_reg[239:128]  <= udp_imu_data_reg;
                    else udp_data_reg[239:128] <= udp_data_reg[239:128];
                    if (udp_imu_data_valid_2) udp_data_reg[351:240] <= udp_imu_data_reg_2;
                    else udp_data_reg[351:240] <= udp_data_reg[351:240];
                end
                'd1:begin
                    udp_adc_data_valid_reg  <= 1'b0;
                    udp_imu_data_valid_reg  <= 1'b0;
                    udp_imu_data_valid_2_reg <= 1'b0;
                    udp_data_valid <= 1'b0;
                    udp_data_reg <= 352'd0000_0000_0000_0000_0000_0000_0000_0000;
                end
                default: begin
                    udp_adc_data_valid_reg   <= 'd0;
                    udp_imu_data_valid_reg   <= 'd0;
                    udp_imu_data_valid_2_reg <= 'd0;
                    udp_data_valid <= 1'b0;
                    udp_data_reg <= 352'd0000_0000_0000_0000_0000_0000_0000_0000;
                end
            endcase
        end
    end
    //UDP data fifo 
    // always@(posedge sysclk_200m or negedge axi_rstn) begin
    //     if (!axi_rstn) begin 
    //         udp_data_length_reg <= 16'd0;
    //     end
    //     else begin
    //         case ({udp_adc_data_valid, udp_imu_data_valid})
    //             2'b11: udp_data_length_reg <= UDP_DATA_LENGTH + UDP_IMU_DATA_LENGTH;
    //             2'b10: udp_data_length_reg <= UDP_DATA_LENGTH;
    //             2'b01: udp_data_length_reg <= UDP_IMU_DATA_LENGTH;
    //             2'b00: udp_data_length_reg <= udp_data_length_reg;
    //         endcase
    //     end
    // end
    reg[31:0] gap_counter;
    always @(posedge sysclk_200m) begin
        if(axi_rstn == 1'b0) begin
            gap_counter <= 32'd0;
            transmit_enable <= 1'b0;
        end
        else begin 
            if(transmit_busy ==1'b0)
                if (gap_counter >= 32'd20) begin 
                    if(prog_empty==1'b0 ) begin 
                        transmit_enable <= 1'b1;
                        gap_counter <= 32'd0;
                    end
                    else begin 
                        transmit_enable <= 1'b0;
                        gap_counter <= gap_counter;
                    end
                end
                else begin
                    transmit_enable <= 1'b0;
                    gap_counter <= gap_counter + 'd1;
                end
            else begin
                transmit_enable <= 1'b0;
                gap_counter <= 32'd0;
            end
        end
    end
    wire [351:0] m_axis_tdata ;
    wire m_axis_tvalid;
    wire m_axis_tready;
    wire [43:0]m_axis_tkeep ;
    wire m_axis_tlast ;

    data_to_udp_fifo data_to_udp_fifo(
        .s_axis_aclk(sysclk_200m),
        .s_axis_aresetn(axi_rstn),

        // data interface
        .s_axis_tdata   (udp_data_reg),
        .s_axis_tvalid  (udp_data_valid),
        .s_axis_tkeep   (44'hFFF_FFFF_FFFF), // 44 bytes, all valid
        .s_axis_tready  (),
        .s_axis_tlast   (1'b1), // all last packet

        .m_axis_tdata   (m_axis_tdata ),
        .m_axis_tvalid  (m_axis_tvalid),
        .m_axis_tready  (m_axis_tready),
        .m_axis_tkeep   (m_axis_tkeep ),
        .m_axis_tlast   (m_axis_tlast ),

        .prog_empty     (prog_empty)
    );
    data_to_udp_fifo_widcov data_to_udp_fifo_widcov(
        .aclk(sysclk_200m),
        .aresetn(axi_rstn),

        .s_axis_tvalid(m_axis_tvalid),
        .s_axis_tready(m_axis_tready),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),

        .m_axis_tvalid(sensor_data_tvalid),
        .m_axis_tready(sensor_data_tready),
        .m_axis_tdata(sensor_data_tdata),
        .m_axis_tkeep(sensor_data_tkeep),
        .m_axis_tlast(sensor_data_tlast)
    );
    // reg [31:0] time_counter_10ns;
    // always @(posedge sysclk_200m or negedge axi_rstn) begin
    //     if (!axi_rstn) time_counter_10ns <= 32'd0;
    //     else time_counter_10ns <= time_counter_10ns + 32'd1;
    // end
    // ila_data_counter ila_data_counter(
    //     .clk(sysclk_200m), // input wire clk

    //     .probe0(adc_data_valid), // input wire [127:0] probe0  
    //     .probe1(udp_adc_data_valid), // input wire [127:0] probe1  
    //     .probe2(imu_data_valid), // input wire [111:0] probe2  
    //     .probe3(udp_imu_data_valid), // input wire [111:0] probe3  
    //     .probe4(udp_data_valid), // input wire [0:0] probe4  
    //     .probe5(time_counter_10ns) // input wire [351:0] probe5  
    // );
endmodule
