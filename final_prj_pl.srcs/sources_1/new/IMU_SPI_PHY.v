`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/20 15:55:24
// Design Name: 
// Module Name: IMU_SPI_PHY
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


module IMU_SPI_PHY(
    input           sysclk_200m,
    //PHYSICAL INTERFACE
    inout           SPI_CLK,
    input           SPI_DIN,
    output          SPI_DOUT,
    inout           SPI_CS_N,//
    //INTERNAL DATA INTERFACE
    input       [15:0]  tx_data,
    input               tx_data_valid,
    output  reg         tx_data_ready,
    
    output      [15:0]  rx_data,
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
    // assign sample_edge = spi_clk_pos;
    // assign write_edge  = spi_clk_pos;
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
 (* shreg_extract = "no" *) reg     [16:0] tx_data_reg;
    reg     [15:0] rx_data_reg='d0;
    // assign rx_data=(SPI_MODE==2'b00 || SPI_MODE==2'b10) ? rx_data_reg[32:1] :rx_data_reg[31:0];
    assign rx_data=rx_data_reg;


    reg[31:0] SPI_STAGE;
    reg[31:0] delay_cnt;
    reg[31:0] byte_cnt;
    localparam IDLE=0;
    localparam SPI_CS_WAITING=1;
    localparam SPI_DATA_TRANS=2;
    localparam SPI_CS_WAITING2=3;
    localparam GIVE_BREAK_FOR_SLAVE=4;

    assign pos=32'd8-data_cnt;
    always@(posedge sysclk_200m)begin
        if(tx_data_valid && tx_data_ready)begin
            if(SPI_MODE==2'd0 || SPI_MODE==2'd2)begin
                tx_data_reg<={tx_data,1'b0};
                // SPI_DOUT<=tx_data[15];
            end
            else begin 
                tx_data_reg<={1'b0,tx_data};
                // SPI_DOUT<=1'b0;
            end
            data_cnt<=32'd0;
            rx_data_reg<='d0;
        end
        else begin
            if(SPI_CS_in)begin
                // SPI_DOUT<=1'b0;//tx_data_reg[pos]
                data_cnt<=32'd0;
                rx_data_reg<='d0;
            end
            else begin
                if(write_edge) tx_data_reg<={tx_data_reg[15:0],1'b0};//  
                else tx_data_reg<=tx_data_reg;

                if(sample_edge) begin 
                    rx_data_reg<={rx_data_reg[14:0],SPI_DIN};
                    data_cnt<=data_cnt+32'd1;
                end
                else if(SPI_STAGE==SPI_CS_WAITING2)begin
                    data_cnt<='d0;
                    rx_data_reg<=rx_data_reg;
                end
                else begin
                    data_cnt<=data_cnt;
                    rx_data_reg<=rx_data_reg;
                end

                // SPI_DOUT<=tx_data_reg[16];      
            end
        end
    end
    assign SPI_DOUT  = SPI_CS_in ? 1'b0 : tx_data_reg[16] ;
    
    //SPI_CS_out control and main data control
    always@(posedge sysclk_200m)begin
        if(SPI_master)begin
            case(SPI_STAGE)
                IDLE:begin
                    if(spi_en)begin
                        if(tx_data_ready && tx_data_valid)begin
                            tx_data_ready<=1'b0;
                            SPI_CS_out<=1'b0;
                            SPI_STAGE<=SPI_CS_WAITING;
                        end
                        else begin
                            tx_data_ready<=1'b1;
                            SPI_CS_out<=1'b1;
                            SPI_STAGE<=IDLE;
                        end
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
                            if((byte_cnt+data_cnt)>=bits_len)begin
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
                    
                    if(byte_cnt>=bits_len  || bits_len<='d16 ) rx_tlast<=1'b1;
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
    ila_0 IMU_SPI_PHY_ILA(
    .clk                  ( sysclk_200m          ),   
    .probe0               ( SPI_CLK_in   		 ),// input wire [0:0]  probe0 
    .probe1               ( SPI_CS_in  		 	 ),// input wire [0:0]  probe1 
    .probe2               ( SPI_MODE  		     ),// input wire [0:0]  probe2 
    .probe3               ( SPI_STAGE   		 ),// input wire [31:0]  probe3 
    .probe4               ( tx_data_reg  		 ),// input wire [31:0]  probe4 
	.probe5				  ( data_cnt             ),// input wire  [31:0]  probe5 
	.probe6				  ( spi_en               ),// input wire  [0:0]  probe6	
	.probe7				  ( SPI_DOUT			 ),// input wire [0:0] probe7
	.probe8				  ( SPI_DIN			     ),// input wire [0:0] probe8
	.probe9			      (	tx_data_valid		 ),// input	wire [0:0] probe9
	.probe10              ( tx_data_ready        ),// input	wire [0:0] probe10	
	.probe11              ( rx_valid             ),// input	wire [0:0] probe11	
	.probe12              ( spi_busy             ),// input	wire [0:0] probe12	
    .probe13              ( write_edge           ),// input wire [15:0] probe13
    .probe14              ( sample_edge          ),// input wire [15:0] probe14
    .probe15              ( bits_len             ),// input wire [15:0] probe15
    .probe16              ( byte_cnt             )// input wire [15:0] probe16
    );
endmodule
 