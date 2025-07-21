`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/08/05 17:12:59
// Design Name: 
// Module Name: I2C_PHY
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
/*
    speed is 100kbit/s  ,   400kbit/s   ,   1Mbit/s ,   3.4Mbit/s   ,   5Mbit/s(master and write only),
*/
//////////////////////////////////////////////////////////////////////////////////


module I2C_PHY(
    input sysclk_100m,
    inout SCL,//I2C CLK
    inout SDA,//I2C DATA

    input MATER_SLAVE_n,
    input [2:0] SPD_TYPE,

    input [7:0]  chip_id,
    input [15:0] addr_id,

    input [7:0]  chip_id_map,
    input [15:0] addr_id_map,   
    output reg   addr_id_map_valid,
    //master ctrl interface;
	input 		i2c_enable,
    input [7:0] tx_data,
    input       tx_en,
    output reg  tx_busy,
    output reg  data_finish,
    output reg  [7:0] rx_data ,
	output reg        rx_data_valid,
	output reg        rx_data_last,

    input [31:0] addr_len,//generally,it is 2 bytes at most;
    input [31:0] data_len//generally,it is 1 bytes at least;



    );
    parameter  IDLE         =0;
    parameter  START_POS    =1;
    parameter  CHIP_ID_TRANS=2;
    parameter  CHIP_ID_ACK  =3;
    parameter  ADDR_TRANS   =4;
    parameter  ADDR_ACK     =5;
    parameter  DATA_TRANS   =6;
    parameter  DATA_ACK     =7;
    parameter  STOP_POS     =8;

    reg  sda_out=0;
    wire sda_in;

    assign SDA      =  sda_out ? 1'bZ : 1'b0;
    assign sda_in   =   SDA;
    reg scl_out=0;
    wire scl_in;
    assign SCL      = MATER_SLAVE_n  ? scl_out : 1'bz;
    assign scl_in   = SCL;
    //translate SPD_TYPE TO counter;
    reg [31:0] speed_cnt;
    always@(posedge sysclk_100m)begin
        case(SPD_TYPE)
            3'b000:speed_cnt<=32'd1000; //100k/s
            3'b001:speed_cnt<=32'd250;  //400k/s
            3'b010:speed_cnt<=32'd100;  //1M/s
            3'b011:speed_cnt<=32'd29;   //3.4M/s
            3'b100:speed_cnt<=32'd20;   //5M/s
            default:speed_cnt<=32'd250;
        endcase
    end
    // create master speed_cnt;
    reg       scl_en=0;
    reg[31:0] scl_cnt=0;
    always@(posedge sysclk_100m or negedge i2c_enable)begin//SCL create 
		if(!i2c_enable)begin
			scl_cnt<=32'd0;
			scl_out<=1'b1;
		end
		else begin
			if(!scl_en)begin
				scl_cnt<=32'd0;
				scl_out<=1'b1;
			end
			else begin
				if(scl_cnt<speed_cnt-32'd1) scl_cnt<=scl_cnt+32'd1;
				else scl_cnt<=32'd0;
				
				if(scl_cnt<={1'b0,speed_cnt[31:1]} )scl_out<=1'b1;
				else scl_out<=1'b0;
			end
		end
    end 
    // make edge judge;
    reg scl_edge;
	reg scl_pos;
	reg scl_neg;
	reg [4:0] sda_edge;
    always@(posedge sysclk_100m) begin 
		if(scl_edge!=scl_in && scl_in==1'b1 ) scl_pos<=1'b1;
		else scl_pos<=1'b0;
		if(scl_edge!=scl_in && scl_in==1'b0 ) scl_neg<=1'b1;
		else scl_neg<=1'b0;
		scl_edge<=scl_in;
	end
    always@(posedge sysclk_100m) sda_edge<={sda_edge[3:0],sda_in};
    // judge the center of scl 
    reg [31:0] maximum_cnt;
	reg [31:0] counter;
    reg start_flag;
    reg end_flag;
	reg [31:0] start_status;

    reg [31:0] I2C_MASTER_STAGE;
    reg [31:0] I2C_SLAVE_STAGE;
 	reg [3:0]  pos;
 	reg [3:0]  pos_cnt;
    reg [0:0]  ack_valid;
 	reg [31:0] data_record_len;



    always@(posedge sysclk_100m)begin
		case(start_status)
			0:begin
				if(start_flag) start_status<=1;
				end_flag<=1'b0;
				maximum_cnt<='d0;
				counter<='d0;
			end
			1:begin
				if(scl_pos)start_status<=2;
				else start_status<=1;
				end_flag<=1'b0;
				maximum_cnt<='d0;
				counter<='d0;
			end
			2:begin
				if(sda_edge[1:0]==2'b10 && counter>{2'b00,maximum_cnt[31:2]} && maximum_cnt!=32'd0 && scl_in==1'b1) end_flag<=1'b1;
				else if(I2C_SLAVE_STAGE==STOP_POS && scl_in==1'b1 && sda_in==1'b1 ) end_flag<=1'b1;
				else end_flag<=1'b0;
				
				if(scl_pos) begin counter<=32'd0;maximum_cnt<=counter;end
				else begin maximum_cnt<=maximum_cnt;counter<=counter+'d1;end
				
				if(end_flag) start_status<='d0;
				else start_status<='d2;
			end
		endcase
		if(sda_edge==5'b1111_0 && scl_in==1'b1) start_flag<=1'b1;
		else start_flag<=1'b0;
    end


    //I2C MASTER 

	reg slave_rd_wr_n;

    always@(posedge sysclk_100m)begin
		if(!i2c_enable)begin
			rx_data_last        <=1'b0;
			rx_data_valid       <=1'b0;
			sda_out             <=1'b1;
			scl_en              <=1'b0;
			pos                 <=4'd7;
			I2C_MASTER_STAGE    <=IDLE;
			I2C_SLAVE_STAGE		<=IDLE;
			tx_busy             <=1'b0;
			data_record_len     <=32'd0;
			ack_valid			<=1'b0;
			pos_cnt				<=4'd0;
			rx_data				<='d0;
		end
		else begin
			case(MATER_SLAVE_n)
			1:begin
				case(I2C_MASTER_STAGE)
					IDLE:begin
						if(tx_en) I2C_MASTER_STAGE<=START_POS;
						else I2C_MASTER_STAGE <=IDLE;
						sda_out<=1'b1;
						scl_en<=1'b0;
						pos<=4'd7;
						tx_busy<=1'b0;
						data_record_len <=32'd0;
						rx_data_last<=1'b0;
						ack_valid<=1'b0;
						pos_cnt<=4'd0;
						rx_data_valid<=1'b0;
						rx_data<='d0;
					end
					START_POS:begin
						sda_out<=1'b0;
						scl_en<=1'b1;
						if(scl_neg) I2C_MASTER_STAGE<=CHIP_ID_TRANS;
						else I2C_MASTER_STAGE<=START_POS;
						tx_busy<=1'b1;
						rx_data_last<=1'b0;
						ack_valid<=1'b0;
						pos_cnt<=4'd0;
						pos<=4'd7;
					end
					CHIP_ID_TRANS:begin
						if(pos_cnt>=4'd7 && scl_neg) I2C_MASTER_STAGE<=CHIP_ID_ACK;
						else I2C_MASTER_STAGE<=CHIP_ID_TRANS;
						if(scl_neg)begin
								pos <= pos -'d1;
								pos_cnt<=pos_cnt+4'd1;
						end
						else begin
							pos<=pos;
							pos_cnt<=pos_cnt;
						end
						sda_out<=chip_id[pos];
						rx_data_last<=1'b0;
						scl_en<=1'B1;
						tx_busy<=1'b1;
					end
					CHIP_ID_ACK:begin
						if(addr_len>32'd8) pos<=4'd15;
						else pos<=4'd7;
						sda_out<=1'b1;
						if(scl_in && sda_in==0) ack_valid<=1'b1;
						else ack_valid<=ack_valid;
						if(scl_neg )begin 
							if(ack_valid) I2C_MASTER_STAGE<=ADDR_TRANS;
							else I2C_MASTER_STAGE<=STOP_POS;
						end
						else I2C_MASTER_STAGE<=CHIP_ID_ACK;
						rx_data_last<=1'b0;
						tx_busy<=1'b1;
						pos_cnt<=4'd0;
					end
					ADDR_TRANS:begin
						if(pos_cnt>=4'd7 && scl_neg) I2C_MASTER_STAGE<=ADDR_ACK ;
						else I2C_MASTER_STAGE<=ADDR_TRANS;
						if(scl_neg)begin
							pos<=pos-'d1;
							pos_cnt<=pos_cnt+4'd1;
						end
						else begin
							pos<=pos;
							pos_cnt<=pos_cnt;
						end
						sda_out<=addr_id[pos];
						rx_data_last<=1'b0;
						scl_en<=1'B1;
						tx_busy<=1'b1;
						ack_valid<=1'b0;
					end
					ADDR_ACK:begin
						if(scl_in && sda_in==0) ack_valid<=1'b1;
						else ack_valid<=ack_valid;
						if(scl_neg)begin
							if(pos!=4'hf) 	I2C_MASTER_STAGE<=ADDR_TRANS;
							else if(ack_valid)	I2C_MASTER_STAGE<=DATA_TRANS;
							else I2C_MASTER_STAGE<=STOP_POS;
							pos<=4'd7;
						end
						else begin 
							I2C_MASTER_STAGE<=ADDR_ACK;
							pos<=pos;
						end
						rx_data_last<=1'b0;
						tx_busy<=1'b1;
						sda_out<=1'b1;
						pos_cnt<=4'd0;
					end
					DATA_TRANS:begin
						if(chip_id[0]==1'b0)begin//write to slave
							if(pos_cnt>=4'd7 && scl_neg) begin 
								I2C_MASTER_STAGE<=DATA_ACK;
								data_record_len<=data_record_len+32'd1;
								data_finish<=1'b1;
							end
							else begin 
								I2C_MASTER_STAGE<=DATA_TRANS;
								data_record_len<=data_record_len;
								data_finish<=1'b0;
							end
							rx_data_last<=1'b0;
							rx_data_valid<=1'b0;
						end
						else begin
							if(pos_cnt>=4'd8 && scl_neg)begin //read from slave
								I2C_MASTER_STAGE<=DATA_ACK;
								data_record_len<=data_record_len+32'd1;
								data_finish<=1'b1;
								if(data_record_len>=data_len-'d1 || data_len=='d1) rx_data_last<=1'b1;
								else rx_data_last<=1'b0;
								rx_data_valid<=1'b1;
							end
							else begin 
								I2C_MASTER_STAGE<=DATA_TRANS;
								data_record_len<=data_record_len;
								data_finish<=1'b0;
								rx_data_last<=1'b0;
								rx_data_valid<=1'b0;
							end
						end
						
						if(chip_id[0]==1'b0)begin
							if(scl_neg)begin
								pos<=pos-'d1;
								pos_cnt<=pos_cnt+4'd1;
							end
							else begin
								pos<=pos;
								pos_cnt<=pos_cnt;
							end
							sda_out<=tx_data[pos];
						end	
						else begin
							if(scl_pos)begin
								pos<=pos-'d1;
								pos_cnt<=pos_cnt+4'd1;
							end
							else begin
								pos<=pos;
								pos_cnt<=pos_cnt;
							end
							sda_out<=1'b1;
							rx_data[pos]<=sda_in;
						end
						
						ack_valid<=1'b0;
						scl_en<=1'B1;
						tx_busy<=1'b1;
					end
					DATA_ACK:begin
						pos<=4'd7;
						
						if(chip_id[0]==1'b0) sda_out<=1'b1;//receive from slave ack
						else sda_out<=1'b0;//transmit to slave ack
						if(scl_in && sda_in==0) ack_valid<=1'b1;
						else ack_valid<=ack_valid;
						if(scl_neg && ack_valid)begin
							if(data_record_len>=data_len) I2C_MASTER_STAGE<=STOP_POS;
							else I2C_MASTER_STAGE<=DATA_TRANS;
						end
						else I2C_MASTER_STAGE<=DATA_ACK;
						data_record_len<=data_record_len;
						rx_data_valid<=1'b0;
						tx_busy<=1'b1;
						data_finish<=1'b0;
						rx_data_last<=1'b0;
						pos_cnt<=4'd0;
					end
					STOP_POS:begin
						if(scl_cnt<{1'b0,speed_cnt[31:2]} && scl_cnt>{2'b00,speed_cnt[31:3]})begin
							sda_out<=1'b1;
							scl_en<=1'b0;
							I2C_MASTER_STAGE<=IDLE;
						end 
						else begin 
							sda_out<=1'b0;
							scl_en<=1'b1;
							I2C_MASTER_STAGE<=STOP_POS;
						end
						rx_data_last<=1'b0;
						tx_busy<=1'b1;
						data_record_len<=32'd0;
						ack_valid<=1'b0;
						pos_cnt<=4'd0;
						pos<=4'd7;
					end
					default:begin
						rx_data_last        <=1'b0;
						rx_data_valid       <=1'b0;
						sda_out             <=1'b1;
						scl_en              <=1'b0;
						pos                 <=4'd7;
						I2C_MASTER_STAGE    <=IDLE;
						tx_busy             <=1'b0;
						data_record_len     <=32'd0;
						ack_valid			<=1'b0;
						pos_cnt				<=4'd0;
						rx_data				<=8'd0;
					end
				endcase
				I2C_SLAVE_STAGE<=IDLE;
			end    
			0:begin
				if(end_flag) begin 
					I2C_SLAVE_STAGE<=IDLE;
					tx_busy<=1'b0;
					data_finish<=1'b0;
					ack_valid<=1'b0;
					sda_out<=1'b1;
					scl_en<=1'b0;
					rx_data<=8'd0;
					pos_cnt<=4'd0;
				end
				else begin
					case(I2C_SLAVE_STAGE)
						IDLE:begin
							if(start_flag) I2C_SLAVE_STAGE<=CHIP_ID_TRANS;
							else I2C_SLAVE_STAGE<=IDLE;
							sda_out<=1'b1;
							scl_en<=1'b0;
							pos<=4'd7;
							tx_busy<=1'b0;
							data_record_len <=32'd0;
							addr_id_map_valid<=1'b0;
							ack_valid<=1'b0;
							rx_data<=8'd0;
							pos_cnt<=4'd0;
						end
						CHIP_ID_TRANS:begin
							if(pos_cnt>=4'd8 && scl_neg)begin
								I2C_SLAVE_STAGE<=CHIP_ID_ACK;
								pos<=4'd7;
							end
							if(scl_pos)begin
								// rx_data[pos]<=sda_in;
								rx_data<={rx_data[6:0],sda_in};
								pos<=pos-4'd1;
								I2C_SLAVE_STAGE<=CHIP_ID_TRANS;
								pos_cnt<=pos_cnt+4'd1;
							end
							rx_data_valid<=1'b0;
							sda_out<=1'b1;
							ack_valid<=1'b0;
							addr_id_map_valid<=1'b0;
						end
						CHIP_ID_ACK:begin
							if(scl_neg)begin
								if(rx_data[7:1]==chip_id_map[7:1]) begin
									I2C_SLAVE_STAGE<=ADDR_TRANS;
									rx_data<=8'd0;
								end
								else begin 
									I2C_SLAVE_STAGE<=STOP_POS;
									rx_data<=rx_data;
								end
								sda_out<=1'b1;
							end
							else begin
								I2C_SLAVE_STAGE<=CHIP_ID_ACK;
								rx_data<=rx_data;
								if(rx_data[7:1]==chip_id_map[7:1]) sda_out<=1'b0;
								else sda_out<=1'b1;
							end
							slave_rd_wr_n<=rx_data[0];
							pos_cnt<=4'd0;
							addr_id_map_valid<=1'b0;
						end
						ADDR_TRANS:begin
							if(pos_cnt>=4'd8 && scl_neg)begin
								I2C_SLAVE_STAGE<=ADDR_ACK;
								pos<=4'd7;
								addr_id_map_valid<=1'b1;
							end
							if(scl_pos)begin
								// rx_data[pos]<=sda_in;
								rx_data<={rx_data[6:0],sda_in};
								pos<=pos-'d1;
								I2C_SLAVE_STAGE<=ADDR_TRANS;
								pos_cnt<=pos_cnt+4'd1;
							end
							rx_data_valid<=1'b0;
							ack_valid<=1'b0;
							sda_out<=1'b1;
						end
						ADDR_ACK:begin
							if(scl_neg) begin 
								I2C_SLAVE_STAGE<=DATA_TRANS;
								rx_data<=8'd0;
								addr_id_map_valid<=1'b0;
							end
							else begin 
								I2C_SLAVE_STAGE<=ADDR_ACK;
								rx_data<=rx_data;
								addr_id_map_valid<=1'b1;
							end
							sda_out<=1'b0;
							pos_cnt<=4'd0;
							// addr_id_map<=rx_data;
						end
						DATA_TRANS:begin
							if (counter>=32'd4000) begin//overtime jump
								I2C_SLAVE_STAGE<=STOP_POS;
								pos<=4'd7;
								sda_out<=1'b1;
								data_record_len<=data_record_len+32'd1;
								data_finish<=1'b1;
							end
							else begin
								if(slave_rd_wr_n==1'b1)begin//trans data to master
									if(scl_neg)begin
										if(pos_cnt>=4'd7)begin
											I2C_SLAVE_STAGE<=DATA_ACK;
											pos<=4'd7;
											sda_out<=1'b1;
											data_record_len<=data_record_len+32'd1;
											data_finish<=1'b1;
										end
										else begin
											pos<=pos-'d1;
											I2C_SLAVE_STAGE<=DATA_TRANS;
											data_finish<=1'b0;
											pos_cnt<=pos_cnt+4'd1;
										end
									end
									else begin
										pos<=pos;
										I2C_SLAVE_STAGE<=DATA_TRANS;
										data_finish<=1'b0;
										pos_cnt<=pos_cnt;
									end
									sda_out<=tx_data[pos];
									addr_id_map_valid<=1'b0;
								end
								else begin//receive data from master
									if(pos_cnt>=4'd8 && scl_neg)begin
										I2C_SLAVE_STAGE<=DATA_ACK;
										pos<=4'd7;
										data_record_len<=data_record_len+32'd1;
										rx_data_valid<=1'b1;
									end
									else if(scl_pos)begin
											rx_data[pos]<=sda_in;
											pos<=pos-'d1;
											I2C_SLAVE_STAGE<=DATA_TRANS;
											rx_data_valid<=1'b0;
											pos_cnt<=pos_cnt+4'd1;
										end
									else begin
										rx_data<=rx_data;
										pos<=pos;
										I2C_SLAVE_STAGE<=DATA_TRANS;
										rx_data_valid<=1'b0;
										pos_cnt<=pos_cnt;
									end
									sda_out<=1'b1;
								end
							end
							tx_busy<=1'b0;
							ack_valid<=1'b0;
						end
						DATA_ACK:begin
							pos<=4'd7;
							
							if(slave_rd_wr_n==1'b1) sda_out<=1'b1;//receive ack from master
							else sda_out<=1'b0;//trans ack to master
							
							if(scl_in && sda_in==0) ack_valid<=1'b1;
							else ack_valid<=ack_valid;
							if(scl_neg)begin 
								if(ack_valid) I2C_SLAVE_STAGE<=DATA_TRANS;
								else I2C_SLAVE_STAGE<=STOP_POS;
							end
							else I2C_SLAVE_STAGE<=DATA_ACK;
							tx_busy<=1'b0;
							data_finish<=1'b0;
							rx_data_valid<=1'b0;
							rx_data<=8'd0;
							pos_cnt<=4'd0;
						end
						STOP_POS:begin
							if(end_flag) I2C_SLAVE_STAGE<=IDLE;
							else I2C_SLAVE_STAGE<=STOP_POS;
							tx_busy<=1'b0;
							data_finish<=1'b0;
							ack_valid<=1'b0;
							sda_out<=1'b1;
							rx_data<=8'd0;
							pos_cnt<=4'd0;
						end
						default:begin
							I2C_SLAVE_STAGE<=IDLE;
							tx_busy<=1'b0;
							data_finish<=1'b0;
							ack_valid<=1'b0;
							sda_out<=1'b1;
							scl_en<=1'b0;
							rx_data<=8'd0;
							pos_cnt<=4'd0;
							pos<=4'd7;
						end
					endcase
					I2C_MASTER_STAGE    <=IDLE;
				end
			end
			default:begin
				rx_data_last        <=1'b0;
				rx_data_valid       <=1'b0;
				sda_out             <=1'b1;
				scl_en              <=1'b0;
				pos                 <=4'd7;
				I2C_MASTER_STAGE    <=IDLE;
				I2C_SLAVE_STAGE		<=IDLE;
				tx_busy             <=1'b0;
				data_record_len     <=32'd0;
				ack_valid			<=1'b0;
				pos_cnt				<=4'd0;
				rx_data				<='d0;
			end
			endcase
		end
    end
ila_3 i2c_phy_port (
    .clk                  ( sysclk_100m        ),    

    .probe0               ( scl_in     		  ), // input wire [0:0]  probe0 
    .probe1               ( sda_in  		  ), // input wire [0:0]  probe1 
    .probe2               ( tx_data  		  ), // input wire [7:0]  probe2 
    .probe3               ( rx_data   		  ), // input wire [7:0]  probe3 
    .probe4               ( I2C_MASTER_STAGE  ), // input wire [31:0]  probe4 
	.probe5				  ( I2C_SLAVE_STAGE   ), // input wire [31:0]  probe5 
	.probe6				  ( ack_valid         ), // input wire [0:0]  probe6
	.probe7				  ( slave_rd_wr_n     ), // input wire [0:0]  probe7
	.probe8				  (MATER_SLAVE_n      ), // input wire [0:0]  probe8
	.probe9			      (pos				  ),  // input wire [3:0]  probe9	
	.probe10              (end_flag           ), // input wire [0:0]  probe10
	.probe11		  	  (addr_id        	  ),  // input wire [15:0]  probe11
	.probe12		      (chip_id_map		  ), // input wire [7:0]  probe12
	.probe13		      (chip_id			  ), // input wire [7:0]  probe13
	.probe14			  (scl_pos			  ), // input wire [0:0]  probe14
	.probe15              (scl_neg			  ),  // input wire [0:0]  probe15
	.probe16			  (data_record_len	  ), //input wire [31:0]  probe16
	.probe17			  (data_len			  ),  //input wire [31:0]  probe17
	.probe18			  (pos_cnt            ),  //input wire [3:0]	probe18
	.probe19			  (rx_data_valid      ),  //input wire [0:0]   probe19
	.probe20			  ( rx_data_last      ),  //input wire [0:0]  probe20
 	.probe21			  ( scl_edge          ),	//input wire [0:0]  probe20	
	.probe22			  ( maximum_cnt	  	  ),
	.probe23			  ( counter			  )

);

endmodule

