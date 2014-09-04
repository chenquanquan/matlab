clc
clear

%% Data list
%wlan1 = 2
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-1\\Record_step-2004-1-1-0-0-45-%d.txt';
%wlan1 = 5
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-2\\Record_step-2004-1-1-0-0-16-%d.txt';
%wlan1 = 3
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-3\\Record_step-2004-1-1-0-1-49-%d.txt';
%wlan1 = 6
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-4\\Record_step-2004-1-1-0-12-56-%d.txt';
%wlan1 = 5
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-5\\Record_step-2004-1-1-0-25-8-%d.txt';
%wlan1 = 5
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-6\\Record_step-2004-1-1-3-1-29-%d.txt';
%wlan1 = 15
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-7\\Record_step-2004-1-1-5-37-55-%d.txt';
%wlan1 = 2
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-8\\Record_step-2004-1-1-0-0-28-%d.txt';
%wlan1 = 3
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-9\\Record_step-2004-1-1-0-2-57-%d.txt';
%wlan1 = 2
%FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-10\\Record_step-2004-1-1-1-55-16-%d.txt';
%wlan1 = 3
FILENAME='E:\\workspace\\soft\\mtlabdata\\tap-11\\Record_step-2004-1-1-2-26-12-%d.txt';



%% Input data
wlen1 = 3;
wave1 = [];
for i=1:wlen1
    FILE=sprintf(FILENAME,i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%====================
%%  display original picture
figure (1)
x = wave1(:,1);
y = wave1(:,2);
z = wave1(:,3);
subplot(311);
plot(x,'.');
subplot(312);
plot(y,'.');
subplot(313);
plot(z,'.');

%====================
%% display trajectory
dx = diff(x);
dy = diff(y);
dz = diff(z);

ix = vector_inter(dx, 3);
iy = vector_inter(dy, 3);
iz = vector_inter(dz, 3);

figure (2)
subplot(311);
plot(ix,'.');
subplot(312);
plot(iy,'.');
subplot(313);
plot(iz,'.');