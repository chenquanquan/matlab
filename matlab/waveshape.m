clc
clear

%{
wlen = 17;
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\zaocheng\\Record_step-2004-1-1-0-0-7-%d.txt',i);
    wave(i,:) = load(FILE);
end
%}

%{
wlen = 2;
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-1\\Record_step-2004-1-1-0-0-18-%d.txt',i);
    wave(i,:) = load(FILE);
end
%}

%{
wlen = 7;
wave = [];
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-2\\Record_step-2004-1-1-0-0-19-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave = [wave; load(FILE)];
end
%}

%{
wlen = 7;
wave = [];
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-3\\Record_step-2004-1-1-0-0-18-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave = [wave; load(FILE)];
end
%}

%{
wlen = 7;
wave = [];
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-4\\Record_step-2004-1-1-0-0-19-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave = [wave; load(FILE)];
end
%}

%{
wlen = 6;
wave = [];
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-5\\Record_step-2004-1-1-0-0-43-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave = [wave; load(FILE)];
end
%}

%{
wlen = 5;
wave = [];
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-6\\Record_step-2004-1-1-0-0-28-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave = [wave; load(FILE)];
end
%}

%{
wlen = 6;
wave = [];
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-7\\Record_step-2004-1-1-0-0-28-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave = [wave; load(FILE)];
end
%}
%{
wlen = 8;
wave = [];
for i=1:wlen
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-8\\Record_step-2004-1-1-0-0-27-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave = [wave; load(FILE)];
end
%}
%{
wlen1 = 5;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-9\\Record_step-2004-1-1-0-0-23-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}


%{
wlen2 = 6;
wave2 = [];
for i=1:wlen2
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-10\\Record_step-2004-1-1-0-0-42-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave2 = [wave2; load(FILE)];
end
%}


%{
%wlen1 = 8;
wlen1 = 6;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-11\\Record_step-2004-1-1-0-13-24-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%wlen2 = 14;
wlen2 = 6;
wave2 = [];
for i=1:wlen2
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-15\\Record_step-2004-1-1-0-1-6-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave2 = [wave2; load(FILE)];
end

%{
%wlen1 = 7;
wlen1 = 6;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-12\\Record_step-2004-1-1-0-0-21-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlen1 = 7;
wlen1 = 6;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-13\\Record_step-2004-1-1-0-0-38-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}

%{
%wlen1 = 7;
wlen1 = 6;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-14\\Record_step-2004-1-1-0-0-36-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlen1 = 8;
wlen1 = 6;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-16\\Record_step-2004-1-1-3-45-16-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlen1 = 7;
wlen1 = 6;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-17\\Record_step-2004-1-1-0-0-38-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlen1 = 31;
wlen1 = 16;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-21\\Record_step-2004-1-1-0-0-37-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlen1 = 15;
wlen1 = 14;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-22\\Record_step-2004-1-1-0-0-36-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlen1 = 15;
wlen1 = 14;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-23\\Record_step-2004-1-1-0-0-38-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlen1 = 10;
wlen1 = 8;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-24\\Record_step-2004-1-1-0-0-39-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlen1 = 12;
wlen1 = 12;
wave1 = [];
for i=1:wlen1
    FILE=sprintf('E:\\workspace\\soft\\mtlabdata\\2502-25\\Record_step-2004-1-1-0-0-39-%d.txt',i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end
%}
%{
%wlan1 = 9
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-26\\Record_step-2004-1-1-0-3-21-%d.txt';
%}
%{
%wlan1 = 25
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-27\\Record_step-2004-1-1-0-0-36-%d.txt';
%}
%{
%wlan1 = 15
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-28\\Record_step-2004-1-1-0-0-41-%d.txt';
%}
%{
%wlan1 = 12
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-29\\Record_step-2004-1-1-0-0-36-%d.txt';
%}
%{
%wlan1 = 12
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-30\\Record_step-2004-1-1-0-33-21-%d.txt';
%}
%{
%wlan1 = 10
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-31\\Record_step-2004-1-1-0-0-44-%d.txt';
%}
%{
%wlan1 = 11
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-32\\Record_step-2004-1-1-0-0-36-%d.txt';
%}
%{
%wlan1 = 17
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-33\\Record_step-2004-1-1-0-0-36-%d.txt';
%}
%{
%wlan1 = 10
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-34\\Record_step-2004-1-1-0-0-42-%d.txt';
%}
%{
%wlan1 = 13
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-35\\Record_step-2004-1-1-0-0-36-%d.txt';
%}
%{
%wlan1 = 16
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-36\\Record_step-2004-1-1-0-0-36-%d.txt';
%}
%{
%wlan1 = 7
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-37\\Record_step-2004-1-1-0-0-50-%d.txt';
%}
%{
%wlan1 = 7
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-38\\Record_step-2004-1-1-0-0-36-%d.txt';
%}
%{
%wlan1 = 7
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-39\\Record_step-2004-1-1-0-0-44-%d.txt';
%}
%{
%wlan1 = 7
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-40\\Record_step-2004-1-1-0-0-46-%d.txt';
%}
%{
%wlan1 = 30
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-41\\Record_step-2004-1-1-0-0-39-%d.txt';
%}
%{
%wlan1 = 4
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-42\\Record_step-2004-1-1-0-0-36-%d.txt';
%}
%{
%wlan1 = 10
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-43\\Record_step-2004-1-1-0-1-12-%d.txt';
%}
%{
%wlan1 = 11
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-44\\Record_step-2004-1-1-0-11-45-%d.txt';
%}
%{
%wlan1 = 10
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-45\\Record_step-2004-1-1-0-0-25-%d.txt';
%}
%{
%wlan1 = 10
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-46\\Record_step-2004-1-1-0-0-39-%d.txt';
%}
%{
%wlan1 = 18
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-47\\Record_step-2004-1-1-0-10-13-%d.txt';
%}
%{
%wlan1 = 31
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-48\\Record_step-2004-1-1-0-0-22-%d.txt';
%}
%{
%wlan1 = 13
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-49\\Record_step-2004-1-1-0-0-7-%d.txt';
%}
%{
%wlan1 = 14
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-50\\Record_step-2004-1-1-0-0-8-%d.txt';
%}

%wlan1 = 11
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-51\\Record_step-2004-1-1-0-0-8-%d.txt';

%{
%wlan1 = 15
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-52\\Record_step-2004-1-1-0-0-8-%d.txt';
%}
%{
%wlan1 = 15
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-53\\Record_step-2004-1-1-0-0-7-%d.txt';
%}
%{
%wlan1 = 15
FILENAME='E:\\workspace\\soft\\mtlabdata\\2502-54\\Record_step-2004-1-1-0-0-7-%d.txt';
%}

%% ====================
wlen1 = 11;
wave1 = [];
for i=1:wlen1
    FILE=sprintf(FILENAME,i);
    %wave(i,:) = load(FILE);
    wave1 = [wave1; load(FILE)];
end

%{
total = [];
for i=1:wlen
    total = [total, wave(i,:)];
end
%}
wlen = 6;
[m,n] = size(wave1)
%[m,n] = size(wave2)
%wave = [wave1, wave2];
wave = [wave1];
size(wave)
%% ====================
%====================
% 滤波
%====================
%采样频率 217Hz
fs=21;
%巴氏低通滤波器得到形状
Wp = 4/fs; Ws = 6/fs;    %截止频率5Hz,阻带截止频率10Hz
[n,Wn] = buttord(Wp,Ws, 1, 50);  %阻带衰减大于30db,通带纹波小于1db
[a,b]=butter(n,Wn);    %设计Butterworth低通滤波器

fprintf('a=');
fprintf(' %8.10f,', a);
fprintf('\n');
fprintf('b=');
fprintf(' %8.10f,', b);
fprintf('\n');

%====================
% 显示图像
%====================
%{
figure (1);
for i=1:2
    py = wave(:, i*2-1);
    subplot(210+i);
    py = filter(a, b, py);
    plot(py, 'k.');
    hold on
    plot(py);
    hold off
end
%}

%{
plot(wave, 'k');
%plot(wave(:,1),'k.');

fprintf('%.0f,', wave(:,1));
hold on

plot(wave);
%plot(wave(:,1));

hold off
%}

%% ====================
% 计步
for i=1
    original = wave(:,1);
    figure(1)
    subplot(211);
    plot(1:length(original), original);
    subplot(212);
    plot(1:length(original), filter(a, b, original));
    
    py = wave(:,2);
    fprintf('\n');
    fprintf('%.0f,', py);
    fprintf('\n');
    %tmp = 1:100;
    %py = [tmp; py];
    %my = wave(:,3).*100;
    my = wave(:,3);
    
    %figure (i+1)
    figure(2)
    %subplot(210+i)
    plot(1:length(py), py, 'k.');
    hold on;
    plot(1:length(py), py, 'k');
    plot(1:length(my), my, 'm');
    if (n > 3)
        myb = wave(:,4).*100;
        plot(1:length(myb), myb, 'c');
    end

    %峰值
    [peak,valley]=vector_peak(py);
    fprintf('峰值个数%d\n', length(peak));
    %fprintf('实际的步数%d， 误差%d\n', true_count(i),length(peak) - true_count(i) );
    fprintf('\n');

    if length(peak) > 1
    plot(peak, py(peak), 'r.');
    plot(valley, py(valley), 'b.');
    end

    %排除不合理峰值
    %[peak, valley] = vector_dis_line(py, peak, valley);


    %排除不合理峰峰值
    [peak, valley] = vector_pv_dis(py, peak, valley);
    if (peak(1) ~= 1)
        plot(peak, py(peak), 'r*');
    end
    if (valley(1) ~= 1)
        plot(valley, py(valley), 'b*');
    end
    
    %排除频率
    peak = vector_freq(peak);
    valley = vector_freq(valley);
    if length(peak) > 1
    plot(peak, py(peak), 'ro');
    plot(valley, py(valley), 'bo');
    end

    fprintf('量化后数据%d的步数%d\n', i, length(peak));
    %fprintf('实际的步数%d， 误差%d\n', true_count(i),length(peak) - true_count(i) );
    fprintf('\n');
    hold off
end
%% ====================
% Movice
%
if 0
    figure(3)
    %hold on
    mov=moviein(length(py)); 
    for i=1:length(py)
        plot(1:i, py(1:i), '-');
        axis([0 length(py) -1e6 2e7]);
        mov(i)=getframe;
    end
    %hold off;
    size(mov)
    movie(mov);
end
%% ====================