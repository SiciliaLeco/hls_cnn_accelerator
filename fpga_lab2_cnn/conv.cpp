#include <iostream>
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
int cal_conv[WIN_SIZE][WIN_SIZE];
int cal_pool[PWIN_SIZE][PWIN_SIZE];
int kernel[WIN_SIZE][WIN_SIZE];
int conv_line_buffer[PWIN_SIZE][8];
int pool_line_buffer[PWIDTH];
int conv_result[PHEIGHT][PWIDTH];

int single_conv_calculate()
{
	// convolution single operation
	int ans = 0;
	single_conv_calculate_label0:for(int i = 0; i < WIN_SIZE; i++)
	{
		single_conv_calculate_label1:for(int j = 0; j < WIN_SIZE; j++)
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
	single_pool_calculate_label2:for(int i = 0; i <= PWIN_SIZE; i++)
	{
		single_pool_calculate_label3:for(int j = 0; j <= PWIN_SIZE; j++)
		{
				ans = ans > cal_pool[i][j]?ans:cal_pool[i][j];
		}
	}
	return ans;
}

void conv_line_buffer_shift_1_bit(int data)
{
	// convolution shift up function
	/*
		 -----------------
		 |1*-|2*-|3*-| 4-| 5-| 6-| 7-| 8-|
		 
		 |1*-|2*-|3*-| 4-| 5-| 6-| 7-| 8-|
		 
		 |1* |2* |3* | 4 | 5 | 6 | 7 | 8 |

		 * : cal_conv 
		 - : conv_linebuffer

	*/
	int go_up[2]; // use to update conv_linebuffer
	go_up[0] = cal_conv[1][0];
	go_up[1] = cal_conv[2][0];

	// first update cal_conv
	conv_line_buffer_shift_1_bit_label4:for(int i = 0; i < WIN_SIZE; i++)
	{
		conv_line_buffer_shift_1_bit_label5:for(int j = 0; j < WIN_SIZE; j++)
		{
			if(j < WIN_SIZE - 1)
				cal_conv[i][j] = cal_conv[i][j + 1];
			else if(i < WIN_SIZE - 1)
				cal_conv[i][j] = conv_line_buffer[i][WIN_SIZE];
			else
				cal_conv[i][j] = data;
		}
	}

	 conv_line_buffer_shift_1_bit_label6:for(int i = 0; i < WIN_SIZE - 1; i++)
	 {
	 	conv_line_buffer_shift_1_bit_label7:for(int j = 0; j < WIDTH; j++)
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
	// pooling layer shift 1 bit up
	int go_up=cal_pool[1][0];

	cal_pool[0][0] = cal_pool[0][1];
	cal_pool[0][1] = pool_line_buffer[WIN_SIZE - 1];
	cal_pool[1][0] = cal_pool[1][1];
	cal_pool[1][1] = data;

	pool_line_buffer_shift_1_bit_label8:for(int i = 0; i < PWIDTH - 1; i++)
		pool_line_buffer[i] = pool_line_buffer[i+1];

	pool_line_buffer[PWIDTH-1] = go_up;
}


void cnn_accelerator(din_t imgtotal[16*8*8], din_t weitotal[16*3*3], dout_t outtotal[3*3]){
	/* accelerator of the cnn
		1. do 15 times of convolution calculation (multi-channel)
		2. in the 16 cycle, parallel do pool

	*/

	din_t conv_output[6][6];
	int out_count = 0;
	single_conv_test_label9:for(int i =0;i<6;i++)
		single_conv_test_label10:for(int j =0;j<6;j++)
			conv_output[i][j] = 0;
	int conv_count = 0;
	single_conv_test_label11:for(int c = 0; c < CHANNEL; c++)
	{
#pragma HLS UNROLL
		din_t img[8*8];
		// initialize img and kernel
		single_conv_test_label12:for(int img_i = 0; img_i < 8 * 8; img_i++)
			img[img_i] = imgtotal[c * 64 + img_i];

		single_conv_test_label13:for(int ker_i = 0; ker_i < 3 * 3; ker_i++)
			kernel[ker_i / 3][ker_i % 3] = weitotal[ker_i];

		int count = 0;
		single_conv_test_label14:for(int i = 0; i < WIN_SIZE - 1; i++)
		{
				single_conv_test_label15:for(int j = 0; j < WIDTH; j++)
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


		single_conv_test_label16:for(int i = 0; i < WIN_SIZE; i++)
			cal_conv[WIN_SIZE-1][i] = img[count++];
			
		int cal_result_count = 0; 
		single_conv_test_label17:for(int i = 0; i < PHEIGHT; i++)
		{
			single_conv_test_label18:for(int j = 0; j < PWIDTH; j++)
			{
				int out;
				if(j < PWIDTH - 1)
				{ 
					out = single_conv_calculate();
					int data=img[count++];
					conv_line_buffer_shift_1_bit(data); 
				}
				else 
				{
					single_conv_test_label19:for(int i1 = 0; i1 < WIN_SIZE; i1++)
					{
						if(i1 == 0){
							out = single_conv_calculate();
						}
						int data=img[count++];
						conv_line_buffer_shift_1_bit(data); //shift up and do
					}
				}
				conv_output[i][j] += out;
 
				if(c == 15){ // pooling start
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

						}
					}			
				}

			}
		}
	
	}
}

