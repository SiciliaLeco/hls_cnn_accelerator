// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv_line_buffer_shi_HH_
#define _conv_line_buffer_shi_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct conv_line_buffer_shi : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > data;
    sc_out< sc_lv<4> > conv_line_buffer_address0;
    sc_out< sc_logic > conv_line_buffer_ce0;
    sc_out< sc_logic > conv_line_buffer_we0;
    sc_out< sc_lv<32> > conv_line_buffer_d0;
    sc_in< sc_lv<32> > conv_line_buffer_q0;
    sc_out< sc_lv<4> > cal_conv_address0;
    sc_out< sc_logic > cal_conv_ce0;
    sc_out< sc_logic > cal_conv_we0;
    sc_out< sc_lv<32> > cal_conv_d0;
    sc_in< sc_lv<32> > cal_conv_q0;
    sc_out< sc_lv<4> > cal_conv_address1;
    sc_out< sc_logic > cal_conv_ce1;
    sc_out< sc_logic > cal_conv_we1;
    sc_out< sc_lv<32> > cal_conv_d1;
    sc_in< sc_lv<32> > cal_conv_q1;


    // Module declarations
    conv_line_buffer_shi(sc_module_name name);
    SC_HAS_PROCESS(conv_line_buffer_shi);

    ~conv_line_buffer_shi();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > go_up_0_reg_425;
    sc_signal< sc_lv<32> > go_up_1_reg_430;
    sc_signal< sc_lv<2> > i_fu_200_p2;
    sc_signal< sc_lv<2> > i_reg_438;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln62_fu_194_p2;
    sc_signal< sc_lv<5> > sub_ln67_fu_245_p2;
    sc_signal< sc_lv<5> > sub_ln67_reg_448;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_133_reg_455;
    sc_signal< sc_lv<32> > conv_line_buffer_loa_reg_460;
    sc_signal< sc_lv<2> > j_fu_265_p2;
    sc_signal< sc_lv<2> > j_reg_468;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_136_fu_271_p3;
    sc_signal< sc_lv<1> > tmp_136_reg_473;
    sc_signal< sc_lv<1> > icmp_ln64_fu_259_p2;
    sc_signal< sc_lv<5> > add_ln67_1_fu_297_p2;
    sc_signal< sc_lv<5> > add_ln67_1_reg_482;
    sc_signal< sc_lv<2> > i_3_fu_332_p2;
    sc_signal< sc_lv<2> > i_3_reg_490;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > zext_ln80_fu_346_p1;
    sc_signal< sc_lv<6> > zext_ln80_reg_495;
    sc_signal< sc_lv<1> > icmp_ln75_fu_326_p2;
    sc_signal< sc_lv<4> > conv_line_buffer_add_16_reg_501;
    sc_signal< sc_lv<32> > select_ln80_fu_369_p3;
    sc_signal< sc_lv<32> > select_ln80_reg_506;
    sc_signal< sc_lv<4> > j_2_fu_381_p2;
    sc_signal< sc_lv<4> > j_2_reg_514;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln79_fu_387_p2;
    sc_signal< sc_lv<1> > icmp_ln79_reg_519;
    sc_signal< sc_lv<1> > icmp_ln77_fu_375_p2;
    sc_signal< sc_lv<6> > add_ln82_1_fu_411_p2;
    sc_signal< sc_lv<6> > add_ln82_1_reg_528;
    sc_signal< sc_lv<2> > i_0_reg_149;
    sc_signal< sc_lv<2> > j_0_reg_161;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > i1_0_reg_172;
    sc_signal< sc_lv<4> > j2_0_reg_183;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > tmp_132_fu_220_p3;
    sc_signal< sc_lv<64> > sext_ln67_fu_288_p1;
    sc_signal< sc_lv<64> > sext_ln69_fu_311_p1;
    sc_signal< sc_lv<64> > sext_ln67_1_fu_322_p1;
    sc_signal< sc_lv<64> > tmp_135_fu_356_p3;
    sc_signal< sc_lv<64> > zext_ln82_1_fu_402_p1;
    sc_signal< sc_lv<64> > zext_ln82_3_fu_416_p1;
    sc_signal< sc_lv<5> > tmp_131_fu_206_p3;
    sc_signal< sc_lv<5> > or_ln69_fu_214_p2;
    sc_signal< sc_lv<4> > tmp_130_fu_233_p3;
    sc_signal< sc_lv<5> > zext_ln67_1_fu_241_p1;
    sc_signal< sc_lv<5> > zext_ln67_fu_229_p1;
    sc_signal< sc_lv<5> > zext_ln67_2_fu_279_p1;
    sc_signal< sc_lv<5> > add_ln67_fu_283_p2;
    sc_signal< sc_lv<5> > zext_ln67_3_fu_293_p1;
    sc_signal< sc_lv<5> > zext_ln69_fu_302_p1;
    sc_signal< sc_lv<5> > add_ln69_fu_306_p2;
    sc_signal< sc_lv<5> > tmp_134_fu_338_p3;
    sc_signal< sc_lv<5> > or_ln80_fu_350_p2;
    sc_signal< sc_lv<1> > trunc_ln80_fu_365_p1;
    sc_signal< sc_lv<6> > zext_ln82_fu_393_p1;
    sc_signal< sc_lv<6> > add_ln82_fu_397_p2;
    sc_signal< sc_lv<6> > zext_ln82_2_fu_407_p1;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<59> ap_const_lv59_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<5> ap_const_lv5_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_7;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln67_1_fu_297_p2();
    void thread_add_ln67_fu_283_p2();
    void thread_add_ln69_fu_306_p2();
    void thread_add_ln82_1_fu_411_p2();
    void thread_add_ln82_fu_397_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_cal_conv_address0();
    void thread_cal_conv_address1();
    void thread_cal_conv_ce0();
    void thread_cal_conv_ce1();
    void thread_cal_conv_d0();
    void thread_cal_conv_d1();
    void thread_cal_conv_we0();
    void thread_cal_conv_we1();
    void thread_conv_line_buffer_address0();
    void thread_conv_line_buffer_ce0();
    void thread_conv_line_buffer_d0();
    void thread_conv_line_buffer_we0();
    void thread_i_3_fu_332_p2();
    void thread_i_fu_200_p2();
    void thread_icmp_ln62_fu_194_p2();
    void thread_icmp_ln64_fu_259_p2();
    void thread_icmp_ln75_fu_326_p2();
    void thread_icmp_ln77_fu_375_p2();
    void thread_icmp_ln79_fu_387_p2();
    void thread_j_2_fu_381_p2();
    void thread_j_fu_265_p2();
    void thread_or_ln69_fu_214_p2();
    void thread_or_ln80_fu_350_p2();
    void thread_select_ln80_fu_369_p3();
    void thread_sext_ln67_1_fu_322_p1();
    void thread_sext_ln67_fu_288_p1();
    void thread_sext_ln69_fu_311_p1();
    void thread_sub_ln67_fu_245_p2();
    void thread_tmp_130_fu_233_p3();
    void thread_tmp_131_fu_206_p3();
    void thread_tmp_132_fu_220_p3();
    void thread_tmp_134_fu_338_p3();
    void thread_tmp_135_fu_356_p3();
    void thread_tmp_136_fu_271_p3();
    void thread_trunc_ln80_fu_365_p1();
    void thread_zext_ln67_1_fu_241_p1();
    void thread_zext_ln67_2_fu_279_p1();
    void thread_zext_ln67_3_fu_293_p1();
    void thread_zext_ln67_fu_229_p1();
    void thread_zext_ln69_fu_302_p1();
    void thread_zext_ln80_fu_346_p1();
    void thread_zext_ln82_1_fu_402_p1();
    void thread_zext_ln82_2_fu_407_p1();
    void thread_zext_ln82_3_fu_416_p1();
    void thread_zext_ln82_fu_393_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
