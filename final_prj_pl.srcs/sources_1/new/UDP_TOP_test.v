`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/02 12:48:12
// Design Name: 
// Module Name: UDP_TOP_test
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


module UDP_TOP_test(
    input sysclk_200m_p,
    input sysclk_200m_n,

    output          mdc,
    inout [0:0]     mdio,
    output [0:0]    phy_rst_n,

    input [3:0]     rgmii_rd,
    input           rgmii_rx_ctl,
    input           rgmii_rxc,
    output [3:0]    rgmii_td,
    output          rgmii_tx_ctl,
    output          rgmii_txc
    );
    wire         axis_clk;
    wire         gtx_clk_125M;
    wire         refclk_100M;
    wire         transmit_enable;
    wire         transmit_busy;
    wire [15:0]  tx_data_length;
    reg  [7:0]   sensor_data_tdata;
    reg          sensor_data_tkeep;
    reg          sensor_data_tlast;
    wire         sensor_data_tready;
    reg          sensor_data_tvalid;
    wire [0:0]   sensor_data_tuser;

    system_clock system_clock_inst (
        .clk_in1_p(sysclk_200m_p),
        .clk_in1_n(sysclk_200m_n),

        .sysclk_200M    (axis_clk),
        .eth_125M       (gtx_clk_125M),
        .refclk_100M    (refclk_100M)
    );
reg transmit_enable_reg;
    UDP_TOP UDP_TOP(
    .axis_clk       (axis_clk),
    .gtx_clk_125M   (gtx_clk_125M),
    .refclk_100M    (refclk_100M),
    .axi_txd_arstn  (axi_txd_arstn), // Assuming reset is always active for testing
    //physical interface
    .mdc                (mdc            ),
    .mdio               (mdio           ),
    .phy_rst_n          (phy_rst_n      ),
    .rgmii_rd           (rgmii_rd       ),
    .rgmii_rx_ctl       (rgmii_rx_ctl   ),
    .rgmii_rxc          (rgmii_rxc      ),
    .rgmii_td           (rgmii_td       ),
    .rgmii_tx_ctl       (rgmii_tx_ctl   ),
    .rgmii_txc          (rgmii_txc      ),
    //package data interface
    .transmit_enable        (transmit_enable_reg),
    .transmit_busy          (transmit_busy     ),
    .tx_data_length         (tx_data_length    ),
    .sensor_data_tdata      (sensor_data_tdata ),
    .sensor_data_tkeep      (sensor_data_tkeep ),
    .sensor_data_tlast      (sensor_data_tlast ),
    .sensor_data_tready     (sensor_data_tready),
    .sensor_data_tvalid     (sensor_data_tvalid),
    .sensor_data_tuser      (sensor_data_tuser )
    );
    
    
    eth_vio eth_vio (
        .clk(axis_clk),
        .probe_out0(axi_txd_arstn),
        .probe_out1(data_prepare),
        .probe_out2(transmit_enable)
    );

    reg [15:0] data_prepare_state;
    
    always@(posedge axis_clk) begin
        if (axi_txd_arstn == 1'b0) begin
            data_prepare_state<= 16'd0;
            sensor_data_tkeep  <= 1'b0;
            sensor_data_tlast  <= 1'b0;
            sensor_data_tvalid <= 1'b0;
            transmit_enable_reg <= 1'b0;
            sensor_data_tdata<=8'd1;
        end 
        else begin
            case(data_prepare_state)
                16'd0: begin
                    if (transmit_enable == 1'b1) begin 
                        data_prepare_state <= 16'd1;
                        transmit_enable_reg<=1'b1;
                    end
                    else begin 
                        data_prepare_state <= 16'd0;
                        transmit_enable_reg<=1'b0;
                    end
                    sensor_data_tkeep  <= 1'b0; 
                    sensor_data_tlast  <= 1'b0; 
                    sensor_data_tvalid <= 1'b0; 
                end
                    16'd1, 16'd2, 16'd3, 16'd4, 16'd5, 16'd6, 16'd7,
    16'd8, 16'd9, 16'd10, 16'd11, 16'd12, 16'd13,
    16'd14, 16'd15: begin
                    if (data_prepare_state == 16'd15) begin 
                        data_prepare_state <= 16'd16;
                        sensor_data_tkeep  <= 1'b0; 
                        sensor_data_tlast  <= 1'b0; 
                        sensor_data_tvalid <= 1'b0;
                    end
                    else begin 
                        if(sensor_data_tready == 1'b1 && sensor_data_tvalid == 1'b1) begin
                            sensor_data_tdata <= sensor_data_tdata + 8'd1; 
                            data_prepare_state <= data_prepare_state + 16'd1;
                        end
                        else begin
                            sensor_data_tdata <= sensor_data_tdata; 
                            data_prepare_state <= data_prepare_state;
                        end
                        sensor_data_tkeep <= 1'b1; 
                        sensor_data_tlast <= (data_prepare_state == 16'd14) ? 1'b1 : 1'b0; 
                        sensor_data_tvalid <= 1'b1; 
                    end
                    transmit_enable_reg<=1'b0;
                end
                16'd16: begin
                    if (transmit_enable == 1'b0) data_prepare_state <= 16'd0;
                    else data_prepare_state <= 16'd16;
                    sensor_data_tkeep  <= 1'b0; 
                    sensor_data_tlast  <= 1'b0; 
                    sensor_data_tvalid <= 1'b0;
                    transmit_enable_reg <= 1'b0;
                    sensor_data_tdata<=8'd1;
                end
                default: begin 
                    data_prepare_state <= 16'd0;
                    sensor_data_tkeep  <= 1'b0; 
                    sensor_data_tlast  <= 1'b0; 
                    sensor_data_tvalid <= 1'b0;
                    transmit_enable_reg <= 1'b0;
                    sensor_data_tdata<=8'd1;
                end
            endcase
        end
    end
    test_ila test_ila_inst (
        .clk(axis_clk),
        .probe0(sensor_data_tdata),
        .probe1(sensor_data_tkeep),
        .probe2(sensor_data_tlast),
        .probe3(sensor_data_tready),
        .probe4(sensor_data_tvalid),
        .probe5(data_prepare_state)
    );
    assign tx_data_length = 16'd14; // Set the length of data to be transmitted
endmodule
