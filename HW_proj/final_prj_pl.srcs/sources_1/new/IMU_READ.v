`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/25 13:28:29
// Design Name: 
// Module Name: IMU_READ
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


module IMU_READ(
    input               sysclk_200M,
    //interface SPI RX
    input               spi_rx_valid,
    output reg          spi_rx_ready,
    input  [15:0]       spi_rx_data,
    input               spi_rx_last,

    output reg [15:0]   spi_tx_data,
    output reg          spi_tx_valid,
    input               spi_tx_ready,
    // Configuration status interface
    input               IMU_ENABLE,
    input               IMU_config_complete,
    // interface to SPI PHY
    output              spi_en,
    input               spi_busy,
    // interface to IMU data
    output reg        IMU_DATA_VALID=1'b0,
    output reg [15:0] TEMP_data,
    output reg [15:0] ACCEL_X,
    output reg [15:0] ACCEL_Y,
    output reg [15:0] ACCEL_Z,
    output reg [15:0] GYRO_X,
    output reg [15:0] GYRO_Y,
    output reg [15:0] GYRO_Z
    );
    // Internal signals
    reg [1:0] spi_busy_judge;
    reg spi_busy_done;
    
    always@(posedge sysclk_200M) spi_busy_judge <= {spi_busy_judge[0], spi_busy};

    reg [5:0]  transmit_counter; // Counter for SPI transmission
    reg [31:0] transmit_status;
    reg data_done; // Flag to indicate data transmission completion

    reg [4:0]  BYTE_POS=5'd0;
    reg [31:0] IMU_BREAK_COUNTER=32'd0; // Counter for IMU break condition
    reg        GAP_FLAG;

    assign spi_en = IMU_ENABLE && IMU_config_complete ? data_done:1'b0;

    always@(posedge sysclk_200M) begin
        if(IMU_ENABLE && IMU_config_complete)begin
            if(IMU_BREAK_COUNTER == 32'd100_000)  begin 
                IMU_BREAK_COUNTER<='d0;
                GAP_FLAG<=1'b1;
            end
            else begin 
                    if(spi_busy_judge == 2'b00) IMU_BREAK_COUNTER <= IMU_BREAK_COUNTER + 1'b1; // Increment counter on each clock cycle
                    else IMU_BREAK_COUNTER <= 'd0; // Reset counter if spi_busy is high 
                    GAP_FLAG <= 1'b0; 
            end
        end
    end

    //judge the byte_pos
    always@(posedge sysclk_200M)begin
        if(IMU_ENABLE && IMU_config_complete)begin
            if(spi_busy)begin
                if(spi_rx_valid && spi_rx_ready) BYTE_POS <= BYTE_POS + 1'b1; // Increment BYTE_POS on each valid SPI RX
                else BYTE_POS <= BYTE_POS; // Maintain current BYTE_POS if no new data
            end
            else BYTE_POS <= 5'd0; 
        end
        else BYTE_POS <= 5'd0; 
    end

    always@(posedge sysclk_200M) begin
        if(IMU_ENABLE && IMU_config_complete)begin
            if (spi_rx_valid)  spi_rx_ready <= 1'b1;       
            else spi_rx_ready <= 1'b0;
        end
        else spi_rx_ready <= 1'b1; //REMOVE FIFO DATA
    end
    reg IMU_DATA_VALID_reg;
    always@(posedge sysclk_200M) begin
        if(BYTE_POS == 5'd7) begin 
            if(IMU_DATA_VALID_reg==1'b0) IMU_DATA_VALID<=1'b1;// Set IMU_DATA_VALID when BYTE_POS reaches 7
            else IMU_DATA_VALID <= 1'b0; // Reset IMU_DATA_VALID if already set
            IMU_DATA_VALID_reg <= 1'b1; // Reset flag to indicate data is no longer valid
        end
        else begin 
            IMU_DATA_VALID <= 1'b0; 
            IMU_DATA_VALID_reg <= 1'b0;
        end
    end
    //receive data from SPI RX
    always@(posedge sysclk_200M) begin
        if(IMU_ENABLE && IMU_config_complete)begin
            if (spi_rx_valid) begin
                case(BYTE_POS)
                    5'd0:begin 
                        TEMP_data[15:8] <= spi_rx_data[7:0];
                    end
                    5'd1:begin 
                        TEMP_data[7:0] <= spi_rx_data[15:8];
                        ACCEL_X[15:8]  <=spi_rx_data[7:0];
                    end
                    5'd2:begin 
                        ACCEL_X[7:0]   <= spi_rx_data[15:8];
                        ACCEL_Y[15:8]  <=spi_rx_data[7:0];
                    end
                    5'd3:begin 
                        ACCEL_Y[7:0]   <= spi_rx_data[15:8];
                        ACCEL_Z[15:8]  <=spi_rx_data[7:0];
                    end
                    5'd4:begin 
                        ACCEL_Z[7:0]   <= spi_rx_data[15:8];
                        GYRO_X[15:8]   <=spi_rx_data[7:0];
                    end
                    5'd5:begin 
                        GYRO_X[7:0]    <=spi_rx_data[15:8];
                        GYRO_Y[15:8]   <=spi_rx_data[7:0];
                    end
                    5'd6:begin 
                        GYRO_Y[7:0]    <= spi_rx_data[15:8];
                        GYRO_Z[15:8]   <=spi_rx_data[7:0];
                    end
                    5'd7:begin 
                        GYRO_Z[7:0]    <= spi_rx_data[15:8];
                    end
                    default:begin
                        TEMP_data <= 'd0; // Maintain current data if not in valid range
                        ACCEL_X <= 'd0;
                        ACCEL_Y <= 'd0;
                        ACCEL_Z <= 'd0;
                        GYRO_X  <= 'd0;
                        GYRO_Y  <= 'd0;
                        GYRO_Z  <= 'd0;
                    end             
                endcase
            end
        end
    end
    //transmit data to spi tx

    always@(posedge sysclk_200M) begin
        if(IMU_ENABLE && IMU_config_complete)begin
            case(transmit_status)
                'd0: begin // Initial state, wait for SPI ready
                    if(spi_tx_ready) begin
                        if(transmit_counter == 6'd7) transmit_status <= 'd1; 
                        else transmit_status <= 'd0; 
                        case(transmit_counter)
                            'd0: spi_tx_data <=16'h9D_00;
                            'd1: spi_tx_data <=16'h00_00;
                            'd2: spi_tx_data <=16'h00_00;
                            'd3: spi_tx_data <=16'h00_00;
                            'd4: spi_tx_data <=16'h00_00;
                            'd5: spi_tx_data <=16'h00_00;
                            'd6: spi_tx_data <=16'h00_00;
                            'd7: spi_tx_data <=16'h00_00;
                            default: spi_tx_data <= 16'h00_00;
                        endcase
                        spi_tx_valid <= 1'b1;
                        transmit_counter <= transmit_counter + 1'b1;
                    end
                    else begin
                        spi_tx_valid <= 1'b0; 
                        transmit_status <= 'd0; 
                        spi_tx_data <= 16'h00_00;
                        transmit_counter<='d0;
                    end
                    data_done <= 1'b0;
                end
                'd1:begin
                    if(spi_busy) transmit_status <= 'd2; // Stay in this state if SPI is busy
                    else transmit_status <= 'd1; // Reset status to initial state
                    data_done <= 1'b1; // Indicate that data send to fifo is done
                    spi_tx_valid <= 1'b0; 
                    spi_tx_data <= 16'h00_00;
                    transmit_counter <= 'd0;
                end
                'd2:begin
                    if(spi_busy==1'b0) transmit_status<='d3;
                    else transmit_status <= 'd2; // Stay in this state if SPI is busy
                    spi_tx_valid <= 1'b0; 
                    spi_tx_data <= 16'h00_00;
                    transmit_counter <= 'd0;
                    data_done <= 1'b0; // Reset data_done flag
                end
                'd3:begin
                    if(GAP_FLAG) transmit_status<='d0;
                    else transmit_status <= 'd3; // Stay in this state if GAP_FLAG is not set
                    spi_tx_valid <= 1'b0; 
                    spi_tx_data <= 16'h00_00;
                    transmit_counter <= 'd0;
                    data_done <= 1'b0; // Reset data_done flag
                end
                default:begin
                    spi_tx_valid <= 1'b0; 
                    transmit_status <= 'd0; 
                    spi_tx_data <= 16'h00_00;
                    transmit_counter <= 'd0;
                    data_done <= 1'b0; // Reset data_done flag
                end
            endcase
        end
        else begin
            spi_tx_valid <= 1'b0; 
            transmit_status <= 'd0; 
            spi_tx_data <= 16'h00_00;
            transmit_counter <= 'd0;
            data_done <= 1'b0;
        end
    end
    // imu_read_ila imu_read_ila(
    //     .clk(sysclk_200M),
    //     .probe0(IMU_ENABLE),
    //     .probe1(IMU_config_complete),
    //     .probe2(spi_rx_valid),
    //     .probe3(spi_rx_ready),
    //     .probe4(spi_rx_data),
    //     .probe5(spi_rx_last),
    //     .probe6(spi_en),
    //     .probe7(spi_busy),
    //     .probe8(IMU_DATA_VALID),
    //     .probe9(TEMP_data),
    //     .probe10(ACCEL_X),
    //     .probe11(ACCEL_Y),
    //     .probe12(ACCEL_Z),
    //     .probe13(GYRO_X),
    //     .probe14(GYRO_Y),
    //     .probe15(GYRO_Z),
    //     .probe16(BYTE_POS),
    //     .probe17(IMU_BREAK_COUNTER),
    //     .probe18(transmit_counter),
    //     .probe19(transmit_status),
    //     .probe20(spi_tx_data),
    //     .probe21(spi_tx_valid),
    //     .probe22(spi_tx_ready),
    //     .probe23(data_done)
    // );
endmodule
