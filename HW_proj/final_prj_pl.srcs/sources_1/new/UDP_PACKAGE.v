`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/01 11:42:26
// Design Name: 
// Module Name: UDP_PACKAGE
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


module UDP_PACKAGE(

// AXI4-Stream data interface
    input           axis_clk,
    input           axi_txd_arstn,
    // package data transmit interface
    output   [7:0]   s_axis_txd_tdata,
    output           s_axis_txd_tkeep,
    output           s_axis_txd_tlast,
    input            s_axis_txd_tready,
    output           s_axis_txd_tvalid,
    output   [0:0]   s_axis_txd_tuser,
    // package data receive interface
    input [7:0]     m_axis_rxd_tdata,
    input           m_axis_rxd_tkeep,
    input           m_axis_rxd_tlast,
    output reg      m_axis_rxd_tready,
    input           m_axis_rxd_tvalid,
    input [0:0]     m_axis_rxd_tuser,
    //package data interface
    input           transmit_enable,
    output          transmit_busy,
    input [15:0]    tx_data_length,
    input [7:0]     sensor_data_tdata,
    input           sensor_data_tkeep,
    input           sensor_data_tlast,
    output          sensor_data_tready,
    input           sensor_data_tvalid,
    input [0:0]     sensor_data_tuser

);

// ================= Payload ====================== //
wire [15:0] payload_len; // 输入：你的 payload 长度
assign payload_len=16'd44;
// ================= Ethernet Header ================= //
localparam [47:0] ETH_DST_MAC = 48'hFF_FF_FF_FF_FF_FF;
localparam [47:0] ETH_SRC_MAC = 48'hAA_BB_CC_DD_EE_FF;
localparam [15:0] ETH_TYPE    = 16'h0800;              // IPv4

// ================= IPv4 Header ===================== //
localparam [7:0]  IPV4_VER_IHL      = 8'h45;
localparam [7:0]  IPV4_DSCP         = 8'h00;
localparam [15:0] IPV4_TOTAL_LENGTH = 'd20 + 'd8; // + PAYLOAD_LENGTH;

localparam [15:0] IPV4_ID           = 16'h0001;
localparam [15:0] IPV4_FLAGS_FRAG   = 16'h4000;
localparam [7:0]  IPV4_TTL          = 8'd64;
localparam [7:0]  IPV4_PROTOCOL     = 8'h11; // UDP
// localparam [15:0] IPV4_CHECKSUM     = 16'h0000; // Placeholder

localparam [31:0] IPV4_SRC_IP       = {8'd192, 8'd168, 8'd1, 8'd100};
localparam [31:0] IPV4_DST_IP       = {8'd192, 8'd168, 8'd1, 8'd10};

// ================= UDP Header ====================== //
localparam [15:0] UDP_SRC_PORT      = 16'd1234;
localparam [15:0] UDP_DST_PORT      = 16'd5678;
// localparam [15:0] UDP_LENGTH        = 'd8; // + PAYLOAD_LENGTH;
localparam [15:0] UDP_CHECKSUM      = 16'h0000;


wire [15:0] total_len = 16'd28 + payload_len;
wire [15:0] IPV4_CHECKSUM;
wire [15:0] UDP_LENGTH;
assign UDP_LENGTH = 16'd8 + payload_len; // 8 bytes for UDP header
// wire [16:0] sum1 = 16'h47D2 + total_len;
// wire [15:0] sum1_folded = sum1[16] ? (sum1[15:0] + 1) : sum1[15:0];
// wire [15:0] IPV4_CHECKSUM = ~sum1_folded;

// assign IPV4_CHECKSUM = ~(((16'h47D2 + (28 + payload_len)) & 16'hFFFF) + ((16'h47D2 + (28 + payload_len)) >> 16));
assign IPV4_CHECKSUM = 16'hB7E5;
wire [335:0] eth_header;
assign eth_header = {
    // UDP Header (8 bytes)
    UDP_CHECKSUM[7:0], UDP_CHECKSUM[15:8],
    UDP_LENGTH[7:0]  , UDP_LENGTH[15:8],
    UDP_DST_PORT[7:0], UDP_DST_PORT[15:8],
    UDP_SRC_PORT[7:0], UDP_SRC_PORT[15:8],

    // IPv4 Header (20 bytes)
    IPV4_DST_IP[7:0], IPV4_DST_IP[15:8], IPV4_DST_IP[23:16], IPV4_DST_IP[31:24],
    IPV4_SRC_IP[7:0], IPV4_SRC_IP[15:8], IPV4_SRC_IP[23:16], IPV4_SRC_IP[31:24],
    IPV4_CHECKSUM[7:0], IPV4_CHECKSUM[15:8],
    IPV4_PROTOCOL,
    IPV4_TTL,
    IPV4_FLAGS_FRAG[7:0], IPV4_FLAGS_FRAG[15:8],
    IPV4_ID[7:0], IPV4_ID[15:8],
    total_len[7:0], total_len[15:8],
    IPV4_DSCP,
    IPV4_VER_IHL,

    // Ethernet Header (14 bytes)
    ETH_TYPE[7:0],ETH_TYPE[15:8],
    ETH_SRC_MAC[7:0],ETH_SRC_MAC[15:8],ETH_SRC_MAC[23:16],ETH_SRC_MAC[31:24],ETH_SRC_MAC[39:32],ETH_SRC_MAC[47:40],
    ETH_DST_MAC[7:0],ETH_DST_MAC[15:8],ETH_DST_MAC[23:16],ETH_DST_MAC[31:24],ETH_DST_MAC[39:32],ETH_DST_MAC[47:40]
};
// eth_header = {
//     // Ethernet Header (14 bytes)
//     ETH_DST_MAC,               // 48 bits
//     ETH_SRC_MAC,               // 48 bits
//     ETH_TYPE,                  // 16 bits

//     // IPv4 Header (20 bytes)
//     IPV4_VER_IHL,              // 8 bits
//     IPV4_DSCP,                 // 8 bits
//     total_len,                 // 16 bits = total IP length
//     IPV4_ID,                   // 16 bits
//     IPV4_FLAGS_FRAG,           // 16 bits
//     IPV4_TTL,                  // 8 bits
//     IPV4_PROTOCOL,             // 8 bits
//     IPV4_CHECKSUM,             // 16 bits
//     IPV4_SRC_IP,               // 32 bits
//     IPV4_DST_IP,               // 32 bits

//     // UDP Header (8 bytes)
//     UDP_SRC_PORT,              // 16 bits
//     UDP_DST_PORT,              // 16 bits
//     UDP_LENGTH + payload_len,  // UDP length: 8 + payload
//     UDP_CHECKSUM               // 16 bits (usually 0)
// };
    
    reg [31:0] transmit_state;
    localparam [31:0] TX_IDLE = 32'd0;
    localparam [31:0] TX_ALL_HEADER = 32'd1;
    localparam [31:0] WAIT_HEADER_READY = 32'd2;
    localparam [31:0] TX_PAYLOAD = 32'd3;
    localparam [31:0] TX_END = 32'd4;

    // header convertor interface
    wire        eth_m_axis_tvalid;
    wire        eth_m_axis_tready;
    wire [7:0]  eth_m_axis_tdata;
    wire        eth_m_axis_tstrb;
    wire        eth_m_axis_tkeep;
    wire        eth_m_axis_tlast;

    reg     head_done;
    reg     eth_axis_tvalid;

    // swithch to transmit data flow
    assign s_axis_txd_tdata     = head_done ? sensor_data_tdata  : eth_m_axis_tdata;
    assign s_axis_txd_tkeep     = head_done ? sensor_data_tkeep  : eth_m_axis_tkeep;
    assign s_axis_txd_tlast     = head_done ? sensor_data_tlast  : 1'b0;
    assign sensor_data_tready   = head_done ? s_axis_txd_tready  : 1'b0;
    assign s_axis_txd_tvalid    = head_done ? sensor_data_tvalid : eth_m_axis_tvalid;
    assign s_axis_txd_tuser     = head_done ? 'd0  : 'd0;
    assign eth_m_axis_tready    = head_done ? 1'b0               : s_axis_txd_tready;

    assign transmit_busy = (transmit_state == TX_IDLE) ? 1'd0 : 1'd1;
    always @(posedge axis_clk or negedge axi_txd_arstn) begin
        if(!axi_txd_arstn)begin
            transmit_state <= TX_IDLE;
            head_done <= 1'b0;
            eth_axis_tvalid <= 1'b0;
        end 
        else begin
            case(transmit_state)
                //idle state
                TX_IDLE: begin
                    if(transmit_enable) transmit_state <= TX_ALL_HEADER;
                    else  transmit_state <= TX_IDLE;
                    head_done <= 1'b0;
                    eth_axis_tvalid <= 1'b0;
                end
                //transmit all header, preconnected all wire but valid
                TX_ALL_HEADER: begin
                    if(eth_axis_tready && eth_axis_tvalid) begin
                        eth_axis_tvalid <= 1'b0;
                        transmit_state <= WAIT_HEADER_READY;
                    end
                    else begin
                        eth_axis_tvalid <= 1'b1;
                        transmit_state <= TX_ALL_HEADER;
                    end
                    head_done <= 1'b0;
                end
                //waiting for header transmit complete
                WAIT_HEADER_READY: begin
                    if(eth_m_axis_tlast && eth_m_axis_tvalid && eth_m_axis_tready) begin
                        transmit_state <= TX_PAYLOAD;
                        head_done <= 1'b1;
                    end
                    else begin
                        transmit_state <= WAIT_HEADER_READY;
                        head_done <= 1'b0;
                    end
                    eth_axis_tvalid <= 1'b0;
                end
                TX_PAYLOAD:begin
                    if(sensor_data_tlast && sensor_data_tvalid && sensor_data_tready) begin
                        transmit_state <= TX_IDLE;
                        head_done <= 1'b0;
                    end
                    else begin 
                        transmit_state <= TX_PAYLOAD;
                        head_done <= 1'b1;
                    end
                    eth_axis_tvalid <= 1'b0;
                end
                default: begin
                    transmit_state <= TX_IDLE;
                    eth_axis_tvalid <= 1'b0;
                    head_done <= 1'b0;
                end
            endcase
        end
    end
    axis_eth_head_convertor axis_eth_head_convertor(
        .aclk            (axis_clk)             ,
        .aresetn         (axi_txd_arstn)        ,
        .s_axis_tvalid   (eth_axis_tvalid)      ,
        .s_axis_tready   (eth_axis_tready)      ,
        .s_axis_tdata    (eth_header)           ,
        .s_axis_tstrb    (42'h3FFFFFFFFFF)      ,
        .s_axis_tkeep    (42'h3FFFFFFFFFF)      ,
        .s_axis_tlast    (1'b1), // just for FSM to check.
        .s_axis_tuser    (42'd1)                ,
        
        .m_axis_tvalid   (eth_m_axis_tvalid)    ,
        .m_axis_tready   (eth_m_axis_tready)    ,
        .m_axis_tdata    (eth_m_axis_tdata)     ,
        .m_axis_tstrb    (eth_m_axis_tstrb)     ,
        .m_axis_tkeep    (eth_m_axis_tkeep)     ,
        .m_axis_tlast    (eth_m_axis_tlast)     ,
        .m_axis_tuser    (eth_m_axis_tuser)     
    );

endmodule
