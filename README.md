# hls_cnn_accelerator
高级硬件设计（HLS）卷积神经网络加速器

### 一、完成功能
 1.实现对多通道（16通道）卷积和池化计算进行加速；

 2.实现卷积与池化的深度融合。
 
 3. 使用HLS工具，对其进行优化（如使用pipeline、partition等）。
 
 ### 二、实验记录
 1.主要的实现在`fpga_lab_2_cnn/conv.cpp`中.测试代码为`fpga_lab2_cnn/conv_test.cpp`.
