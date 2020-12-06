############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -II 1 "single_conv_calculate/single_conv_calculate_label0"
set_directive_pipeline -II 1 "single_conv_calculate/single_conv_calculate_label1"
set_directive_pipeline -II 1 "single_pool_calculate/single_pool_calculate_label2"
set_directive_pipeline -II 1 "single_pool_calculate/single_pool_calculate_label3"
set_directive_pipeline -II 1 "conv_line_buffer_shift_1_bit/conv_line_buffer_shift_1_bit_label4"
set_directive_pipeline -II 1 "conv_line_buffer_shift_1_bit/conv_line_buffer_shift_1_bit_label5"
set_directive_pipeline -II 1 "conv_line_buffer_shift_1_bit/conv_line_buffer_shift_1_bit_label6"
set_directive_pipeline -II 1 "conv_line_buffer_shift_1_bit/conv_line_buffer_shift_1_bit_label7"
set_directive_pipeline -II 1 "pool_line_buffer_shift_1_bit/pool_line_buffer_shift_1_bit_label8"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label9"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label10"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label11"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label12"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label13"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label14"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label15"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label16"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label17"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label18"
set_directive_pipeline -II 1 "single_conv_test/single_conv_test_label19"
set_directive_array_partition -type complete -dim 1 "single_conv_test" cal_conv
set_directive_array_partition -type complete -dim 1 "single_conv_test" kernel
