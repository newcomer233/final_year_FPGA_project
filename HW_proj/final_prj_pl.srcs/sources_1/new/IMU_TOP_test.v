`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/19 11:17:02
// Design Name: 
// Module Name: IMU_TOP_test
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


module IMU_TOP_test(
    input sysclk_200m_p,
    input sysclk_200m_n,
    //ADC digital interface
    inout   IMU_SPI_CLK,
    input   IMU_SPI_DIN,
    output  IMU_SPI_DOUT,
    inout   IMU_SPI_CS_N
    //control interface
    // input   IMU_int1,
    // input   IMU_int2
    );

    wire sysclk_200m;

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




    clk_wiz_0 system_clock(
    // Diff Clock
    .clk_in1_p(sysclk_200m_p),
    .clk_in1_n(sysclk_200m_n),
    // SYSTEM CLOCK
    .clk_out1(sysclk_200m),           
    .locked(locked)
    );

    reg [15:0] spi_rx_data_reg;
    wire[15:0] spi_write_data;
    wire spi_write_valid;
    reg [1:0] spi_write_valid_reg;
    wire      spi_en_reg;
    reg[1:0] spi_en_stage;

    assign spi_tx_valid = spi_write_valid_reg== 2'b01 ? 1'b1 : 1'b0;
    always@(posedge sysclk_200m) spi_write_valid_reg<= {spi_write_valid_reg[0], spi_write_valid};
    assign spi_tx_data = spi_write_data;

    IMU_SPI_LINK IMU_SPI_LINK_inst(
    //physical layer
    .sysclk_200m    (sysclk_200m),
    .rst_n          (locked),
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
    .spi_rx_ready   (1'b1), //always ready
    .spi_rx_data    (spi_rx_data ),
    .spi_rx_last    (spi_rx_last ),
    //control interface
    .spi_en         (spi_en_reg),
    .bits_len       (bits_len),
    .spi_busy       (spi_busy)
    );

    IMU_test_vio IMU_test_vio(
    .clk         (sysclk_200m),

    .probe_in0   (spi_busy     ),
    .probe_in1   (spi_rx_data_reg),

    .probe_out0  (spi_write_valid),
    .probe_out1  (spi_write_data),
    .probe_out2  (bits_len),
    .probe_out3  (spi_en)
    );
    always@(posedge sysclk_200m) spi_en_stage <={spi_en_stage[0], spi_en};
    assign spi_en_reg = (spi_en_stage == 2'b01) ? 1'b1 : 1'b0;
    // always@(posedge sysclk_200m)begin
    //     case(spi_en_stage)
    //         2'b00: begin
    //             if(spi_busy) spi_en_stage<=2'b01;
    //             else spi_en_stage <= 2'b00;
    //             if(spi_en)spi_en_reg<=1'b1;
    //             else spi_en_reg <= 1'b0;
    //         end
    //         2'b01: begin
    //             if(!spi_busy) spi_en_stage<=2'b10;
    //             else spi_en_stage <= 2'b01;
    //             spi_en_reg <= 1'b0;
    //         end
    //         2'b10: begin
    //             if(spi_busy) spi_en_stage<=2'b11;
    //             else spi_en_stage <= 2'b10;
    //             spi_en_reg <= 1'b1;
    //         end
    //         2'b11: begin
    //             if(!spi_busy && !spi_en) spi_en_stage<=2'b00;
    //             else spi_en_stage <= 2'b11;
    //             spi_en_reg <= 1'b0;
    //         end
    //         default:begin
    //             spi_en_stage <= 2'b00;
    //             spi_en_reg <= 1'b0;
    //         end
    //     endcase
    // end

    always@(posedge sysclk_200m)begin
        if(spi_rx_valid) spi_rx_data_reg <= spi_rx_data;
        else spi_rx_data_reg<= spi_rx_data_reg;
    end
endmodule
