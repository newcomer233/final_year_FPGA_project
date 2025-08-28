`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/08/10 16:20:27
// Design Name: 
// Module Name: I2C_CONFIG
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


module I2C_CONFIG(
    input           sysclk_100m,
    input           cfg_clk,
    input           cfg_rst,
    input           cfg_en,
    input           cfg_wr,
    input    [31:0] cfg_addr,
    input    [31:0] cfg_wdata,
    output   [31:0] cfg_rdata,

    output reg       i2c_enable,
    output reg       i2c_en,
    output reg       MATER_SLAVE_n,
    output reg [2:0] SPD_TYPE,

    output reg [7:0]  chip_id,
    output reg [15:0] addr_id,
    output reg [31:0] addr_len,//generally,it is 2 bytes at most;
    output reg [31:0] data_len,//generally,it is 1 bytes at least;

    output reg [7:0]  chip_id_map,
    output     [15:0] addr_id_map, 
    input             addr_id_map_valid,  
    input      [7:0]  rx_data,
    output     [7:0]  map_data,
    input             tx_busy,
    output reg        i2c_int=1'b0
    );
    localparam FUNCTION         = 32'h0000_0000;
    localparam VERSION          = 32'h0000_0004;
    localparam I2C_ENABLE       = 32'h0000_0008;
    localparam I2C_MASTER       = 32'h0000_000C;
    
    localparam I2C_CHIP_ID      = 32'h0000_0010;
    localparam I2C_ADDR_ID      = 32'h0000_0014;
    localparam I2C_SPD          = 32'h0000_0018;
    localparam I2C_ADDR_LEN     = 32'h0000_001C;
    localparam I2C_DATA_LEN     = 32'h0000_0020;
    localparam CHIP_ID_SLAVE    = 32'h0000_0024;
    localparam I2C_SLAVE_MAP0   = 32'h0000_0028;

    localparam I2C_STATUS_REG   = 32'h0000_002C;
    localparam i2C_INT_REG      = 32'h0000_0034;
    localparam I2C_CLEAR_INT_REG= 32'h0000_0038;

    reg [31:0] I2C_SLAVE_MAP0_reg;
    reg        int_clear_reg;

    reg [31:0] raddr;
    reg tx_busy_reg=0;
    reg [6:0] map_addr;
    wire wea;
    assign addr_id_map= {9'd0,map_addr};
    always@(posedge cfg_clk)begin
        if(cfg_en && !cfg_wr) raddr<=cfg_addr;
        else raddr<=raddr;
    end
    always@(posedge sysclk_100m)begin
        if(addr_id_map_valid) map_addr<=rx_data[6:0];
        else map_addr<=map_addr;
        
    end


    always@(posedge cfg_clk)begin
        if(cfg_rst)begin
            i2c_enable      <='d0;
            MATER_SLAVE_n   <='d0;
            chip_id         <='d0;
            addr_id         <='d0;
            SPD_TYPE        <='d0;
            addr_len        <='d0;
            data_len        <='d0;
			i2c_int			<=1'b0;
        end
        else begin
            if(cfg_en && cfg_wr)begin
                case(cfg_addr)
                    I2C_ENABLE      :   i2c_enable         <=cfg_wdata[0] ;
                    I2C_MASTER      :   MATER_SLAVE_n      <=cfg_wdata[0] ;
                    I2C_CHIP_ID     :   chip_id            <=cfg_wdata ;
                    I2C_ADDR_ID     :   addr_id            <=cfg_wdata ;
                    I2C_SPD         :   SPD_TYPE           <=cfg_wdata ;
                    I2C_ADDR_LEN    :   addr_len           <=cfg_wdata ;
                    I2C_DATA_LEN    :   data_len           <=cfg_wdata ;
                    CHIP_ID_SLAVE   :   chip_id_map        <=cfg_wdata ;
                    I2C_SLAVE_MAP0  :begin   I2C_SLAVE_MAP0_reg <=cfg_wdata ;  end
                    I2C_STATUS_REG  :   i2c_en             <=cfg_wdata[0] ;
                    I2C_CLEAR_INT_REG : int_clear_reg      <=cfg_wdata[0] ;
                    default:begin
                        i2c_enable      <=  i2c_enable      ;
                        MATER_SLAVE_n   <=  MATER_SLAVE_n   ;
                        chip_id         <=  chip_id         ;
                        addr_id         <=  addr_id         ;
                        SPD_TYPE        <=  SPD_TYPE        ;
                        addr_len        <=  addr_len        ;
                        data_len        <=  data_len        ;
                        chip_id_map     <=  chip_id_map     ;
                        I2C_SLAVE_MAP0_reg  <= I2C_SLAVE_MAP0_reg;
                    end
                endcase
            end
            else begin
                i2c_enable      <=  i2c_enable      ;
                MATER_SLAVE_n   <=  MATER_SLAVE_n   ;
                chip_id         <=  chip_id         ;
                addr_id         <=  addr_id         ;
                SPD_TYPE        <=  SPD_TYPE        ;
                addr_len        <=  addr_len        ;
                data_len        <=  data_len        ;
				
				if(tx_busy==1'b1) i2c_en<=1'b0;
				else i2c_en<=i2c_en;

				if(tx_busy_reg!=tx_busy && tx_busy==1'b0) i2c_int<=1'b1;
				else if(int_clear_reg) i2c_int<=1'b0;
				else i2c_int<=i2c_int;
				int_clear_reg<=1'b0;
            end
        end
		tx_busy_reg<=tx_busy;
    end
    wire [7:0] douta;
	assign wea=~I2C_SLAVE_MAP0_reg[24];
    assign cfg_rdata =  (raddr == FUNCTION)      ?  "I2C "                  :
                        (raddr == VERSION)       ?  "V1.0"                  :
                        (raddr == I2C_ENABLE  )  ?  {30'd0,i2c_enable  }    :
                        (raddr == I2C_MASTER  )  ?  {30'd0,MATER_SLAVE_n}   :
                        (raddr == I2C_CHIP_ID )  ?  {24'd0,chip_id}         :
                        (raddr == I2C_ADDR_ID )  ?  {16'd0,addr_id}         :
                        (raddr == I2C_SPD     )  ?  {29'd0,SPD_TYPE}        :
                        (raddr == I2C_ADDR_LEN)  ?  addr_len                :
                        (raddr == I2C_DATA_LEN)  ?  data_len                :
                        (raddr == CHIP_ID_SLAVE )?  chip_id_map             :
                        (raddr == I2C_SLAVE_MAP0)?  {I2C_SLAVE_MAP0_reg[31:16],douta,8'd0} :
                        (raddr == I2C_STATUS_REG)?  {30'd0,tx_busy,i2c_en}  :
                        "ERRO";
slave_map slave_map (
  .clka(sysclk_100m),       // input wire clka
  .wea(wea),               // input wire [0 : 0] wea
  .addra(I2C_SLAVE_MAP0_reg[22:16]),          // input wire [6 : 0] addra
  .dina(I2C_SLAVE_MAP0_reg[15:8]),             // input wire [7 : 0] dina
  .douta(douta),            // output wire [7 : 0] douta

  .clkb(sysclk_100m),       // input wire clkb
  .web(1'b0),                   // input wire [0 : 0] web
  .addrb(map_addr),         // input wire [6 : 0] addrb
  .dinb(8'd0),                  // input wire [7 : 0] dinb
  .doutb(map_data)          // output wire [7 : 0] doutb
);
	// ila_9 i2c_ila(
	// .clk	(cfg_clk),
	// .probe0 (cfg_rst)    ,
	// .probe1 (cfg_en)    ,
	// .probe2 (cfg_wr)    ,
	// .probe3 (cfg_addr)    ,
	// .probe4 (cfg_wdata)    ,
	// .probe5 (cfg_rdata)    ,

	// .probe6 (i2c_enable)    ,
	// .probe7 (i2c_en)    ,
	// .probe8 (MATER_SLAVE_n)    ,
	// .probe9 (SPD_TYPE)    ,
	// .probe10 (tx_busy)    ,
	// .probe11 (i2c_int)		,
	// .probe12 (I2C_SLAVE_MAP0_reg)
	// );
	endmodule