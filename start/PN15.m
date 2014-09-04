SampleTime=1/8; 
%sim('pnsim'); 
len=10%length(pn13); 
N=7; 
N_sample=64; 
gt=ones(1,N_sample); %ÿ��Ԫ��Ӧ���ز��ź�
pn1=pn13%' %���pn��
pntemp1=sigexpand(pn1,N_sample);    %��Ԫ��չ
pnx1=conv(pntemp1,gt);              %��Ԫ����
pn2=pn15'                           %���pn��
pntemp2=sigexpand(pn2,N_sample);    %��Ԫ��չ
pnx2=conv(pntemp2,gt);              %��Ԫ����
spn=conv(1-2*pn1,1-2*pn1(N:-1:1))/N %����غ���
dpn=conv(1-2*pn1,1-2*pn2(N:-1:1))/N %����غ���
t=0:1/N_sample:len-1/N_sample; 
figure(1) 
subplot(4,1,1); 
plot(t,pnx1(1:length(t))); 
axis([0 61 -0.5 1.5]); 
title('PN13����'); 
subplot(4,1,2); 
plot(t,pnx2(1:length(t))); 
axis([0 61 -0.5 1.5]); 
title('PN15����'); 
subplot(4,1,3); 
stem(1:61,spn(15:75)); 
axis([0 61 -0.5 1.5]); 
title('PN13����ز���'); 
subplot(4,1,4); 
stem(1:61,dpn(15:75)); 
axis([0 61 -1.5 1.5]); 
title('PN(N=3)����ز���')

