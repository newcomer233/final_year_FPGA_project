`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/22 11:06:55
// Design Name: 
// Module Name: SPI_PHY
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
//  the system_clock's frequence  need to be at leat 4 times SPI_CLK's to ensure the performance
//  system_clock>=4*SPI_CLK
//////////////////////////////////////////////////////////////////////////////////


module SPI_PHY#(
    localparam [31:0] system_clock =32'd200_000_000
)(
    input           sysclk_200m,
    //PHYSICAL INTERFACE
    inout           SPI_CLK,
    input           SPI_DIN_A,
    input           SPI_DIN_B,
    input           SPI_DIN_C,
    input           SPI_DIN_D,
    input           SPI_DIN_E,
    input           SPI_DIN_F,
    input           SPI_DIN_G,
    input           SPI_DIN_H,
    output reg      SPI_DOUT=0,
    inout           SPI_CS_N,//
    //INTERNAL DATA INTERFACE
    input       [15:0]  tx_data,
    input               tx_data_valid,
    output  reg         tx_data_ready,
    
    output      [127:0] rx_data,
    output reg          rx_valid,
    output reg          rx_tlast,
    input               spi_en,
    output reg          spi_busy,
    
    //INTERNAL CONTROL INTERFACE
    input           SPI_enable,
    input           SPI_master,
    input   [1:0]   SPI_MODE,
    input   [31:0]  SPI_HZ,
    input   [31:0]  bits_len
    );
    /*
    SPI MODE 0  CPOL =0  CPHA =0   SAMPLE FIRST
    SPI MODE 1  CPOL =0  CPHA =1   WRITE  FIRST
    SPI MODE 2  CPOL =1  CPHA =0   SAMPLE FIRST
    SPI MODE 3  CPOL =1  CPHA =1   WRITE  FIRST
    
    CPOL: THE IDLE  SPI_CLK LEVEL   ,   0: SPI_CLK=0  1: SPI_CLK=0
    CPHA: WHICH TIME TO SAMPLE      ,   0: FIRST EDGE 1: SECOND EDGE
    */
    
    //if you change the sysclk_100m freq,remeber to change this parameter.
    
    wire SPI_CLK_in;
    reg  SPI_CLK_out;
    wire SPI_CS_in;
    reg  SPI_CS_out;
    
    reg[31:0] spi_clk_cnt_param;
    reg[31:0] spi_clk_cnt;
    
    reg       spi_clk_en;
    
    assign SPI_CLK    = SPI_master ? SPI_CLK_out : 1'BZ;
    assign SPI_CLK_in = SPI_CLK;
    assign SPI_CS_N  = SPI_master ? SPI_CS_out : 1'BZ;
    assign SPI_CS_in = SPI_CS_N;
    

    //counting spi should count
    always@(posedge sysclk_200m)begin
        if(SPI_enable) spi_clk_cnt_param<=SPI_HZ - 32'd1;
        else spi_clk_cnt_param<=32'd0;
    end
    //create clock spi_clk_out
    always@(posedge sysclk_200m)begin
        if(SPI_enable)begin
            if(spi_clk_en)begin
                if(spi_clk_cnt>=spi_clk_cnt_param) begin 
                    SPI_CLK_out<=~SPI_CLK_out;
                    spi_clk_cnt<=32'd0;
                end
                else begin 
                    SPI_CLK_out<=SPI_CLK_out;
                    spi_clk_cnt<=spi_clk_cnt+32'd1;
                end
            end
            else begin
                SPI_CLK_out <= SPI_MODE[1];
                spi_clk_cnt<=32'd0;
            end
        end
        else begin 
            SPI_CLK_out <= SPI_MODE[1];
            spi_clk_cnt<=32'd0;
        end
    end
    //judge the spi_clk posedge and negedge 
    wire spi_clk_neg;
    wire spi_clk_pos;
    reg  spi_clk_reg;
    always@(posedge sysclk_200m) spi_clk_reg<=SPI_CLK_in;
    assign spi_clk_pos= (spi_clk_reg!=SPI_CLK_in && SPI_CLK_in==1'b1 ) ? 1'b1 : 1'b0;
    assign spi_clk_neg= (spi_clk_reg!=SPI_CLK_in && SPI_CLK_in==1'b0 ) ? 1'b1 : 1'b0;
    //judge which should be sample edge which should writing edge by directly fixing
    wire sample_edge;
    wire write_edge;
    reg  edge_judge;
    assign sample_edge = edge_judge ? spi_clk_neg : spi_clk_pos;
    assign write_edge  = edge_judge ? spi_clk_pos : spi_clk_neg;
    always@(posedge sysclk_200m)begin
        case(SPI_MODE)
            0:edge_judge<=1'b0;         //rise    edge sample
            1:edge_judge<=1'b1;         //negedge edge sample
            2:edge_judge<=1'b1;         //negedge edge sample
            3:edge_judge<=1'b0;         //rise    edge sample
            default:edge_judge<=1'b0;   //rise    edge sample
        endcase
    end
    //SPI transmit control
    reg     [31:0] data_cnt;
    wire    [31:0] pos;
    reg     [16:0] tx_data_reg='d0;
    reg     [15:0] rx_data_reg_a='d0;
    reg     [15:0] rx_data_reg_b='d0;
    reg     [15:0] rx_data_reg_c='d0;
    reg     [15:0] rx_data_reg_d='d0;
    reg     [15:0] rx_data_reg_e='d0;
    reg     [15:0] rx_data_reg_f='d0;
    reg     [15:0] rx_data_reg_g='d0;
    reg     [15:0] rx_data_reg_h='d0;
    reg     spi_cs_reg;
    // assign rx_data=(SPI_MODE==2'b00 || SPI_MODE==2'b10) ? rx_data_reg[32:1] :rx_data_reg[31:0];
    // assign rx_data[12]={rx_data_reg_a,rx_data_reg_b,rx_data_reg_c,rx_data_reg_d,
    //                 rx_data_reg_e,rx_data_reg_f,rx_data_reg_g,rx_data_reg_h};
    assign rx_data[127:112]=rx_data_reg_a;
    assign rx_data[111:96]=rx_data_reg_b;
    assign rx_data[95:80]=rx_data_reg_c;
    assign rx_data[79:64]=rx_data_reg_d;
    assign rx_data[63:48]=rx_data_reg_e;
    assign rx_data[47:32]=rx_data_reg_f;
    assign rx_data[31:16]=rx_data_reg_g;
    assign rx_data[15:0]=rx_data_reg_h;
    
    assign pos=32'd8-data_cnt;
    always@(posedge sysclk_200m)begin
        if(tx_data_valid && tx_data_ready)begin
            if(SPI_MODE==2'd0 || SPI_MODE==2'd2)begin
                tx_data_reg<={tx_data,1'b0};
                SPI_DOUT<=tx_data[15];end
            else begin 
                tx_data_reg<={1'b0,tx_data};
                SPI_DOUT<=1'b0;
            end
            data_cnt<=32'd0;
            rx_data_reg_a<='d0;
            rx_data_reg_b<='d0;
            rx_data_reg_c<='d0;
            rx_data_reg_d<='d0;
            rx_data_reg_e<='d0;
            rx_data_reg_f<='d0; 
            rx_data_reg_g<='d0;
            rx_data_reg_h<='d0;
        end
        else begin
            if(SPI_CS_in)begin
                SPI_DOUT<=1'b0;//tx_data_reg[pos]
                data_cnt<=32'd0;
                rx_data_reg_a<='d0;
                rx_data_reg_b<='d0;
                rx_data_reg_c<='d0;
                rx_data_reg_d<='d0;
                rx_data_reg_e<='d0;
                rx_data_reg_f<='d0; 
                rx_data_reg_g<='d0;
                rx_data_reg_h<='d0;
            end
            else begin
                if(write_edge) begin 
                    data_cnt<=data_cnt+32'd1;
                    tx_data_reg<={tx_data_reg[15:0],1'b0};//
                end    
                else begin 
                    data_cnt<=data_cnt;
                    tx_data_reg<=tx_data_reg;
                end
                if(sample_edge) begin 
                    rx_data_reg_a<={rx_data_reg_a[14:0],SPI_DIN_A};
                    rx_data_reg_b<={rx_data_reg_b[14:0],SPI_DIN_B};
                    rx_data_reg_c<={rx_data_reg_c[14:0],SPI_DIN_C};
                    rx_data_reg_d<={rx_data_reg_d[14:0],SPI_DIN_D};
                    rx_data_reg_e<={rx_data_reg_e[14:0],SPI_DIN_E};
                    rx_data_reg_f<={rx_data_reg_f[14:0],SPI_DIN_F};
                    rx_data_reg_g<={rx_data_reg_g[14:0],SPI_DIN_G};
                    rx_data_reg_h<={rx_data_reg_h[14:0],SPI_DIN_H};
                end
                else begin 
                    rx_data_reg_a<=rx_data_reg_a;
                    rx_data_reg_b<=rx_data_reg_b;
                    rx_data_reg_c<=rx_data_reg_c;
                    rx_data_reg_d<=rx_data_reg_d;
                    rx_data_reg_e<=rx_data_reg_e;
                    rx_data_reg_f<=rx_data_reg_f;
                    rx_data_reg_g<=rx_data_reg_g;
                    rx_data_reg_h<=rx_data_reg_h;

                end

                // if(data_cnt>32'd32) SPI_DOUT<=1'b0; 
                SPI_DOUT<=tx_data_reg[16];      
            end
        end
        spi_cs_reg<=SPI_CS_in;
    end
    
    
    //SPI_CS_out control and main data control
    reg[31:0] SPI_STAGE;
    reg[31:0] delay_cnt;
    reg[31:0] byte_cnt;
    localparam IDLE=0;
    localparam SPI_CS_WAITING=1;
    localparam SPI_DATA_TRANS=2;
    localparam SPI_CS_WAITING2=3;
    localparam GIVE_BREAK_FOR_SLAVE=4;
    always@(posedge sysclk_200m)begin
        if(SPI_master)begin
            case(SPI_STAGE)
                IDLE:begin
                    if(spi_en)begin
                        SPI_CS_out<=1'b0;
                        SPI_STAGE<=SPI_CS_WAITING;
                        tx_data_ready<=1'b1;
                    end
                    else begin
                        SPI_CS_out<=1'b1;
                        SPI_STAGE<=IDLE;
                        tx_data_ready<=1'b0;
                    end   
                    byte_cnt<=32'd0;
                    spi_busy<=1'b0;
                    delay_cnt<=32'd0;    
                    spi_clk_en<=1'b0;       
                    rx_valid<=1'b0;
                    rx_tlast<=1'b0;     
                end
                SPI_CS_WAITING:begin
                    if(delay_cnt>=2*spi_clk_cnt_param)begin
                         delay_cnt<=32'd0;
                         SPI_STAGE<= SPI_DATA_TRANS ;
                    end
                    else begin
                        SPI_STAGE<= SPI_CS_WAITING ;
                        delay_cnt<=delay_cnt+32'd1;
                    end
                    tx_data_ready<=1'b0;
                    spi_busy<=1'b1;
                    spi_clk_en<=1'b0; 
                    rx_valid<=1'b0;
                    rx_tlast<=1'b0; 
                end
                SPI_DATA_TRANS:begin
                    case(SPI_MODE)
                        2'd0:begin
                            if(data_cnt>=8'd16 || (byte_cnt+data_cnt)>=bits_len)begin
                                spi_clk_en<=1'b0;
                                SPI_STAGE<=SPI_CS_WAITING2;
                                byte_cnt<=byte_cnt+8'd16;
                            end
                            else begin
                                SPI_STAGE<= SPI_DATA_TRANS ;
                                spi_clk_en<=1'b1;
                                byte_cnt<=byte_cnt;
                            end
                        end
                        2'd1:begin
                            if((data_cnt>=8'd16 || (byte_cnt+data_cnt)>=bits_len) && SPI_CLK_in==1'b0)begin
                                spi_clk_en<=1'b0;
                                SPI_STAGE<=SPI_CS_WAITING2;
                                byte_cnt<=byte_cnt+8'd16;
                            end
                            else begin
                                SPI_STAGE<= SPI_DATA_TRANS ;
                                spi_clk_en<=1'b1;
                                byte_cnt<=byte_cnt;
                            end
                        end
                        2'd2:begin
                            if(data_cnt>=8'd16 || (byte_cnt+data_cnt)>=bits_len)begin
                                spi_clk_en<=1'b0;
                                SPI_STAGE<=SPI_CS_WAITING2;
                                byte_cnt<=byte_cnt+8'd16;
                            end
                            else begin
                                SPI_STAGE<= SPI_DATA_TRANS ;
                                spi_clk_en<=1'b1;
                                byte_cnt<=byte_cnt;
                            end
                        end
                        2'd3:begin
                            if((data_cnt>=8'd16 || (byte_cnt+data_cnt)>=bits_len) && SPI_CLK_in==1'b1)begin
                                spi_clk_en<=1'b0;
                                SPI_STAGE<=SPI_CS_WAITING2;
                                byte_cnt<=byte_cnt+8'd16;
                            end
                            else begin
                                SPI_STAGE<= SPI_DATA_TRANS ;
                                spi_clk_en<=1'b1;
                                byte_cnt<=byte_cnt;
                            end
                        end
                        default:begin
                            SPI_STAGE<= SPI_DATA_TRANS ;
                            spi_clk_en<=1'b1;
                        end
                    endcase
                    rx_valid<=1'b0;
                    tx_data_ready<=1'b0;
                    spi_busy<=1'b1;
                    delay_cnt<=32'd0;
                end
                SPI_CS_WAITING2:begin
                    if(delay_cnt>=2*spi_clk_cnt_param)begin
                         delay_cnt<=32'd0;
                         if(byte_cnt>=bits_len) begin 
                             SPI_STAGE<=GIVE_BREAK_FOR_SLAVE;
                             tx_data_ready<=1'b0;
                         end
                         else begin 
                             SPI_STAGE<=SPI_DATA_TRANS;
                             tx_data_ready<=1'b1;
                         end
                         rx_valid<=1'b1;
                    end
                    else begin
                        SPI_STAGE<= SPI_CS_WAITING2 ;
                        delay_cnt<=delay_cnt+32'd1;
                        rx_valid<=1'b0;
                    end
                    byte_cnt<=byte_cnt;
                    SPI_CS_out<=1'b0;
                    spi_busy<=1'b1;
                    spi_clk_en<=1'b0;
                    
                    if(byte_cnt>=bits_len  || bits_len<='d32 ) rx_tlast<=1'b1;
                    else rx_tlast<=1'b0;
                end
                GIVE_BREAK_FOR_SLAVE:begin
                    if(spi_en) SPI_STAGE<= GIVE_BREAK_FOR_SLAVE ;
                    else begin
                        if(delay_cnt>=2*spi_clk_cnt_param)begin
                             delay_cnt<=32'd0;
                             SPI_STAGE<= IDLE ;
                        end
                        else begin
                            SPI_STAGE<= GIVE_BREAK_FOR_SLAVE ;
                            delay_cnt<=delay_cnt+32'd1;
                        end
                    end
                    byte_cnt<=32'd0;
                    tx_data_ready<=1'b0;
                    SPI_CS_out<=1'b1;
                    spi_busy<=1'b1;
                    spi_clk_en<=1'b0;
                    rx_valid<=1'b0;
                    rx_tlast<=1'b0;
                end
                default:begin
                    tx_data_ready<=1'b0;
                    SPI_CS_out<=1'b1;
                    SPI_STAGE<=IDLE;
                    spi_busy<=1'b1;
                    delay_cnt<=32'd0;    
                    spi_clk_en<=1'b0; 
                    rx_valid<=1'b0;
                    rx_tlast<=1'b0;
                end
            endcase
        end
        else begin
           case(SPI_STAGE)
               IDLE:begin
                   if(!SPI_CS_in)begin
                       SPI_STAGE<=SPI_DATA_TRANS;
                       spi_busy<=1'b1;
                       tx_data_ready <= 1'd0;
                   end
                   else begin
                       SPI_CS_out<=1'b1;
                       SPI_STAGE<=IDLE;
                       spi_busy<=1'b0;
                       tx_data_ready <= 1'd0;
                   end
                   SPI_CS_out<=1'b1;
                   delay_cnt <=32'd0;    
                   spi_clk_en<=1'b0;  
                   rx_valid  <=1'd0;           
               end
               SPI_DATA_TRANS:begin
                   if(data_cnt == 32'd8)  rx_valid      <= 1'd1; else rx_valid <= 1'd0;
                   if(data_cnt == 32'd8 && rx_valid==1'b1)  tx_data_ready <= 1'd1; else tx_data_ready <= 1'd0;
                   if(SPI_CS_in) SPI_STAGE<=IDLE;
                   else SPI_STAGE<=SPI_DATA_TRANS;
                   spi_clk_en<=1'b0;
                   spi_busy<=1'b1;
                   delay_cnt<=32'd0;
               end
               default:begin
                   SPI_CS_out<=1'b1;
                   SPI_STAGE<=IDLE;
                   spi_busy<=1'b1;
                   delay_cnt<=32'd0;    
                   spi_clk_en<=1'b0; 
               end
           endcase
       end
    end
ila_2 spi_phy_port (
    .clk                  ( sysclk_200m          ),   
    .probe0               ( SPI_CLK_in   		 ),// input wire [0:0]  probe0 
    .probe1               ( SPI_CS_in  		 	 ),// input wire [0:0]  probe1 
    .probe2               ( SPI_master  		 ),// input wire [0:0]  probe2 
    .probe3               ( SPI_STAGE   		 ),// input wire [31:0]  probe3 
    .probe4               ( bits_len  		     ),// input wire [31:0]  probe4 
	.probe5				  ( data_cnt             ),// input wire  [31:0]  probe5 
	.probe6				  ( spi_en               ),// input wire  [0:0]  probe6	
	.probe7				  ( SPI_DOUT			 ),// input wire [0:0] probe7
	.probe8				  ( SPI_DIN_A			 ),// input wire [0:0] probe8
    .probe9				  ( SPI_DIN_B			 ),// input wire [0:0] probe9
    .probe10              ( SPI_DIN_C            ),// input wire [0:0] probe10
    .probe11              ( SPI_DIN_D            ),// input wire [0:0] probe11
    .probe12              ( SPI_DIN_E            ),// input wire [0:0] probe12
    .probe13              ( SPI_DIN_F            ),// input wire [0:0] probe13
    .probe14              ( SPI_DIN_G            ),// input wire [0:0] probe14
    .probe15              ( SPI_DIN_H            ),// input wire [0:0] probe15
	.probe16			  (	tx_data_valid		 ),// input	wire [0:0] probe9
	.probe17              ( tx_data_ready        ),// input	wire [0:0] probe10	
	.probe18              ( rx_valid             ),// input	wire [0:0] probe11	
	.probe19              ( spi_busy             ) // input	wire [0:0] probe12	

);
endmodule
 