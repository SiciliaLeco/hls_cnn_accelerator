#include <iostream>
#include <cstring>
using namespace std;
#define WIN_SIZE 3 // convolution layer's kernel size
#define HALF_SIZE ((WIN_SIZE - 1) / 2)
#define HEIGHT 8 // input feature map size
#define WIDTH 8 // input feature map size
#define PHEIGHT 6  // convolution result size
#define PWIDTH  6
#define PWIN_SIZE 2 //pooling layer's kernel size
#define CHANNEL 16

typedef int din_t;
typedef int dout_t;

/*
	cal_**** represents the window under calculation in each operation
	****_line_buffer represents the linebuffer
	the function is same to that of hls::
*/

int cal_conv[3][3];
int cal_pool[2][2];
int kernel[3][3]={0,1,2,0,1,2,0,1,2};
int conv_line_buffer[2][8];
int pool_line_buffer[6];
int conv_result[PHEIGHT][PWIDTH];

int single_conv_calculate()
{
	// convolution single operation
	// x, y 为卷积核中坐标
	int ans = 0;
	for(int i = 0; i < WIN_SIZE; i++)
	{
		for(int j = 0; j < WIN_SIZE; j++)
		{
			ans += cal_conv[i][j] * kernel[i][j];
		}
	}
	return ans;
}

int single_pool_calculate()
{
	// max pooling single operation
	int ans = 0;
	for(int i = 0; i <= PWIN_SIZE; i++)
	{
		for(int j = 0; j <= PWIN_SIZE; j++)
		{
				ans = ans > cal_pool[i][j]?ans:cal_pool[i][j];
		}
	}
	return ans;
}

void conv_line_buffer_shift_1_bit(int data)
{
	// 每次左移的时候 cal数组那个也要更新
	int go_up[2];
	go_up[0] = cal_conv[1][0];
	go_up[1] = cal_conv[2][0];

	// 先update cal_conv
	for(int i = 0; i < WIN_SIZE; i++)
	{
		for(int j = 0; j < WIN_SIZE; j++)
		{
			if(j < WIN_SIZE - 1)
				cal_conv[i][j] = cal_conv[i][j + 1];
			else if(i < WIN_SIZE - 1)
				cal_conv[i][j] = conv_line_buffer[i][WIN_SIZE];
			else
				cal_conv[i][j] = data;
		}
	}

	 for(int i = 0; i < WIN_SIZE - 1; i++)
	 {
	 	for(int j = 0; j < WIDTH; j++)
	 	{
	 		if(j == WIDTH - 1)
	 			conv_line_buffer[i][j] = go_up[i];
	 		else
	 			conv_line_buffer[i][j] = conv_line_buffer[i][j + 1];

	 	}
	 }
}

void pool_line_buffer_shift_1_bit(int data)
{
		// 每次左移的时候 cal数组那个也要更新
	int go_up=cal_pool[1][0];
	// 先update cal_pool
	cal_pool[0][0] = cal_pool[0][1];
	cal_pool[0][1] = pool_line_buffer[WIN_SIZE - 1];
	cal_pool[1][0] = cal_pool[1][1];
	cal_pool[1][1] = data;

	for(int i = 0; i < PWIDTH - 1; i++)
		pool_line_buffer[i] = pool_line_buffer[i+1];

	pool_line_buffer[PWIDTH-1] = go_up;
}


void single_conv_test(din_t imgtotal[16*8*8], din_t weitotal[16*3*3], dout_t outtotal[3*3]){
	din_t conv_output[6][6];
	int out_count = 0;
	for(int i =0;i<6;i++)
		for(int j =0;j<6;j++)
			conv_output[i][j] = 0;
	int conv_count = 0;
	for(int c = 0; c < CHANNEL; c++)
	{
		din_t img[8*8];
		// initialize img and kernel
		for(int img_i = 0; img_i < 8 * 8; img_i++)
			img[img_i] = imgtotal[c * 64 + img_i];

		for(int ker_i = 0; ker_i < 3 * 3; ker_i++)
			kernel[ker_i / 3][ker_i % 3] = weitotal[ker_i];

		int count = 0;
		int result[6][6];
		for(int i = 0; i < WIN_SIZE - 1; i++)
		{
				for(int j = 0; j < WIDTH; j++)
				{
					int data=img[count++];
					if(j < WIN_SIZE)
					{
						cal_conv[i][j] = data;
						conv_line_buffer[i][j] = data;
					}
					else
					{
						conv_line_buffer[i][j] = data;
				}
					}
		}


		for(int i = 0; i < WIN_SIZE; i++)
			cal_conv[WIN_SIZE-1][i] = img[count++];
			// cal_conv[WIN_SIZE-1][i] = in_stream.read(); //再多读3个，填满cal_conv

		int cal_result_count = 0; // 这个变量用来记录卷积核结果算出来了多少，达到一定以后可以并行执行pool
		for(int i = 0; i < PHEIGHT; i++)
		{
			for(int j = 0; j < PWIDTH; j++)
			{
				int out; // 本次生成运行的结果
				if(j < PWIDTH - 1)
				{ // 边界判断, 如果不是就只读一个数据进来，否则读3个
					out = single_conv_calculate();
					int data=img[count++];
					conv_line_buffer_shift_1_bit(data); //读入数据
				}
				else // 换行，多读2个数据 共WIN_SIZE次读入和移动
				{
					for(int i1 = 0; i1 < WIN_SIZE; i1++)
					{
						if(i1 == 0){
							out = single_conv_calculate();
						}
						int data=img[count++];
						conv_line_buffer_shift_1_bit(data); //读入数据
					}
				}
				result[i][j] = out;
				conv_output[i][j] += out;

				if(c == 15){
					int pool_output;
					if(i == 0)
					{
						if(j < PWIN_SIZE)
							cal_pool[i][j] = conv_output[i][j];
						pool_line_buffer[j] = conv_output[i][j];
					}

					else if((i == 1) && j < PWIN_SIZE){
						cal_pool[i][j] = conv_output[i][j];
					}
					else{
						pool_line_buffer_shift_1_bit(conv_output[i][j]);
					}
					if(i%2==1){
						if(j%2==1)
						{
							outtotal[out_count++] = single_pool_calculate();
							// printf("i:%d, j:%d, result:%d\n", i , j, outtotal[out_count-1]);
						}
					}
				}
			}
		}

	}
}
