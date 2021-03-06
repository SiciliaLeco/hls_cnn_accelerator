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
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > ap_ce;
    sc_out< sc_lv<4> > cal_conv_address0;
    sc_out< sc_logic > cal_conv_ce0;
    sc_in< sc_lv<32> > cal_conv_q0;
    sc_out< sc_lv<4> > cal_conv_address1;
    sc_out< sc_logic > cal_conv_ce1;
    sc_in< sc_lv<32> > cal_conv_q1;
    sc_out< sc_lv<4> > kernel_address0;
    sc_out< sc_logic > kernel_ce0;
    sc_in< sc_lv<32> > kernel_q0;
    sc_out< sc_lv<4> > kernel_address1;
    sc_out< sc_logic > kernel_ce1;
    sc_in< sc_lv<32> > kernel_q1;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    single_conv_calculat(sc_module_name name);
    SC_HAS_PROCESS(single_conv_calculat);

    ~single_conv_calculat();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state5_pp0_stage4_iter0;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_lv<32> > reg_76;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state2_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state3_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state4_pp0_stage3_iter0;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > reg_80;
    sc_signal< sc_lv<32> > reg_84;
    sc_signal< sc_lv<32> > reg_88;
    sc_signal< sc_lv<32> > grp_fu_92_p2;
    sc_signal< sc_lv<32> > reg_104;
    sc_signal< sc_lv<32> > grp_fu_98_p2;
    sc_signal< sc_lv<32> > reg_108;
    sc_signal< sc_lv<32> > reg_112;
    sc_signal< sc_lv<32> > mul_ln34_8_reg_160;
    sc_signal< sc_lv<32> > add_ln34_5_fu_121_p2;
    sc_signal< sc_lv<32> > add_ln34_5_reg_165;
    sc_signal< sc_lv<32> > add_ln34_6_fu_133_p2;
    sc_signal< sc_lv<32> > add_ln34_6_reg_170;
    sc_signal< sc_lv<32> > add_ln34_fu_138_p2;
    sc_signal< sc_lv<32> > add_ln34_reg_175;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0_reg;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< sc_lv<32> > add_ln34_4_fu_116_p2;
    sc_signal< sc_lv<32> > add_ln34_3_fu_127_p2;
    sc_signal< sc_lv<32> > add_ln34_1_fu_144_p2;
    sc_signal< sc_lv<32> > add_ln34_2_fu_150_p2;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_idle_pp0_1to1;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_logic > ap_idle_pp0_0to0;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_pp0_stage0;
    static const sc_lv<5> ap_ST_fsm_pp0_stage1;
    static const sc_lv<5> ap_ST_fsm_pp0_stage2;
    static const sc_lv<5> ap_ST_fsm_pp0_stage3;
    static const sc_lv<5> ap_ST_fsm_pp0_stage4;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_3;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln34_1_fu_144_p2();
    void thread_add_ln34_2_fu_150_p2();
    void thread_add_ln34_3_fu_127_p2();
    void thread_add_ln34_4_fu_116_p2();
    void thread_add_ln34_5_fu_121_p2();
    void thread_add_ln34_6_fu_133_p2();
    void thread_add_ln34_fu_138_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage1_iter0();
    void thread_ap_block_state3_pp0_stage2_iter0();
    void thread_ap_block_state4_pp0_stage3_iter0();
    void thread_ap_block_state5_pp0_stage4_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_block_state7_pp0_stage1_iter1();
    void thread_ap_block_state8_pp0_stage2_iter1();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to0();
    void thread_ap_idle_pp0_1to1();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_ap_return();
    void thread_cal_conv_address0();
    void thread_cal_conv_address1();
    void thread_cal_conv_ce0();
    void thread_cal_conv_ce1();
    void thread_grp_fu_92_p2();
    void thread_grp_fu_98_p2();
    void thread_kernel_address0();
    void thread_kernel_address1();
    void thread_kernel_ce0();
    void thread_kernel_ce1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
