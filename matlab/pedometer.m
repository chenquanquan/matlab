clc
clear


%=========================================
%            500Hz  Begin
%=========================================
%{
%121
dat1=load('C:\Users\admin\Desktop\matlab\step1-data.txt');
%112?
dat2=load('C:\Users\admin\Desktop\matlab\step2-data.txt');
%110
dat3=load('C:\Users\admin\Desktop\matlab\step3-data.txt');
%116
dat4=load('C:\Users\admin\Desktop\matlab\step4-data.txt');

%radom
rad1=load('C:\Users\admin\Desktop\matlab\radom1-data.txt');
rad2=load('C:\Users\admin\Desktop\matlab\radom2-data.txt');
rad3=load('C:\Users\admin\Desktop\matlab\radom3-data.txt');
rad4=load('C:\Users\admin\Desktop\matlab\radom4-data.txt');
rad5=load('C:\Users\admin\Desktop\matlab\radom5-data.txt');


%
% 30s采样
%
%63
dath1=load('C:\Users\admin\Desktop\matlab\steph1-data.txt');
%57
dath2=load('C:\Users\admin\Desktop\matlab\steph2-data.txt');
%55
dath3=load('C:\Users\admin\Desktop\matlab\steph3-data.txt');
%60
dath4=load('C:\Users\admin\Desktop\matlab\steph4-data.txt');

total = [dat1, dat2, dat3, dat4, rad1, rad2, rad3, rad4, rad5];
%total = [dath1, dath2, dath3, dath4];
%compare = [dat1, dat3, rad1, rad4];
compare = total;

%====================
% 滤波
%====================
%采样频率 500Hz
fs=500;
%巴氏低通滤波器得到形状
Wp = 5/fs; Ws = 20/fs;    %截止频率5Hz,阻带截止频率10Hz,采样频率500Hz
[n,Wn] = buttord(Wp,Ws,1,50);  %阻带衰减大于50db,通带纹波小于1db
[a,b]=butter(n,Wn);    %设计Butterworth低通滤波器
fprintf('a=');
fprintf(' %8.10f,', a);
fprintf('\n');
fprintf('b=');
fprintf(' %8.10f,', b);
fprintf('\n');
%}
%=========================================
%            500Hz  End
%=========================================

%=========================================
%            200Hz  Begin
%=========================================
%{
%113
dat1=load('C:\Users\admin\Desktop\matlab\200step1-data.txt');
%110
dat2=load('C:\Users\admin\Desktop\matlab\200step2-data.txt');
%113
dat3=load('C:\Users\admin\Desktop\matlab\200step3-data.txt');

none1=load('C:\Users\admin\Desktop\matlab\200none1-data.txt');
none2=load('C:\Users\admin\Desktop\matlab\200none2-data.txt');
none3=load('C:\Users\admin\Desktop\matlab\200none3-data.txt');
none4=load('C:\Users\admin\Desktop\matlab\200none4-data.txt');

total = [dat1, dat2, dat3, none1, none2, none3, none4];
compare = total;
%====================
% 滤波
%====================
%采样频率 200Hz
%fs=200;
fs = 216;
%巴氏低通滤波器得到形状
Wp = 5/fs; Ws = 15/fs;    %截止频率5Hz,阻带截止频率10Hz,采样频率500Hz
[n,Wn] = buttord(Wp,Ws, 1, 17);  %阻带衰减大于50db,通带纹波小于1db
[a,b]=butter(n,Wn);    %设计Butterworth低通滤波器
fprintf('a=');
fprintf(' %8.10f,', a);
fprintf('\n');
fprintf('b=');
fprintf(' %8.10f,', b);
fprintf('\n');
%}
%=========================================
%            200Hz  End
%=========================================

%=========================================
%            kal timer 217Hz  Start
%=========================================
%102
dat1=load('C:\Users\admin\Desktop\matlab\timer\step1-data.txt');
%0
dat2=load('C:\Users\admin\Desktop\matlab\timer\step2-data.txt');
%103
dat3=load('C:\Users\admin\Desktop\matlab\timer\step3-data.txt');
%103
dat4=load('C:\Users\admin\Desktop\matlab\timer\step4-data.txt');
%112
dat5=load('C:\Users\admin\Desktop\matlab\timer\step5-data.txt');
%0
dat6=load('C:\Users\admin\Desktop\matlab\timer\none1-data.txt');
%100
dat7=load('C:\Users\admin\Desktop\matlab\timer\step6-data.txt');
%107
dat8=load('C:\Users\admin\Desktop\matlab\timer\step7-data.txt');

true_count = [102, 0, 103, 103, 112, 0, 100, 107];
total = [dat1, dat2, dat3, dat4, dat5, dat6, dat7, dat8];
compare = total;
%====================
% 滤波
%====================
%采样频率 217Hz
fs=217;
%巴氏低通滤波器得到形状
Wp = 5/fs; Ws = 10/fs;    %截止频率5Hz,阻带截止频率10Hz
[n,Wn] = buttord(Wp,Ws, 1, 30);  %阻带衰减大于30db,通带纹波小于1db
[a,b]=butter(n,Wn)    %设计Butterworth低通滤波器
fprintf('a=');
fprintf(' %8.10f,', a);
fprintf('\n');
fprintf('b=');
fprintf(' %8.10f,', b);
fprintf('\n');
%=========================================
%            kal timer 200Hz  Start
%=========================================

color=['r', 'g', 'b', 'k', 'm', 'c', 'y', 'r', 'g', 'b', 'k', 'm', 'c', 'y'];
%color=['r', 'r', 'r', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k'];
[cow,col] = size(total)
[cowc,colc] = size(compare)



%====================
% 原始图像
%====================
for i=1:col/3
    picture = i;
    figure(picture)

    %figure(1)
    %hold on
    x=total(:,1+(3*(i-1))) - 4096;
    y=total(:,2+(3*(i-1))) - 4096;
    z=total(:,3+(3*(i-1))) - 4096;
    py = vector_norm([x, y, z]);
    plot(1:length(py), sqrt(py), 'k.');
    hold on
    plot(1:length(py), sqrt(py), 'k');
    
    plot(1:length(x), x, 'm');
    plot(1:length(y), y, 'g');
    plot(1:length(z), z, 'b');
    fprintf('数据%d的三个方差%20.0f, %20.0f, %20.0f\n', i, var(x), var(y), var(z));
    sum = var(x)+var(y)+var(z);
    fprintf('总方差:%20.0f\n', sum);
    hold off 
end

%====================
% 滤波后图像
%====================
stand=picture+1;
for i=1:col/3
    %figure(stand);
    %hold on;
    picture = 1*(col/3)+i;
    figure(picture)
    %figure(2)
    %hold on
    %figure(i)
    x=total(:,1+(3*(i-1))) - 4096;
    y=total(:,2+(3*(i-1))) - 4096;
    z=total(:,3+(3*(i-1))) - 4096;
    %hold on
    py=vector_norm([x, y, z]);
    %py=sqrt(py);
    py=filter(a,b,py);
    %{
    fprintf('%8.0f, ', py);
    fprintf('\n');
    %}
    %py=vector_smooth(py);
        
    %plot(px, py, 'k.');
    %hold on
    %plot(1:length(py), py, 'k');
    %hold on
    %峰值
    [peak,valley]=vector_peak(py);
    hold on
    if length(peak) > 1
    plot(peak, py(peak), 'r.');
    plot(valley, py(valley), 'b.');
    end
    
    %排除不合理峰值
    [peak, valley] = vector_dis_line(py, peak, valley);
    
    
    %排除频率
    peak = vector_freq(peak);
    valley = vector_freq(valley);
    
    if length(peak) > 1
    plot(peak, py(peak), 'ro');
    plot(valley, py(valley), 'bo');
    end

    
    %排除不合理峰峰值
    [peak, valley] = vector_pv_dis(py, peak, valley);
    
    if (peak(1) ~= 1)
        plot(peak, py(peak), 'r*');
    end
    if (valley(1) ~= 1)
        plot(valley, py(valley), 'b*');
    end
    
    fprintf('数据%d的步数%d\n', i, length(peak));
    fprintf('实际的步数%d， 误差%d\n', true_count(i),length(peak) - true_count(i) );
    fprintf('\n');
    
    %{
    fprintf('峰值平均数%20.0f\n', mean(py(peak)));
    fprintf('谷值平均数%20.0f\n', mean(py(valley)));
    
    fprintf('峰值的方差%20.0f\n', var(py(peak(2:2:length(peak)))/10000));
    fprintf('谷值的方差%20.0f\n', var(py(valley(2:2:length(valley)))/10000));
    ppvalue=py(peak) - py(valley);
    fprintf('峰峰值方差%20.0f\n', var(ppvalue/10000));
    
    j=1;
    for count=1:10:length(peak)-10
        varlist(j) = var(py(peak(count:(count+10)))/100000);
        j = j+1;
    end
    fprintf('峰值方差列表');
    fprintf('%.0f, ', varlist);
    fprintf('\n');
    fprintf('峰值方差的方差:%20.0f\n', var(varlist));

    %}
    hold off
end

%====================
% 重新量化
%====================
stand=picture+1;
for i=1:col/3
    picture=2*(col/3)+i;
    figure(picture);

    x=total(:,1+(3*(i-1))) - 4096;
    y=total(:,2+(3*(i-1))) - 4096;
    z=total(:,3+(3*(i-1))) - 4096;
    
    x=x/10;
    y=y/10;
    z=z/10;

    py=vector_norm([x, y, z]);
    py=filter(a,b,py);
    
    plot(1:length(py), py, color(i));
    hold on
    %峰值
    [peak,valley]=vector_peak(py);
    
    if length(peak) > 1
    plot(peak, py(peak), 'r.');
    plot(valley, py(valley), 'b.');
    end

    %排除不合理峰值
    [peak, valley] = vector_dis_line(py, peak, valley);
    %排除频率
    peak = vector_freq(peak);
    valley = vector_freq(valley);
    if length(peak) > 1
    plot(peak, py(peak), 'ro');
    plot(valley, py(valley), 'bo');
    end

    %排除不合理峰峰值
    [peak, valley] = vector_pv_dis(py, peak, valley);
    if (peak(1) ~= 1)
        plot(peak, py(peak), 'r*');
    end
    if (valley(1) ~= 1)
        plot(valley, py(valley), 'b*');
    end
    
    fprintf('量化后数据%d的步数%d\n', i, length(peak));
    fprintf('实际的步数%d， 误差%d\n', true_count(i),length(peak) - true_count(i) );
    fprintf('\n');
    hold off
end



%====================
% 图像对比
%====================
stand=picture+1;
for i=1:col/3
    figure(stand);
    hold on;

    x=total(:,1+(3*(i-1))) - 4096;
    y=total(:,2+(3*(i-1))) - 4096;
    z=total(:,3+(3*(i-1))) - 4096;

    py=vector_norm([x, y, z]);
    py=filter(a,b,py);
    
    plot(1:length(py), py, color(i));
    hold on
    %峰值
    [peak,valley]=vector_peak(py);
    
    if length(peak) > 1
    plot(peak, py(peak), 'r.');
    plot(valley, py(valley), 'b.');
    end
 %{
    %排除不合理峰值
    [peak, valley] = vector_dis_line(py, peak, valley);
    %排除频率
    peak = vector_freq(peak);
    valley = vector_freq(valley);
    if length(peak) > 1
    plot(peak, py(peak), 'ro');
    plot(valley, py(valley), 'bo');
    end

    %排除不合理峰峰值
    [peak, valley] = vector_pv_dis(py, peak, valley);
    if (peak(1) ~= 1)
        plot(peak, py(peak), 'r*');
    end
    if (valley(1) ~= 1)
        plot(valley, py(valley), 'b*');
    end
    %}
end
hold off

%====================
% 运动状态对比
%====================
%{
for i=1:colc/3
    figure(2*(col/3)+1)
    x=compare(:,1+(3*(i-1))) - 4096;
    y=compare(:,2+(3*(i-1))) - 4096;
    z=compare(:,3+(3*(i-1))) - 4096;
    py = vector_norm([x, y, z]);
    
    
    py=filter(a,b,py);
    [peak,valley]=vector_peak(py);
    [peak,valley]=vector_pv_dis(py, peak, valley);
    
    peak = vector_freq(peak);
    valley = vector_freq(valley);
    
    
    %plot(1:length(py), py, color(i)); 
    
    plot(peak, py(peak), [color(i),'o'])
    hold on
    plot(valley, py(valley), [color(i),'v'])
    
    pavr = mean(py(peak));
    vavr = mean(py(valley));
    
    %plot(1:length(, pavr, color(i));
    %plot(1:100:30000, vavr, [color(i), '--']);
end
hold off 
 %}