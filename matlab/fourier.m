clc
clear
a=1:0.01:100
b=sin(a)
%CU=[b];  %%���ﵼ���������
CU=sin(a)+cos((7/2)*a + pi);
CU_f=fft(CU); %%��FFT�任��Ƶ��
figure(1) %%��������
subplot(3,1,1) %%subplot(ͼ�����������ںţ�ͼ��ţ�
plot(a)
subplot(3,1,2)
plot(CU);
subplot(3,1,3)
plot(abs(CU_f))