% �������ڲ��Ե�����
fs=2000;
t=0:(1/fs):1;
fc1=20;
fc2=193;
signal=cos(2*pi*fc1*t)+0.2*cos(2*pi*fc2*t+2);
% ��Ƶ�ͨ�˲���
d = fdesign.lowpass(50,100,1,40,fs);
h = design(d);
%���źŽ��е�ͨ�˲�����������
newsignal=filter(h,signal);
figure;
subplot(211);
plot(t,signal);
title('�˲�ǰ�ź�');
subplot(212);
plot(t,newsignal);
title('�˲����ź�');