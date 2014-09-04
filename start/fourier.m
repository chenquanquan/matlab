clc
clear
a=1:0.01:100
b=sin(a)
%CU=[b];  %%这里导入你的数据
CU=sin(a)+cos((7/2)*a + pi);
CU_f=fft(CU); %%做FFT变换到频域
figure(1) %%创建窗口
subplot(3,1,1) %%subplot(图表总数，窗口号，图表号）
plot(a)
subplot(3,1,2)
plot(CU);
subplot(3,1,3)
plot(abs(CU_f))