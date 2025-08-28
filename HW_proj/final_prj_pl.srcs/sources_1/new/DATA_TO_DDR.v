`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/28 14:16:24
// Design Name: 
// Module Name: DATA_TO_DDR
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


module DATA_TO_DDR(
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
    //DDR4 interface
        //ADC AXI interface
    output reg[31:0]   ADC_AXI_awaddr,
    input              ADC_AXI_awready,
    output reg         ADC_AXI_awvalid,

    input              ADC_AXI_bid,
    output reg         ADC_AXI_bready,
    input[1:0]         ADC_AXI_bresp,
    input              ADC_AXI_bvalid,

    output reg [127:0] ADC_AXI_wdata,
    output reg         ADC_AXI_wlast,
    input              ADC_AXI_wready,
    output reg         ADC_AXI_wvalid,
        //IMU AXI interface
    output reg[31:0]   IMU_AXI0_awaddr,
    input              IMU_AXI0_awready,
    output reg         IMU_AXI0_awvalid,

    input               IMU_AXI0_bid,
    output reg          IMU_AXI0_bready,
    input[1:0]          IMU_AXI0_bresp,
    input               IMU_AXI0_bvalid,

    output reg [127:0] IMU_AXI0_wdata,
    output reg         IMU_AXI0_wlast,
    input              IMU_AXI0_wready,
    output reg         IMU_AXI0_wvalid,
        //IMU AXI interface
    output reg[31:0]   IMU_AXI1_awaddr,
    input              IMU_AXI1_awready,
    output reg         IMU_AXI1_awvalid,

    input               IMU_AXI1_bid,
    output reg          IMU_AXI1_bready,
    input[1:0]          IMU_AXI1_bresp,
    input               IMU_AXI1_bvalid,

    output reg [127:0] IMU_AXI1_wdata,
    output reg         IMU_AXI1_wlast,
    input              IMU_AXI1_wready,
    output reg         IMU_AXI1_wvalid
    );
    //STATE MACHINE
    localparam IDLE= 0;
    localparam WRITE_ADDR = 1;
    localparam WRITE_DATA = 2;
    localparam CHECK_RESP = 3;
    //Parameter definitions
    localparam ADC_AXI_BASE_ADDR  = 32'hA000_0000;
    localparam IMU_AXI0_BASE_ADDR = 32'hA010_0000;
    localparam IMU_AXI1_BASE_ADDR = 32'hA020_0000;
    localparam ADDR_INCR = 32'h0000_0010; //Address increment for each write
    reg[31:0] adc_state;
    reg[31:0] imu0_state;
    reg[31:0] imu1_state;
    reg[31:0] adc_shift_addr;
    reg[31:0] imu0_shift_addr;
    reg[31:0] imu1_shift_addr;
    reg[15:0] imu0_data_count;
    reg[15:0] imu1_data_count;

    reg adc_work;
    reg imu0_work;
    reg imu1_work;
    reg ddr4_enable;
    always@(posedge sysclk_200m )begin
        if(!axi_rstn) begin
            adc_work <= 1'b0;
            imu0_work <= 1'b0;
            imu1_work <= 1'b0;
            ddr4_enable <= 1'b0;
        end else begin
            if(adc_data_valid)adc_work <= 1'b1;
            else adc_work <= adc_work;
            if(imu_data_valid) imu0_work <= 1'b1;
            else imu0_work <= imu0_work;
            if(imu_data_valid_2) imu1_work <= 1'b1;
            else imu1_work <= imu1_work;

            if(adc_work && imu0_work && imu1_work)ddr4_enable <= 1'b1;
            else ddr4_enable <= 1'b0;
        end
    end
    // ADC AXI WRITE LOGIC
    always @(posedge sysclk_200m ) begin
        if(!axi_rstn || !ddr4_enable) begin
            adc_state <= IDLE;
            adc_shift_addr <= 32'd0;
            ADC_AXI_awaddr <= 32'd0;
            ADC_AXI_awvalid <= 1'b0;
            ADC_AXI_wdata <= 128'd0;
            ADC_AXI_wvalid <= 1'b0;
            ADC_AXI_wlast <= 1'b0;
            ADC_AXI_bready <= 1'b0;
        end else begin
            case(adc_state)
                IDLE:begin
                    if(adc_data_valid) begin
                        ADC_AXI_wdata <= adc_data;
                        adc_state <= WRITE_ADDR;
                    end else begin
                        ADC_AXI_wdata <= 128'd0000_0000;
                        adc_state <= IDLE;
                    end
                    adc_shift_addr <= adc_shift_addr; 
                    ADC_AXI_wvalid  <= 1'b0;
                    ADC_AXI_awaddr  <= 32'd0;
                    ADC_AXI_awvalid <= 1'b0;
                    ADC_AXI_wlast   <= 1'b0;
                    ADC_AXI_bready  <= 1'b0;
                end
                WRITE_ADDR: begin
                    if(ADC_AXI_awready && ADC_AXI_awvalid) begin
                        ADC_AXI_awvalid <= 1'b0;
                        adc_state <= WRITE_DATA;
                    end else begin
                        ADC_AXI_awvalid <= 1'b1;
                        adc_state <= WRITE_ADDR;
                    end
                    adc_shift_addr <= adc_shift_addr;
                    ADC_AXI_awaddr <= adc_shift_addr+ADC_AXI_BASE_ADDR;
                    ADC_AXI_wdata <= ADC_AXI_wdata;
                    ADC_AXI_wvalid <= 1'b0;
                    ADC_AXI_wlast  <= 1'b0;
                    ADC_AXI_bready <= 1'b0;
                    
                end
                WRITE_DATA: begin
                    if(ADC_AXI_wready && ADC_AXI_wvalid) begin
                        ADC_AXI_wvalid <= 1'b0;
                        adc_state <= CHECK_RESP;
                    end else begin
                        ADC_AXI_wvalid <= 1'b1;
                        adc_state <= WRITE_DATA;
                    end
                    adc_shift_addr <= adc_shift_addr;
                    ADC_AXI_awaddr <= 32'd0;
                    ADC_AXI_awvalid <= 1'b0;
                    ADC_AXI_wdata <= ADC_AXI_wdata;
                    ADC_AXI_wlast <= 1'b1; //Last data in the burst
                    ADC_AXI_bready <= 1'b0;
                end
                CHECK_RESP: begin
                    if(ADC_AXI_bvalid && ADC_AXI_bready) begin
                        ADC_AXI_bready <= 1'b0;
                        adc_state <= IDLE;
                        if(adc_shift_addr <= 32'h000F_FFF0) adc_shift_addr <= adc_shift_addr + ADDR_INCR; //Prepare for next address
                        else adc_shift_addr <= 32'd0; //Reset address if it exceeds the limit
                    end else begin
                        ADC_AXI_bready <= 1'b1;
                        adc_state <= CHECK_RESP;
                        adc_shift_addr <= adc_shift_addr;
                    end
                    ADC_AXI_awaddr  <= 32'd0;
                    ADC_AXI_awvalid <= 1'b0;
                    ADC_AXI_wdata   <= 128'd0;
                    ADC_AXI_wlast   <= 1'b0; 
                end
                default: begin
                    adc_state <= IDLE;
                    adc_shift_addr <= 32'd0;
                    ADC_AXI_awaddr  <= 32'd0;
                    ADC_AXI_awvalid <= 1'b0;
                    ADC_AXI_wdata   <= 128'd0;
                    ADC_AXI_wlast   <= 1'b0; 
                    ADC_AXI_bready  <= 1'b0;
                end
            endcase
        end
    end
   //IMU AXI0 LOGIC
    always @(posedge sysclk_200m ) begin
        if(!axi_rstn || !ddr4_enable) begin
            imu0_state <= IDLE;
            imu0_shift_addr <= 32'd0;
            IMU_AXI0_awaddr <= 32'd0;
            IMU_AXI0_awvalid <= 1'b0;
            IMU_AXI0_wdata <= 128'd0;
            IMU_AXI0_wvalid <= 1'b0;
            IMU_AXI0_wlast <= 1'b0;
            IMU_AXI0_bready <= 1'b0;
            imu0_data_count <= 16'd0;
        end else begin
            case(imu0_state)
                IDLE:begin
                    if(imu_data_valid) begin
                        IMU_AXI0_wdata [127:112]    <= imu0_data_count;
                        IMU_AXI0_wdata [111:0]      <= imu_data;
                        imu0_state <= WRITE_ADDR;
                        imu0_data_count<= imu0_data_count + 'd1;
                    end else begin
                        IMU_AXI0_wdata <= 128'd0000_0000;
                        imu0_state <= IDLE;
                        imu0_data_count<= imu0_data_count;
                    end
                    imu0_shift_addr <= imu0_shift_addr; 
                    IMU_AXI0_wvalid  <= 1'b0;
                    IMU_AXI0_awaddr  <= 32'd0;
                    IMU_AXI0_awvalid <= 1'b0;
                    IMU_AXI0_wlast   <= 1'b0;
                    IMU_AXI0_bready  <= 1'b0;
                end
                WRITE_ADDR: begin
                    if(IMU_AXI0_awready && IMU_AXI0_awvalid) begin
                        IMU_AXI0_awvalid <= 1'b0;
                        imu0_state <= WRITE_DATA;
                    end else begin
                        IMU_AXI0_awvalid <= 1'b1;
                        imu0_state <= WRITE_ADDR;
                    end
                    imu0_shift_addr <= imu0_shift_addr;
                    IMU_AXI0_awaddr <= imu0_shift_addr+ IMU_AXI0_BASE_ADDR;
                    IMU_AXI0_wdata <= IMU_AXI0_wdata;
                    IMU_AXI0_wvalid <= 1'b0;
                    IMU_AXI0_wlast  <= 1'b0;
                    IMU_AXI0_bready <= 1'b0;         
                    imu0_data_count<= imu0_data_count;           
                end
                WRITE_DATA: begin
                    if(IMU_AXI0_wready && IMU_AXI0_wvalid) begin
                        IMU_AXI0_wvalid <= 1'b0;
                        imu0_state <= CHECK_RESP;
                    end else begin
                        IMU_AXI0_wvalid <= 1'b1;
                        imu0_state <= WRITE_DATA;
                    end
                    imu0_shift_addr <= imu0_shift_addr;
                    IMU_AXI0_awaddr <= 32'd0;
                    IMU_AXI0_awvalid <= 1'b0;
                    IMU_AXI0_wdata <= IMU_AXI0_wdata;
                    IMU_AXI0_wlast <= 1'b1; //Last data in the burst
                    IMU_AXI0_bready <= 1'b0;
                    imu0_data_count<= imu0_data_count;
                end
                CHECK_RESP: begin
                    if(IMU_AXI0_bvalid && IMU_AXI0_bready) begin
                        IMU_AXI0_bready <= 1'b0;
                        imu0_state <= IDLE;
                        if(imu0_shift_addr <= 32'h000F_FFF0) imu0_shift_addr <= imu0_shift_addr + ADDR_INCR; //Prepare for next address
                        else imu0_shift_addr <= 32'd0; //Reset address if it exceeds the limit
                    end else begin
                        IMU_AXI0_bready <= 1'b1;
                        imu0_state <= CHECK_RESP;
                        imu0_shift_addr <= imu0_shift_addr;
                    end
                    IMU_AXI0_awaddr  <= 32'd0;
                    IMU_AXI0_awvalid <= 1'b0;
                    IMU_AXI0_wdata   <= 128'd0; 
                    IMU_AXI0_wlast   <= 1'b0;
                    imu0_data_count<= imu0_data_count;
                end
                default: begin
                    imu0_state <= IDLE;
                    imu0_shift_addr <= 32'd0;
                    IMU_AXI0_awaddr  <= 32'd0;
                    IMU_AXI0_awvalid <= 1'b0;
                    IMU_AXI0_wdata   <= 128'd0;
                    IMU_AXI0_wlast   <= 1'b0;
                    IMU_AXI0_bready  <= 1'b0;
                    imu0_data_count<= 'd0;
                end
            endcase
        end
    end
   //IMU AXI1 LOGIC
     always @(posedge sysclk_200m ) begin
        if(!axi_rstn || !ddr4_enable) begin
            imu1_state <= IDLE;
            imu1_shift_addr <= 32'd0;
            IMU_AXI1_awaddr <= 32'd0;
            IMU_AXI1_awvalid <= 1'b0;
            IMU_AXI1_wdata <= 128'd0;
            IMU_AXI1_wvalid <= 1'b0;
            IMU_AXI1_wlast <= 1'b0;
            IMU_AXI1_bready <= 1'b0;
            imu1_data_count <= 16'd0;
        end else begin
            case(imu1_state)
                IDLE:begin
                    if(imu_data_valid_2) begin
                        IMU_AXI1_wdata [127:112]    <= imu1_data_count;
                        IMU_AXI1_wdata [111:0]      <= imu_data_2;
                        imu1_state <= WRITE_ADDR;
                        imu1_data_count<= imu1_data_count + 'd1;
                    end else begin
                        IMU_AXI1_wdata <= 128'd0000_0000;
                        imu1_state <= IDLE;
                        imu1_data_count<= imu1_data_count;
                    end
                    imu1_shift_addr <= imu1_shift_addr; 
                    IMU_AXI1_wvalid  <= 1'b0;
                    IMU_AXI1_awaddr  <= 32'd0;
                    IMU_AXI1_awvalid <= 1'b0;
                    IMU_AXI1_wlast   <= 1'b0;
                    IMU_AXI1_bready  <= 1'b0;
                end
                WRITE_ADDR: begin
                    if(IMU_AXI1_awready && IMU_AXI1_awvalid) begin
                        IMU_AXI1_awvalid <= 1'b0;
                        imu1_state <= WRITE_DATA;
                    end else begin
                        IMU_AXI1_awvalid <= 1'b1;
                        imu1_state <= WRITE_ADDR;
                    end
                    imu1_shift_addr <= imu1_shift_addr;
                    IMU_AXI1_awaddr <= imu1_shift_addr+ IMU_AXI1_BASE_ADDR;
                    IMU_AXI1_wdata <= IMU_AXI1_wdata;
                    IMU_AXI1_wvalid <= 1'b0;
                    IMU_AXI1_wlast  <= 1'b0;
                    IMU_AXI1_bready <= 1'b0;         
                    imu1_data_count<= imu1_data_count;           
                end
                WRITE_DATA: begin
                    if(IMU_AXI1_wready && IMU_AXI1_wvalid) begin
                        IMU_AXI1_wvalid <= 1'b0;
                        imu1_state <= CHECK_RESP;
                    end else begin
                        IMU_AXI1_wvalid <= 1'b1;
                        imu1_state <= WRITE_DATA;
                    end
                    imu1_shift_addr <= imu1_shift_addr;
                    IMU_AXI1_awaddr <= 32'd0;
                    IMU_AXI1_awvalid <= 1'b0;
                    IMU_AXI1_wdata <= IMU_AXI1_wdata;
                    IMU_AXI1_wlast <= 1'b1; //Last data in the burst
                    IMU_AXI1_bready <= 1'b0;
                    imu1_data_count<= imu1_data_count;
                end
                CHECK_RESP: begin
                    if(IMU_AXI1_bvalid && IMU_AXI1_bready) begin
                        IMU_AXI1_bready <= 1'b0;
                        imu1_state <= IDLE;
                        if(imu1_shift_addr <= 32'h000F_FFF0) imu1_shift_addr <= imu1_shift_addr + ADDR_INCR; //Prepare for next address
                        else imu1_shift_addr <= 32'd0; //Reset address if it exceeds the limit
                    end else begin
                        IMU_AXI1_bready <= 1'b1;
                        imu1_state <= CHECK_RESP;
                        imu1_shift_addr <= imu1_shift_addr;
                    end
                    IMU_AXI1_awaddr  <= 32'd0;
                    IMU_AXI1_awvalid <= 1'b0;
                    IMU_AXI1_wdata   <= 128'd0; 
                    IMU_AXI1_wlast   <= 1'b0;
                    imu1_data_count<= imu1_data_count;
                end
                default: begin
                    imu1_state <= IDLE;
                    imu1_shift_addr <= 32'd0;
                    IMU_AXI1_awaddr  <= 32'd0;
                    IMU_AXI1_awvalid <= 1'b0;
                    IMU_AXI1_wdata   <= 128'd0;
                    IMU_AXI1_wlast   <= 1'b0;
                    IMU_AXI1_bready  <= 1'b0;
                    imu1_data_count<= 'd0;
                end
            endcase
        end
    end  
endmodule
