`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/18 10:43:49
// Design Name: 
// Module Name: ADC_TOP_test
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


module ADC_TOP_test(
    input sysclk_200m_p,
    input sysclk_200m_n,
    //ADC digital interface
    inout           SPI_CLK,
    input           SPI_DIN_A,
    input           SPI_DIN_B,
    input           SPI_DIN_C,
    input           SPI_DIN_D,
    input           SPI_DIN_E,
    input           SPI_DIN_F,
    input           SPI_DIN_G,
    input           SPI_DIN_H,
    output          SPI_DOUT,
    inout           SPI_CS_N,
    //control interface
    output reg      ADC_CONVST=1'b1,
    input           ADC_BUSY
    // output [2:0]    ADC_OSR,
    // output          ADC_RST_N
    );
    wire [2:0] ADC_OSR;
    wire ADC_RST_N;
    wire sysclk_200m;

    wire          spi_tx_valid;
    wire          spi_tx_ready;
    wire [15:0]   spi_tx_data;
    wire          spi_tx_last;
    wire          spi_rx_valid;

    wire          spi_rx_ready;
    wire [127:0]  spi_rx_data;
    wire          spi_rx_last;

    wire          spi_en;
    wire [31:0]   bits_len;
    wire          spi_busy;

    reg [15:0] spi_rx_data_A;
    reg [15:0] spi_rx_data_B;
    reg [15:0] spi_rx_data_C;
    reg [15:0] spi_rx_data_D;
    reg [15:0] spi_rx_data_E;
    reg [15:0] spi_rx_data_F;
    reg [15:0] spi_rx_data_G;
    reg [15:0] spi_rx_data_H;
    wire ADC_CONVST_enable;
    wire[15:0] spi_write_data;
    reg[31:0] ADC_CONVST_CNT;
    reg [1:0] spi_write_valid_reg;
    reg      spi_en_reg;
    reg[1:0] spi_en_stage;

    assign spi_tx_valid = spi_write_valid_reg== 2'b01 ? 1'b1 : 1'b0;
    always@(posedge sysclk_200m) spi_write_valid_reg<= {spi_write_valid_reg[0], spi_write_valid};
    assign spi_tx_data = spi_write_data;

    clk_wiz_0 system_clock(
    // Diff Clock
    .clk_in1_p(sysclk_200m_p),
    .clk_in1_n(sysclk_200m_n),
    // SYSTEM CLOCK
    .clk_out1(sysclk_200m),           
    .locked(locked)
    );


    PHY_LINK PHY_LINK_inst(
    //physical layer
    .sysclk_200m    (sysclk_200m),
    //PHYSICAL INTERFACE
    .SPI_CLK        (SPI_CLK),
    .SPI_DIN_A      (SPI_DIN_A),
    .SPI_DIN_B      (SPI_DIN_B),
    .SPI_DIN_C      (SPI_DIN_C),
    .SPI_DIN_D      (SPI_DIN_D),
    .SPI_DIN_E      (SPI_DIN_E),
    .SPI_DIN_F      (SPI_DIN_F),
    .SPI_DIN_G      (SPI_DIN_G),
    .SPI_DIN_H      (SPI_DIN_H),

    .SPI_DOUT       (SPI_DOUT),
    .SPI_CS_N       (SPI_CS_N),
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
    ADC_test_vio ADC_test_vio_inst(
    .clk         (sysclk_200m),

    .probe_in0   (spi_busy     ),
    .probe_in1   (spi_rx_data_A),
    .probe_in2   (spi_rx_data_B),
    .probe_in3   (spi_rx_data_C),
    .probe_in4   (spi_rx_data_D),
    .probe_in5   (spi_rx_data_E),
    .probe_in6   (spi_rx_data_F),
    .probe_in7   (spi_rx_data_G),
    .probe_in8   (spi_rx_data_H),

    .probe_out0  (spi_write_valid),
    .probe_out1  (spi_write_data),
    .probe_out2  (bits_len),
    .probe_out3  (spi_en),
    .probe_out4  (ADC_OSR),
    .probe_out5  (ADC_CONVST_enable),
    .probe_out6  (ADC_RST_N)
    );

    always@(posedge sysclk_200m)begin
        if(ADC_CONVST_enable)begin
            if(ADC_CONVST_CNT ==32'd2000) ADC_CONVST_CNT<= 32'd0;
            else ADC_CONVST_CNT <= ADC_CONVST_CNT + 1'b1;

            if(ADC_CONVST_CNT <=32'd1000) ADC_CONVST <= 1'b1;
            else ADC_CONVST <= 1'b0;
        end    
        else begin
            ADC_CONVST <= 1'b0;
            ADC_CONVST_CNT <= 32'd0;
        end
    end

   
    always@(posedge sysclk_200m)begin
        case(spi_en_stage)
            2'b00: begin
                if(spi_busy) spi_en_stage<=2'b01;
                else spi_en_stage <= 2'b00;
                if(spi_en)spi_en_reg<=1'b1;
                else spi_en_reg <= 1'b0;
            end
            2'b01: begin
                if(!spi_busy) spi_en_stage<=2'b10;
                else spi_en_stage <= 2'b01;
                spi_en_reg <= 1'b0;
            end
            2'b10: begin
                if(spi_busy) spi_en_stage<=2'b11;
                else spi_en_stage <= 2'b10;
                spi_en_reg <= 1'b1;
            end
            2'b11: begin
                if(!spi_busy && !spi_en) spi_en_stage<=2'b00;
                else spi_en_stage <= 2'b11;
                spi_en_reg <= 1'b0;
            end
            default:begin
                spi_en_stage <= 2'b00;
                spi_en_reg <= 1'b0;
            end
        endcase
    end

    always@(posedge sysclk_200m)begin
        if (spi_rx_valid) begin
            spi_rx_data_A <= spi_rx_data[127:112];
            spi_rx_data_B <= spi_rx_data[111:96];
            spi_rx_data_C <= spi_rx_data[95:80];
            spi_rx_data_D <= spi_rx_data[79:64];
            spi_rx_data_E <= spi_rx_data[63:48];
            spi_rx_data_F <= spi_rx_data[47:32];
            spi_rx_data_G <= spi_rx_data[31:16];
            spi_rx_data_H <= spi_rx_data[15:0];
        end
        else begin
            spi_rx_data_A <= spi_rx_data_A;
            spi_rx_data_B <= spi_rx_data_B;
            spi_rx_data_C <= spi_rx_data_C;
            spi_rx_data_D <= spi_rx_data_D;
            spi_rx_data_E <= spi_rx_data_E;
            spi_rx_data_F <= spi_rx_data_F;
            spi_rx_data_G <= spi_rx_data_G;
            spi_rx_data_H <= spi_rx_data_H;
        end
    end

endmodule