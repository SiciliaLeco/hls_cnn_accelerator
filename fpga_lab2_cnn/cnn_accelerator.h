#ifndef CNN_ACCELERATOR_H_
#define CNN_ACCELERATOR_H_

#define WIN_SIZE 3 // must be odd
#define HALF_SIZE ((WIN_SIZE - 1) / 2)
#define HEIGHT 8
#define WIDTH 8
#define PWIN_SIZE 4
#define PHEIGHT HEIGHT - 2 * HALF_SIZE
#define PWIDTH  WIDTH - 2 * HALF_SIZE

int single_conv_calculate(); // 闂佸憡顨嗗ú姗�顢楅悙鍝勭濡炲宸╁┑鍫熷闁挎稑瀚弳锟�
int single_pool_calculate(); // 闂佸憡顨嗗ú姗�顢楅悙娈嬔囨偐閹绘帩鍤欓柣鐘辩筏缁辨洟鎮鹃敓锟�
void conv_accelerate(int img[72], int out[9]);
// void pool_accelerate(hls::stream<int>& in_stream, hls::stream<int>& out_stream);
void conv_line_buffer_shift_1_bit(int data);
void pool_line_buffer_shift_1_bit(int data);

#endif
