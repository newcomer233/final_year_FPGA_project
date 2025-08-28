`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/24 17:50:47
// Design Name: 
// Module Name: IMU_TOP
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


module IMU_TOP(
    // input sysclk_200m_p,
    // input sysclk_200m_n,
    input sysclk_200m,
    input axi_rstn,
    input IMU_ENABLE,
    //IMU digital interface
    inout   IMU_SPI_CLK,
    input   IMU_SPI_DIN,
    output  IMU_SPI_DOUT,
    inout   IMU_SPI_CS_N,
    //IMU data interface
    output         IMU_DATA_VALID,
    output  [15:0] TEMP_data,
    output  [15:0] ACCEL_X,
    output  [15:0] ACCEL_Y,
    output  [15:0] ACCEL_Z,
    output  [15:0] GYRO_X,
    output  [15:0] GYRO_Y,
    output  [15:0] GYRO_Z

    );

    // wire sysclk_200m;

    wire          spi_tx_valid;
    wire          spi_tx_ready;
    wire [15:0]   spi_tx_data;
    wire          spi_tx_last;
    wire          spi_rx_valid;

    wire          spi_rx_ready;
    wire [15:0]   spi_rx_data;
    wire          spi_rx_last;

    wire          spi_en;
    wire [31:0]   bits_len;
    wire          spi_busy;


    // wire          IMU_ENABLE;
    wire          IMU_config_complete;

    // clk_wiz_0 system_clock(
    // // Diff Clock
    // .clk_in1_p(sysclk_200m_p),
    // .clk_in1_n(sysclk_200m_n),
    // // SYSTEM CLOCK
    // .clk_out1(sysclk_200m),           
    // .locked(locked)
    // );


    wire [15:0] spi_read_write_data;
    wire [15:0] spi_config_tx_data;

    wire spi_config_rx_ready;
    wire spi_read_rx_ready;
    wire spi_read_en;
    wire spi_config_en;

    
    reg       axi_rstn_reg;
    reg [31:0] axi_rstn_cnt;
    reg       IMU_config_complete_reg;


    assign spi_phy_en   = IMU_config_complete_reg ? spi_read_en : spi_config_en; 
    assign spi_rx_ready = IMU_config_complete_reg ? spi_read_rx_ready : spi_config_rx_ready; 
    assign bits_len     = IMU_config_complete_reg ? 32'd120 : 32'd16; // 16 bits for configuration, 120 bits for data(7*16+8 bit)

    assign spi_tx_data = IMU_config_complete_reg ? spi_read_write_data : spi_config_tx_data;
    assign spi_tx_valid = IMU_config_complete_reg ? spi_read_write_valid : spi_config_tx_valid;
    assign spi_config_tx_ready = spi_tx_ready;
    assign spi_read_tx_ready = IMU_config_complete_reg ? spi_tx_ready :1'b0;

    always@(posedge sysclk_200m) begin
        if(IMU_config_complete == 1'b0) begin
            axi_rstn_reg <= axi_rstn;
            axi_rstn_cnt <= 32'd0;
            IMU_config_complete_reg <= 1'b0;
        end
        else begin
            if(axi_rstn_cnt>=32'd10) IMU_config_complete_reg <= 1'b1;
            else IMU_config_complete_reg <= 1'b0;

            if(axi_rstn_cnt >= 32'd3) axi_rstn_reg <= 1'b1;
            else axi_rstn_reg <= 1'b0;

            if(axi_rstn_cnt>=32'd10) axi_rstn_cnt <= axi_rstn_cnt;
            else axi_rstn_cnt <= axi_rstn_cnt + 32'd1;
        end
    end


    IMU_SPI_LINK IMU_SPI_LINK(
        //physical layer
        .sysclk_200m    (sysclk_200m),
        .rst_n          (axi_rstn_reg),
        //PHYSICAL INTERFACE
        .SPI_CLK        (IMU_SPI_CLK),
        .SPI_DIN        (IMU_SPI_DIN),
        .SPI_DOUT       (IMU_SPI_DOUT),
        .SPI_CS_N       (IMU_SPI_CS_N),
        //data interface axi-stream
        .spi_tx_valid   (spi_tx_valid),
        .spi_tx_ready   (spi_tx_ready),
        .spi_tx_data    (spi_tx_data ),
        .spi_tx_last    (spi_tx_last ),

        .spi_rx_valid   (spi_rx_valid),
        .spi_rx_ready   (spi_rx_ready),
        .spi_rx_data    (spi_rx_data ),
        .spi_rx_last    (spi_rx_last ),
        //control interface
        .spi_en         (spi_phy_en),
        .bits_len       (bits_len),
        .spi_busy       (spi_busy)
    );

    IMU_READ IMU_READ(
        .sysclk_200M(sysclk_200m),
        //interface SPI RX
        .spi_rx_valid           (spi_rx_valid),
        .spi_rx_ready           (spi_read_rx_ready),
        .spi_rx_data            (spi_rx_data ),
        .spi_rx_last            (spi_rx_last ),

        .spi_tx_data            (spi_read_write_data),
        .spi_tx_valid           (spi_read_write_valid),
        .spi_tx_ready           (spi_read_tx_ready),
        // Configuration status interface
        .IMU_ENABLE             (IMU_ENABLE),
        .IMU_config_complete    (IMU_config_complete_reg),
        // interface to SPI PHY
        .spi_en                 (spi_read_en),
        .spi_busy               (spi_busy),
        // interface to IMU data
        .IMU_DATA_VALID         (IMU_DATA_VALID),
        .TEMP_data              (TEMP_data),
        .ACCEL_X                (ACCEL_X),
        .ACCEL_Y                (ACCEL_Y),
        .ACCEL_Z                (ACCEL_Z),
        .GYRO_X                 (GYRO_X),
        .GYRO_Y                 (GYRO_Y),
        .GYRO_Z                 (GYRO_Z)
    );





    IMU_CONFIG IMU_CONFIG(
        .sysclk_200M    (sysclk_200m),
        //interface SPI tx
        .spi_busy       (spi_busy),
        .write_register (spi_config_tx_data)   ,
        .spi_tx_valid   (spi_config_tx_valid)  ,
        .spi_tx_ready   (spi_config_tx_ready)  ,

        .spi_rx_data    (spi_rx_data),
        .spi_rx_valid   (spi_rx_valid)  ,
        .spi_rx_ready   (spi_config_rx_ready) ,
        .spi_config_en  (spi_config_en) ,
        // Configuration status interface
        .IMU_ENABLE     (IMU_ENABLE)    ,
        .IMU_config_complete (IMU_config_complete)
    ); 





    // IMU_TOP_VIO IMU_TOP_VIO(
    // .clk         (sysclk_200m),
    // .probe_in0   (axi_rstn_reg),
    // .probe_in1   (IMU_config_complete),  
    // .probe_out0  (IMU_ENABLE)
    // );
endmodule
