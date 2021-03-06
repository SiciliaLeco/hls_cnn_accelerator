// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _single_conv_calculat_HH_
#define _single_conv_calculat_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct single_conv_calculat : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<32> > cal_conv_0_0;
    sc_in< sc_lv<32> > kernel_0_0;
    sc_in< sc_lv<32> > cal_conv_0_1;
    sc_in< sc_lv<32> > kernel_0_1;
    sc_in< sc_lv<32> > cal_conv_0_2;
    sc_in< sc_lv<32> > kernel_0_2;
    sc_in< sc_lv<32> > cal_conv_1_0;
    sc_in< sc_lv<32> > kernel_1_0;
    sc_in< sc_lv<32> > cal_conv_1_1;
    sc_in< sc_lv<32> > kernel_1_1;
    sc_in< sc_lv<32> > cal_conv_1_2;
    sc_in< sc_lv<32> > kernel_1_2;
    sc_in< sc_lv<32> > cal_conv_2_0;
    sc_in< sc_lv<32> > kernel_2_0;
    sc_in< sc_lv<32> > cal_conv_2_1;
    sc_in< sc_lv<32> > kernel_2_1;
    sc_in< sc_lv<32> > cal_conv_2_2;
    sc_in< sc_lv<32> > kernel_2_2;
    sc_out< sc_lv<32> > ap_return;
    sc_in< sc_logic > ap_ce;


    // Module declarations
    single_conv_calculat(sc_module_name name);
    SC_HAS_PROCESS(single_conv_calculat);

    ~single_conv_calculat();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<32> > mul_ln34_6_fu_44_p2;
    sc_signal< sc_lv<32> > mul_ln34_6_reg_199;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > mul_ln34_7_fu_58_p2;
    sc_signal< sc_lv<32> > mul_ln34_7_reg_204;
    sc_signal< sc_lv<32> > mul_ln34_8_fu_72_p2;
    sc_signal< sc_lv<32> > mul_ln34_8_reg_209;
    sc_signal< sc_lv<32> > mul_ln34_4_fu_86_p2;
    sc_signal< sc_lv<32> > mul_ln34_4_reg_214;
    sc_signal< sc_lv<32> > mul_ln34_5_fu_100_p2;
    sc_signal< sc_lv<32> > mul_ln34_5_reg_219;
    sc_signal< sc_lv<32> > add_ln34_5_fu_110_p2;
    sc_signal< sc_lv<32> > add_ln34_5_reg_224;
    sc_signal< sc_lv<32> > mul_ln34_fu_123_p2;
    sc_signal< sc_lv<32> > mul_ln34_reg_229;
    sc_signal< sc_lv<32> > mul_ln34_1_fu_137_p2;
    sc_signal< sc_lv<32> > mul_ln34_1_reg_234;
    sc_signal< sc_lv<32> > mul_ln34_2_fu_151_p2;
    sc_signal< sc_lv<32> > mul_ln34_2_reg_239;
    sc_signal< sc_lv<32> > mul_ln34_3_fu_165_p2;
    sc_signal< sc_lv<32> > mul_ln34_3_reg_244;
    sc_signal< sc_lv<32> > add_ln34_6_fu_175_p2;
    sc_signal< sc_lv<32> > add_ln34_6_reg_249;
    sc_signal< sc_lv<32> > mul_ln34_6_fu_44_p0;
    sc_signal< sc_lv<32> > mul_ln34_6_fu_44_p1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > mul_ln34_7_fu_58_p0;
    sc_signal< sc_lv<32> > mul_ln34_7_fu_58_p1;
    sc_signal< sc_lv<32> > mul_ln34_8_fu_72_p0;
    sc_signal< sc_lv<32> > mul_ln34_8_fu_72_p1;
    sc_signal< sc_lv<32> > mul_ln34_4_fu_86_p0;
    sc_signal< sc_lv<32> > mul_ln34_4_fu_86_p1;
    sc_signal< sc_lv<32> > mul_ln34_5_fu_100_p0;
    sc_signal< sc_lv<32> > mul_ln34_5_fu_100_p1;
    sc_signal< sc_lv<32> > add_ln34_4_fu_106_p2;
    sc_signal< sc_lv<32> > mul_ln34_fu_123_p0;
    sc_signal< sc_lv<32> > mul_ln34_fu_123_p1;
    sc_signal< sc_lv<32> > mul_ln34_1_fu_137_p0;
    sc_signal< sc_lv<32> > mul_ln34_1_fu_137_p1;
    sc_signal< sc_lv<32> > mul_ln34_2_fu_151_p0;
    sc_signal< sc_lv<32> > mul_ln34_2_fu_151_p1;
    sc_signal< sc_lv<32> > mul_ln34_3_fu_165_p0;
    sc_signal< sc_lv<32> > mul_ln34_3_fu_165_p1;
    sc_signal< sc_lv<32> > add_ln34_3_fu_171_p2;
    sc_signal< sc_lv<32> > add_ln34_1_fu_184_p2;
    sc_signal< sc_lv<32> > add_ln34_fu_180_p2;
    sc_signal< sc_lv<32> > add_ln34_2_fu_188_p2;
    sc_signal< sc_lv<32> > add_ln34_7_fu_194_p2;
    sc_signal< sc_logic > ap_ce_reg;
    sc_signal< sc_lv<32> > cal_conv_0_0_int_reg;
    sc_signal< sc_lv<32> > kernel_0_0_int_reg;
    sc_signal< sc_lv<32> > cal_conv_0_1_int_reg;
    sc_signal< sc_lv<32> > kernel_0_1_int_reg;
    sc_signal< sc_lv<32> > cal_conv_0_2_int_reg;
    sc_signal< sc_lv<32> > kernel_0_2_int_reg;
    sc_signal< sc_lv<32> > cal_conv_1_0_int_reg;
    sc_signal< sc_lv<32> > kernel_1_0_int_reg;
    sc_signal< sc_lv<32> > cal_conv_1_1_int_reg;
    sc_signal< sc_lv<32> > kernel_1_1_int_reg;
    sc_signal< sc_lv<32> > cal_conv_1_2_int_reg;
    sc_signal< sc_lv<32> > kernel_1_2_int_reg;
    sc_signal< sc_lv<32> > cal_conv_2_0_int_reg;
    sc_signal< sc_lv<32> > kernel_2_0_int_reg;
    sc_signal< sc_lv<32> > cal_conv_2_1_int_reg;
    sc_signal< sc_lv<32> > kernel_2_1_int_reg;
    sc_signal< sc_lv<32> > cal_conv_2_2_int_reg;
    sc_signal< sc_lv<32> > kernel_2_2_int_reg;
    sc_signal< sc_lv<32> > ap_return_int_reg;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln34_1_fu_184_p2();
    void thread_add_ln34_2_fu_188_p2();
    void thread_add_ln34_3_fu_171_p2();
    void thread_add_ln34_4_fu_106_p2();
    void thread_add_ln34_5_fu_110_p2();
    void thread_add_ln34_6_fu_175_p2();
    void thread_add_ln34_7_fu_194_p2();
    void thread_add_ln34_fu_180_p2();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_return();
    void thread_mul_ln34_1_fu_137_p0();
    void thread_mul_ln34_1_fu_137_p1();
    void thread_mul_ln34_1_fu_137_p2();
    void thread_mul_ln34_2_fu_151_p0();
    void thread_mul_ln34_2_fu_151_p1();
    void thread_mul_ln34_2_fu_151_p2();
    void thread_mul_ln34_3_fu_165_p0();
    void thread_mul_ln34_3_fu_165_p1();
    void thread_mul_ln34_3_fu_165_p2();
    void thread_mul_ln34_4_fu_86_p0();
    void thread_mul_ln34_4_fu_86_p1();
    void thread_mul_ln34_4_fu_86_p2();
    void thread_mul_ln34_5_fu_100_p0();
    void thread_mul_ln34_5_fu_100_p1();
    void thread_mul_ln34_5_fu_100_p2();
    void thread_mul_ln34_6_fu_44_p0();
    void thread_mul_ln34_6_fu_44_p1();
    void thread_mul_ln34_6_fu_44_p2();
    void thread_mul_ln34_7_fu_58_p0();
    void thread_mul_ln34_7_fu_58_p1();
    void thread_mul_ln34_7_fu_58_p2();
    void thread_mul_ln34_8_fu_72_p0();
    void thread_mul_ln34_8_fu_72_p1();
    void thread_mul_ln34_8_fu_72_p2();
    void thread_mul_ln34_fu_123_p0();
    void thread_mul_ln34_fu_123_p1();
    void thread_mul_ln34_fu_123_p2();
};

}

using namespace ap_rtl;

#endif
