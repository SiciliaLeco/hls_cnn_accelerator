############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab2_fpga_lql
set_top single_conv_test
add_files conv.cpp
add_files -tb conv_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution5_unroll_11"
set_part {xc7a12ti-csg325-1L}
create_clock -period 10 -name default
#source "./lab2_fpga_lql/solution5_unroll_11/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
