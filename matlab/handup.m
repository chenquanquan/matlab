clc;clear;

%wlan1 = 7
%FILENAME='E:\\workspace\\soft\\mtlabdata\\hand-1\\Record_step-2004-1-1-0-0-8-%d.txt';
%wlan1 = 7
%FILENAME='E:\\workspace\\soft\\mtlabdata\\hand-2\\Record_step-2004-1-1-1-19-29-%d.txt';
%wlan1 = 7
FILENAME='E:\\workspace\\soft\\mtlabdata\\hand-3\\Record_step-2004-1-1-0-0-8-%d.txt';

wlen1 = 7;
wave1 = [];
for i=2:wlen1
    FILE=sprintf(FILENAME,i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
wlen = 6;
wave = [wave1];

x = wave(:,1);
y = wave(:,2);
z = wave(:,3);

figure(1);
%X
plot(x, 'r.');
hold on;
plot(x, 'r');
plot(1:length(x), mean(x), 'r.');
plot(1:length(x), max(x), 'r');
plot(1:length(x), min(x), 'r');
%Y
plot(y, 'g.');
plot(y, 'g');
plot(1:length(y), mean(y), 'g.');
plot(1:length(y), max(y), 'g');
plot(1:length(y), min(y), 'g');
%Z
plot(z, 'b.');
plot(z, 'b');
plot(1:length(z), mean(z), 'b.');
plot(1:length(z), max(z), 'b');
plot(1:length(z), min(z), 'b');
hold off;