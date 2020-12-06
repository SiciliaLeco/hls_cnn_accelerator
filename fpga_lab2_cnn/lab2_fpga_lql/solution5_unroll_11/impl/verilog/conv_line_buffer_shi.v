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
        conv_line_buffer_address0,
        conv_line_buffer_ce0,
        conv_line_buffer_we0,
        conv_line_buffer_d0,
        conv_line_buffer_q0,
        cal_conv_address0,
        cal_conv_ce0,
        cal_conv_we0,
        cal_conv_d0,
        cal_conv_q0,
        cal_conv_address1,
        cal_conv_ce1,
        cal_conv_we1,
        cal_conv_d1,
        cal_conv_q1
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] data;
output  [3:0] conv_line_buffer_address0;
output   conv_line_buffer_ce0;
output   conv_line_buffer_we0;
output  [31:0] conv_line_buffer_d0;
input  [31:0] conv_line_buffer_q0;
output  [3:0] cal_conv_address0;
output   cal_conv_ce0;
output   cal_conv_we0;
output  [31:0] cal_conv_d0;
input  [31:0] cal_conv_q0;
output  [3:0] cal_conv_address1;
output   cal_conv_ce1;
output   cal_conv_we1;
output  [31:0] cal_conv_d1;
input  [31:0] cal_conv_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] conv_line_buffer_address0;
reg conv_line_buffer_ce0;
reg conv_line_buffer_we0;
reg[31:0] conv_line_buffer_d0;
reg[3:0] cal_conv_address0;
reg cal_conv_ce0;
reg cal_conv_we0;
reg[3:0] cal_conv_address1;
reg cal_conv_ce1;
reg cal_conv_we1;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
reg   [31:0] go_up_0_reg_425;
reg   [31:0] go_up_1_reg_430;
wire   [1:0] i_fu_200_p2;
reg   [1:0] i_reg_438;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln62_fu_194_p2;
wire   [4:0] sub_ln67_fu_245_p2;
reg   [4:0] sub_ln67_reg_448;
wire    ap_CS_fsm_state4;
reg   [0:0] tmp_133_reg_455;
reg   [31:0] conv_line_buffer_loa_reg_460;
wire   [1:0] j_fu_265_p2;
reg   [1:0] j_reg_468;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_136_fu_271_p3;
reg   [0:0] tmp_136_reg_473;
wire   [0:0] icmp_ln64_fu_259_p2;
wire   [4:0] add_ln67_1_fu_297_p2;
reg   [4:0] add_ln67_1_reg_482;
wire   [1:0] i_3_fu_332_p2;
reg   [1:0] i_3_reg_490;
wire    ap_CS_fsm_state7;
wire   [5:0] zext_ln80_fu_346_p1;
reg   [5:0] zext_ln80_reg_495;
wire   [0:0] icmp_ln75_fu_326_p2;
reg   [3:0] conv_line_buffer_add_16_reg_501;
wire   [31:0] select_ln80_fu_369_p3;
reg   [31:0] select_ln80_reg_506;
wire   [3:0] j_2_fu_381_p2;
reg   [3:0] j_2_reg_514;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln79_fu_387_p2;
reg   [0:0] icmp_ln79_reg_519;
wire   [0:0] icmp_ln77_fu_375_p2;
wire   [5:0] add_ln82_1_fu_411_p2;
reg   [5:0] add_ln82_1_reg_528;
reg   [1:0] i_0_reg_149;
reg   [1:0] j_0_reg_161;
wire    ap_CS_fsm_state6;
reg   [1:0] i1_0_reg_172;
reg   [3:0] j2_0_reg_183;
wire    ap_CS_fsm_state9;
wire   [63:0] tmp_132_fu_220_p3;
wire  signed [63:0] sext_ln67_fu_288_p1;
wire  signed [63:0] sext_ln69_fu_311_p1;
wire  signed [63:0] sext_ln67_1_fu_322_p1;
wire   [63:0] tmp_135_fu_356_p3;
wire   [63:0] zext_ln82_1_fu_402_p1;
wire   [63:0] zext_ln82_3_fu_416_p1;
wire   [4:0] tmp_131_fu_206_p3;
wire   [4:0] or_ln69_fu_214_p2;
wire   [3:0] tmp_130_fu_233_p3;
wire   [4:0] zext_ln67_1_fu_241_p1;
wire   [4:0] zext_ln67_fu_229_p1;
wire   [4:0] zext_ln67_2_fu_279_p1;
wire   [4:0] add_ln67_fu_283_p2;
wire   [4:0] zext_ln67_3_fu_293_p1;
wire   [4:0] zext_ln69_fu_302_p1;
wire   [4:0] add_ln69_fu_306_p2;
wire   [4:0] tmp_134_fu_338_p3;
wire   [4:0] or_ln80_fu_350_p2;
wire   [0:0] trunc_ln80_fu_365_p1;
wire   [5:0] zext_ln82_fu_393_p1;
wire   [5:0] add_ln82_fu_397_p2;
wire   [5:0] zext_ln82_2_fu_407_p1;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln62_fu_194_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i1_0_reg_172 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln77_fu_375_p2 == 1'd1))) begin
        i1_0_reg_172 <= i_3_reg_490;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln64_fu_259_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_0_reg_149 <= i_reg_438;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i_0_reg_149 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        j2_0_reg_183 <= j_2_reg_514;
    end else if (((icmp_ln75_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        j2_0_reg_183 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_0_reg_161 <= j_reg_468;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_0_reg_161 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln64_fu_259_p2 == 1'd0) & (tmp_136_fu_271_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln67_1_reg_482 <= add_ln67_1_fu_297_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln77_fu_375_p2 == 1'd0) & (icmp_ln79_fu_387_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        add_ln82_1_reg_528 <= add_ln82_1_fu_411_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln75_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        conv_line_buffer_add_16_reg_501[3] <= tmp_135_fu_356_p3[3];
        select_ln80_reg_506 <= select_ln80_fu_369_p3;
        zext_ln80_reg_495[4 : 3] <= zext_ln80_fu_346_p1[4 : 3];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        conv_line_buffer_loa_reg_460 <= conv_line_buffer_q0;
        sub_ln67_reg_448 <= sub_ln67_fu_245_p2;
        tmp_133_reg_455 <= i_0_reg_149[32'd1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        go_up_0_reg_425 <= cal_conv_q0;
        go_up_1_reg_430 <= cal_conv_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_3_reg_490 <= i_3_fu_332_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_438 <= i_fu_200_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln77_fu_375_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        icmp_ln79_reg_519 <= icmp_ln79_fu_387_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_2_reg_514 <= j_2_fu_381_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_reg_468 <= j_fu_265_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln64_fu_259_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_136_reg_473 <= j_0_reg_161[32'd1];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state7) & (icmp_ln75_fu_326_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln75_fu_326_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_136_fu_271_p3 == 1'd1) & (icmp_ln64_fu_259_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        cal_conv_address0 = sext_ln69_fu_311_p1;
    end else if (((icmp_ln64_fu_259_p2 == 1'd0) & (tmp_136_fu_271_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        cal_conv_address0 = sext_ln67_fu_288_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        cal_conv_address0 = 4'd3;
    end else begin
        cal_conv_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cal_conv_address1 = sext_ln67_1_fu_322_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        cal_conv_address1 = 4'd6;
    end else begin
        cal_conv_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln64_fu_259_p2 == 1'd0) & (tmp_136_fu_271_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((tmp_136_fu_271_p3 == 1'd1) & (icmp_ln64_fu_259_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        cal_conv_ce0 = 1'b1;
    end else begin
        cal_conv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        cal_conv_ce1 = 1'b1;
    end else begin
        cal_conv_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_136_fu_271_p3 == 1'd1) & (icmp_ln64_fu_259_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        cal_conv_we0 = 1'b1;
    end else begin
        cal_conv_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_136_reg_473 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        cal_conv_we1 = 1'b1;
    end else begin
        cal_conv_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        conv_line_buffer_address0 = zext_ln82_3_fu_416_p1;
    end else if (((icmp_ln77_fu_375_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8) & (icmp_ln79_fu_387_p2 == 1'd1))) begin
        conv_line_buffer_address0 = conv_line_buffer_add_16_reg_501;
    end else if (((icmp_ln77_fu_375_p2 == 1'd0) & (icmp_ln79_fu_387_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        conv_line_buffer_address0 = zext_ln82_1_fu_402_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        conv_line_buffer_address0 = tmp_132_fu_220_p3;
    end else begin
        conv_line_buffer_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | ((icmp_ln77_fu_375_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8) & (icmp_ln79_fu_387_p2 == 1'd1)) | ((icmp_ln77_fu_375_p2 == 1'd0) & (icmp_ln79_fu_387_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        conv_line_buffer_ce0 = 1'b1;
    end else begin
        conv_line_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        conv_line_buffer_d0 = conv_line_buffer_q0;
    end else if (((icmp_ln77_fu_375_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8) & (icmp_ln79_fu_387_p2 == 1'd1))) begin
        conv_line_buffer_d0 = select_ln80_reg_506;
    end else begin
        conv_line_buffer_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln79_reg_519 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((icmp_ln77_fu_375_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8) & (icmp_ln79_fu_387_p2 == 1'd1)))) begin
        conv_line_buffer_we0 = 1'b1;
    end else begin
        conv_line_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln62_fu_194_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln64_fu_259_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln75_fu_326_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln77_fu_375_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln67_1_fu_297_p2 = (sub_ln67_reg_448 + zext_ln67_3_fu_293_p1);

assign add_ln67_fu_283_p2 = (sub_ln67_reg_448 + zext_ln67_2_fu_279_p1);

assign add_ln69_fu_306_p2 = (sub_ln67_reg_448 + zext_ln69_fu_302_p1);

assign add_ln82_1_fu_411_p2 = (zext_ln80_reg_495 + zext_ln82_2_fu_407_p1);

assign add_ln82_fu_397_p2 = (zext_ln80_reg_495 + zext_ln82_fu_393_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign cal_conv_d0 = ((tmp_133_reg_455[0:0] === 1'b1) ? data : conv_line_buffer_loa_reg_460);

assign cal_conv_d1 = cal_conv_q0;

assign i_3_fu_332_p2 = (i1_0_reg_172 + 2'd1);

assign i_fu_200_p2 = (i_0_reg_149 + 2'd1);

assign icmp_ln62_fu_194_p2 = ((i_0_reg_149 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln64_fu_259_p2 = ((j_0_reg_161 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln75_fu_326_p2 = ((i1_0_reg_172 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln77_fu_375_p2 = ((j2_0_reg_183 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln79_fu_387_p2 = ((j2_0_reg_183 == 4'd7) ? 1'b1 : 1'b0);

assign j_2_fu_381_p2 = (j2_0_reg_183 + 4'd1);

assign j_fu_265_p2 = (j_0_reg_161 + 2'd1);

assign or_ln69_fu_214_p2 = (tmp_131_fu_206_p3 | 5'd3);

assign or_ln80_fu_350_p2 = (tmp_134_fu_338_p3 | 5'd7);

assign select_ln80_fu_369_p3 = ((trunc_ln80_fu_365_p1[0:0] === 1'b1) ? go_up_1_reg_430 : go_up_0_reg_425);

assign sext_ln67_1_fu_322_p1 = $signed(add_ln67_1_reg_482);

assign sext_ln67_fu_288_p1 = $signed(add_ln67_fu_283_p2);

assign sext_ln69_fu_311_p1 = $signed(add_ln69_fu_306_p2);

assign sub_ln67_fu_245_p2 = (zext_ln67_1_fu_241_p1 - zext_ln67_fu_229_p1);

assign tmp_130_fu_233_p3 = {{i_0_reg_149}, {2'd0}};

assign tmp_131_fu_206_p3 = {{i_0_reg_149}, {3'd0}};

assign tmp_132_fu_220_p3 = {{59'd0}, {or_ln69_fu_214_p2}};

assign tmp_134_fu_338_p3 = {{i1_0_reg_172}, {3'd0}};

assign tmp_135_fu_356_p3 = {{59'd0}, {or_ln80_fu_350_p2}};

assign tmp_136_fu_271_p3 = j_0_reg_161[32'd1];

assign trunc_ln80_fu_365_p1 = i1_0_reg_172[0:0];

assign zext_ln67_1_fu_241_p1 = tmp_130_fu_233_p3;

assign zext_ln67_2_fu_279_p1 = j_fu_265_p2;

assign zext_ln67_3_fu_293_p1 = j_0_reg_161;

assign zext_ln67_fu_229_p1 = i_0_reg_149;

assign zext_ln69_fu_302_p1 = j_0_reg_161;

assign zext_ln80_fu_346_p1 = tmp_134_fu_338_p3;

assign zext_ln82_1_fu_402_p1 = add_ln82_fu_397_p2;

assign zext_ln82_2_fu_407_p1 = j2_0_reg_183;

assign zext_ln82_3_fu_416_p1 = add_ln82_1_reg_528;

assign zext_ln82_fu_393_p1 = j_2_fu_381_p2;

always @ (posedge ap_clk) begin
    zext_ln80_reg_495[2:0] <= 3'b000;
    zext_ln80_reg_495[5] <= 1'b0;
    conv_line_buffer_add_16_reg_501[2:0] <= 3'b111;
end

endmodule //conv_line_buffer_shi