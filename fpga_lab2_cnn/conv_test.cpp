#include "conv.h"
#include <cstdlib>
#include "conv.h"
#include <math.h>
using namespace std;

int main(void)
{
	din_t 	*img = new din_t[16*8*8]; 	//input 16 channel images with size 8*8
	din_t 	*wei = new din_t[16*3*3];	//input 16 filters with size of 3*3
	dout_t 	*out = new dout_t[3*3];		//output feature map after convolution and maxpooling

	//initialize img and wei
	for(int i=0; i<16*8*8; i++)
		img[i] =(din_t)(i%128);//1;
	for(int i=0; i<16*3*3; i++)
		wei[i] = (din_t)(i%3);

	//get test data from my engine
	cnn_accelerator(img, wei, out);

	//calculate golden data
	dout_t out1_buf[6][6];
	dout_t out2_buf[3][3];
	memset(out1_buf,0,sizeof(out1_buf));
	memset(out2_buf,0,sizeof(out2_buf));

	for(int oy=0;oy<6;++oy)			//output rows
	  for(int ox=0;ox<6;++ox)		//output columns
	    for(int kz=0;kz<16;++kz)	//input channels
	      for(int ky=0;ky<3;++ky)	//kernel rows
		    for(int kx=0;kx<3;++kx)	//kernel columns
		    	out1_buf[oy][ox] += img[64*kz+8*(oy+ky)+(ox+kx)]*wei[9*kz+3*ky+kx];

	for(int oy=0; oy<3; oy++)		//output rows
	  for(int ox=0; ox<3; ox++)		//output columns
	    for(int iy=0; iy<2; iy++)	//max pooling stride
		  for(int ix=0; ix<2; ix++)	//max pooling stride
		    if(out1_buf[2*oy+iy][2*ox+ix] > out2_buf[oy][ox])
		    	out2_buf[oy][ox] = out1_buf[2*oy+iy][2*ox+ix];

	bool is_valid = true;
	cout << "*** output comparison ***" << endl;
	for(int i=0; i<3; i++){
	  for(int j=0; j<3; j++){
		   cout<<std::left << "[" << out2_buf[i][j] << "]" << setw(8) << out[3*i+j] << "\t\t\t\t";
	    if(out2_buf[i][j] != out[3*i+j]){
	    	is_valid = false;
	    }
	  }
	  cout << endl;
	}
	if(is_valid == true)
		cout << "*** TEST PASSED ***" << endl;
	else
		cout << "*** TEST FAILED ***" << endl;

	return 0;
}
