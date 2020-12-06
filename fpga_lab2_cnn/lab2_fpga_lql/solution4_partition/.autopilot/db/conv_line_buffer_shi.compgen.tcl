# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name conv_line_buffer \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename conv_line_buffer \
    op interface \
    ports { conv_line_buffer_address0 { O 4 vector } conv_line_buffer_ce0 { O 1 bit } conv_line_buffer_we0 { O 1 bit } conv_line_buffer_d0 { O 32 vector } conv_line_buffer_q0 { I 32 vector } conv_line_buffer_address1 { O 4 vector } conv_line_buffer_ce1 { O 1 bit } conv_line_buffer_we1 { O 1 bit } conv_line_buffer_d1 { O 32 vector } conv_line_buffer_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_line_buffer'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data \
    op interface \
    ports { data { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name cal_conv_1_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_1_0 \
    op interface \
    ports { cal_conv_1_0_i { I 32 vector } cal_conv_1_0_o { O 32 vector } cal_conv_1_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name cal_conv_2_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_2_0 \
    op interface \
    ports { cal_conv_2_0_i { I 32 vector } cal_conv_2_0_o { O 32 vector } cal_conv_2_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name cal_conv_0_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_0_1 \
    op interface \
    ports { cal_conv_0_1_i { I 32 vector } cal_conv_0_1_o { O 32 vector } cal_conv_0_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name cal_conv_0_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_0_0 \
    op interface \
    ports { cal_conv_0_0 { O 32 vector } cal_conv_0_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name cal_conv_0_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_0_2 \
    op interface \
    ports { cal_conv_0_2_i { I 32 vector } cal_conv_0_2_o { O 32 vector } cal_conv_0_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name cal_conv_1_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_1_1 \
    op interface \
    ports { cal_conv_1_1_i { I 32 vector } cal_conv_1_1_o { O 32 vector } cal_conv_1_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name cal_conv_1_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_1_2 \
    op interface \
    ports { cal_conv_1_2_i { I 32 vector } cal_conv_1_2_o { O 32 vector } cal_conv_1_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name cal_conv_2_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_2_1 \
    op interface \
    ports { cal_conv_2_1_i { I 32 vector } cal_conv_2_1_o { O 32 vector } cal_conv_2_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name cal_conv_2_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cal_conv_2_2 \
    op interface \
    ports { cal_conv_2_2_i { I 32 vector } cal_conv_2_2_o { O 32 vector } cal_conv_2_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


