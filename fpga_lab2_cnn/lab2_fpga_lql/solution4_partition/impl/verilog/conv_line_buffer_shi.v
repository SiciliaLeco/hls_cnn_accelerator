// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module conv_line_buffer_shi (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data,
        cal_conv_1_0_i,
        cal_conv_1_0_o,
        cal_conv_1_0_o_ap_vld,
        cal_conv_2_0_i,
        cal_conv_2_0_o,
        cal_conv_2_0_o_ap_vld,
        cal_conv_0_1_i,
        cal_conv_0_1_o,
        cal_conv_0_1_o_ap_vld,
        cal_conv_0_0,
        cal_conv_0_0_ap_vld,
        cal_conv_0_2_i,
        cal_conv_0_2_o,
        cal_conv_0_2_o_ap_vld,
        cal_conv_1_1_i,
        cal_conv_1_1_o,
        cal_conv_1_1_o_ap_vld,
        cal_conv_1_2_i,
        cal_conv_1_2_o,
        cal_conv_1_2_o_ap_vld,
        cal_conv_2_1_i,
        cal_conv_2_1_o,
        cal_conv_2_1_o_ap_vld,
        cal_conv_2_2_i,
        cal_conv_2_2_o,
        cal_conv_2_2_o_ap_vld,
        conv_line_buffer_address0,
        conv_line_buffer_ce0,
        conv_line_buffer_we0,
        conv_line_buffer_d0,
        conv_line_buffer_q0,
        conv_line_buffer_address1,
        conv_line_buffer_ce1,
        conv_line_buffer_we1,
        conv_line_buffer_d1,
        conv_line_buffer_q1,
        ap_ce
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] data;
input  [31:0] cal_conv_1_0_i;
output  [31:0] cal_conv_1_0_o;
output   cal_conv_1_0_o_ap_vld;
input  [31:0] cal_conv_2_0_i;
output  [31:0] cal_conv_2_0_o;
output   cal_conv_2_0_o_ap_vld;
input  [31:0] cal_conv_0_1_i;
output  [31:0] cal_conv_0_1_o;
output   cal_conv_0_1_o_ap_vld;
output  [31:0] cal_conv_0_0;
output   cal_conv_0_0_ap_vld;
input  [31:0] cal_conv_0_2_i;
output  [31:0] cal_conv_0_2_o;
output   cal_conv_0_2_o_ap_vld;
input  [31:0] cal_conv_1_1_i;
output  [31:0] cal_conv_1_1_o;
output   cal_conv_1_1_o_ap_vld;
input  [31:0] cal_conv_1_2_i;
output  [31:0] cal_conv_1_2_o;
output   cal_conv_1_2_o_ap_vld;
input  [31:0] cal_conv_2_1_i;
output  [31:0] cal_conv_2_1_o;
output   cal_conv_2_1_o_ap_vld;
input  [31:0] cal_conv_2_2_i;
output  [31:0] cal_conv_2_2_o;
output   cal_conv_2_2_o_ap_vld;
output  [3:0] conv_line_buffer_address0;
output   conv_line_buffer_ce0;
output   conv_line_buffer_we0;
output  [31:0] conv_line_buffer_d0;
input  [31:0] conv_line_buffer_q0;
output  [3:0] conv_line_buffer_address1;
output   conv_line_buffer_ce1;
output   conv_line_buffer_we1;
output  [31:0] conv_line_buffer_d1;
input  [31:0] conv_line_buffer_q1;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] cal_conv_1_0_o;
reg cal_conv_1_0_o_ap_vld;
reg[31:0] cal_conv_2_0_o;
reg cal_conv_2_0_o_ap_vld;
reg[31:0] cal_conv_0_1_o;
reg cal_conv_0_1_o_ap_vld;
reg cal_conv_0_0_ap_vld;
reg[31:0] cal_conv_0_2_o;
reg cal_conv_0_2_o_ap_vld;
reg[31:0] cal_conv_1_1_o;
reg cal_conv_1_1_o_ap_vld;
reg[31:0] cal_conv_1_2_o;
reg cal_conv_1_2_o_ap_vld;
reg[31:0] cal_conv_2_1_o;
reg cal_conv_2_1_o_ap_vld;
reg[31:0] cal_conv_2_2_o;
reg cal_conv_2_2_o_ap_vld;
reg[3:0] conv_line_buffer_address0;
reg conv_line_buffer_ce0;
reg conv_line_buffer_we0;
reg[31:0] conv_line_buffer_d0;
reg[3:0] conv_line_buffer_address1;
reg conv_line_buffer_ce1;
reg conv_line_buffer_we1;
reg[31:0] conv_line_buffer_d1;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_92;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state8;
reg   [31:0] reg_98;
reg   [31:0] conv_line_buffer_loa_reg_190;
wire    ap_CS_fsm_state2;
reg   [31:0] conv_line_buffer_loa_1_reg_196;
reg   [31:0] conv_line_buffer_loa_4_reg_202;
wire    ap_CS_fsm_state4;
reg   [31:0] conv_line_buffer_loa_5_reg_207;
reg   [31:0] conv_line_buffer_loa_6_reg_212;
wire    ap_CS_fsm_state5;
reg   [31:0] conv_line_buffer_loa_7_reg_217;
reg   [31:0] conv_line_buffer_loa_8_reg_222;
wire    ap_CS_fsm_state6;
reg   [31:0] conv_line_buffer_loa_9_reg_227;
reg   [31:0] conv_line_buffer_loa_10_reg_232;
wire    ap_CS_fsm_state7;
reg   [31:0] conv_line_buffer_loa_11_reg_237;
reg   [31:0] ap_port_reg_data;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state14;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_port_reg_data <= data;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state7))) begin
        conv_line_buffer_loa_10_reg_232 <= conv_line_buffer_q0;
        conv_line_buffer_loa_11_reg_237 <= conv_line_buffer_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state2))) begin
        conv_line_buffer_loa_1_reg_196 <= conv_line_buffer_q1;
        conv_line_buffer_loa_reg_190 <= conv_line_buffer_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state4))) begin
        conv_line_buffer_loa_4_reg_202 <= conv_line_buffer_q0;
        conv_line_buffer_loa_5_reg_207 <= conv_line_buffer_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state5))) begin
        conv_line_buffer_loa_6_reg_212 <= conv_line_buffer_q0;
        conv_line_buffer_loa_7_reg_217 <= conv_line_buffer_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state6))) begin
        conv_line_buffer_loa_8_reg_222 <= conv_line_buffer_q0;
        conv_line_buffer_loa_9_reg_227 <= conv_line_buffer_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state3)))) begin
        reg_92 <= conv_line_buffer_q0;
        reg_98 <= conv_line_buffer_q1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9))) begin
        cal_conv_0_0_ap_vld = 1'b1;
    end else begin
        cal_conv_0_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9))) begin
        cal_conv_0_1_o = cal_conv_0_2_i;
    end else begin
        cal_conv_0_1_o = cal_conv_0_1_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9))) begin
        cal_conv_0_1_o_ap_vld = 1'b1;
    end else begin
        cal_conv_0_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9))) begin
        cal_conv_0_2_o = conv_line_buffer_loa_reg_190;
    end else begin
        cal_conv_0_2_o = cal_conv_0_2_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9))) begin
        cal_conv_0_2_o_ap_vld = 1'b1;
    end else begin
        cal_conv_0_2_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13))) begin
        cal_conv_1_0_o = cal_conv_1_1_i;
    end else begin
        cal_conv_1_0_o = cal_conv_1_0_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13))) begin
        cal_conv_1_0_o_ap_vld = 1'b1;
    end else begin
        cal_conv_1_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13))) begin
        cal_conv_1_1_o = cal_conv_1_2_i;
    end else begin
        cal_conv_1_1_o = cal_conv_1_1_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13))) begin
        cal_conv_1_1_o_ap_vld = 1'b1;
    end else begin
        cal_conv_1_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13))) begin
        cal_conv_1_2_o = conv_line_buffer_loa_1_reg_196;
    end else begin
        cal_conv_1_2_o = cal_conv_1_2_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13))) begin
        cal_conv_1_2_o_ap_vld = 1'b1;
    end else begin
        cal_conv_1_2_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
        cal_conv_2_0_o = cal_conv_2_1_i;
    end else begin
        cal_conv_2_0_o = cal_conv_2_0_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
        cal_conv_2_0_o_ap_vld = 1'b1;
    end else begin
        cal_conv_2_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
        cal_conv_2_1_o = cal_conv_2_2_i;
    end else begin
        cal_conv_2_1_o = cal_conv_2_1_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
        cal_conv_2_1_o_ap_vld = 1'b1;
    end else begin
        cal_conv_2_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
        cal_conv_2_2_o = ap_port_reg_data;
    end else begin
        cal_conv_2_2_o = cal_conv_2_2_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
        cal_conv_2_2_o_ap_vld = 1'b1;
    end else begin
        cal_conv_2_2_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        conv_line_buffer_address0 = 4'd10;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        conv_line_buffer_address0 = 4'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        conv_line_buffer_address0 = 4'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        conv_line_buffer_address0 = 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7))) begin
        conv_line_buffer_address0 = 4'd14;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6))) begin
        conv_line_buffer_address0 = 4'd12;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        conv_line_buffer_address0 = 4'd9;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state4))) begin
        conv_line_buffer_address0 = 4'd6;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10))) begin
        conv_line_buffer_address0 = 4'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        conv_line_buffer_address0 = 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        conv_line_buffer_address0 = 4'd3;
    end else begin
        conv_line_buffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        conv_line_buffer_address1 = 4'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        conv_line_buffer_address1 = 4'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        conv_line_buffer_address1 = 4'd1;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7))) begin
        conv_line_buffer_address1 = 4'd15;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6))) begin
        conv_line_buffer_address1 = 4'd13;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        conv_line_buffer_address1 = 4'd10;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state4))) begin
        conv_line_buffer_address1 = 4'd7;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10))) begin
        conv_line_buffer_address1 = 4'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        conv_line_buffer_address1 = 4'd2;
    end else if (((1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state13))) begin
        conv_line_buffer_address1 = 4'd11;
    end else begin
        conv_line_buffer_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_ce) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        conv_line_buffer_ce0 = 1'b1;
    end else begin
        conv_line_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_ce) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        conv_line_buffer_ce1 = 1'b1;
    end else begin
        conv_line_buffer_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        conv_line_buffer_d0 = reg_98;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        conv_line_buffer_d0 = conv_line_buffer_loa_11_reg_237;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        conv_line_buffer_d0 = conv_line_buffer_loa_1_reg_196;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        conv_line_buffer_d0 = conv_line_buffer_loa_8_reg_222;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        conv_line_buffer_d0 = conv_line_buffer_loa_7_reg_217;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        conv_line_buffer_d0 = conv_line_buffer_loa_5_reg_207;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        conv_line_buffer_d0 = conv_line_buffer_loa_reg_190;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        conv_line_buffer_d0 = reg_92;
    end else begin
        conv_line_buffer_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        conv_line_buffer_d1 = cal_conv_2_0_i;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        conv_line_buffer_d1 = reg_92;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        conv_line_buffer_d1 = conv_line_buffer_loa_10_reg_232;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        conv_line_buffer_d1 = conv_line_buffer_loa_9_reg_227;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        conv_line_buffer_d1 = cal_conv_1_0_i;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        conv_line_buffer_d1 = conv_line_buffer_loa_6_reg_212;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        conv_line_buffer_d1 = conv_line_buffer_loa_4_reg_202;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        conv_line_buffer_d1 = reg_98;
    end else begin
        conv_line_buffer_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)))) begin
        conv_line_buffer_we0 = 1'b1;
    end else begin
        conv_line_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)))) begin
        conv_line_buffer_we1 = 1'b1;
    end else begin
        conv_line_buffer_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_ce) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign cal_conv_0_0 = cal_conv_0_1_i;

endmodule //conv_line_buffer_shi
