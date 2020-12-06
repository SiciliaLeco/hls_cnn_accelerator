#ifndef CONV_H_
#define CONV_H_
#include "ap_int.h"

typedef int din_t;
typedef int dout_t;

void cnn_accelerator(din_t imgtotal[16*8*8], din_t weitotal[16*3*3], dout_t outtotal[3*3]);
void pool_line_buffer_shift_1_bit(int data);
void conv_line_buffer_shift_1_bit(int data);
int single_pool_calculate();
int single_conv_calculate();
#endif
