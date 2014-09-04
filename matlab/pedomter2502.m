clc
clear


%=========================================
%            kal timer 217Hz  Start
%=========================================
dat1=load('E:\workspace\soft\mtlabdata\Record_step1.txt');
dat2=load('E:\workspace\soft\mtlabdata\Record_step2.txt');
dat3=load('E:\workspace\soft\mtlabdata\Record_step3.txt');
dat4=load('E:\workspace\soft\mtlabdata\Record_step4.txt');
dat5=load('E:\workspace\soft\mtlabdata\Record_step5.txt');
dat6=load('E:\workspace\soft\mtlabdata\Record_step6.txt');
dat7=load('E:\workspace\soft\mtlabdata\Record_step7.txt');
dat8=load('E:\workspace\soft\mtlabdata\Record_step8.txt');
dat9=load('E:\workspace\soft\mtlabdata\Record_step9.txt');
dat10=load('E:\workspace\soft\mtlabdata\Record_step10.txt');
dat11=load('E:\workspace\soft\mtlabdata\Record_step11.txt');
dat12=load('E:\workspace\soft\mtlabdata\Record_step12.txt');
dat13=load('E:\workspace\soft\mtlabdata\Record_step13.txt');
dat14=load('E:\workspace\soft\mtlabdata\Record_step14.txt');
%dat15=load('E:\workspace\soft\mtlabdata\Record_step15.txt');
dat16=load('E:\workspace\soft\mtlabdata\Record_step16.txt');
dat17=load('E:\workspace\soft\mtlabdata\Record_step17.txt');


acc1=load('E:\workspace\soft\mtlabdata\acc1.txt');
acc2=load('E:\workspace\soft\mtlabdata\acc2.txt');
acc3=load('E:\workspace\soft\mtlabdata\acc3.txt');
acc4=load('E:\workspace\soft\mtlabdata\acc4.txt');
acc5=load('E:\workspace\soft\mtlabdata\acc5.txt');

accb1=load('E:\workspace\soft\mtlabdata\acc1\acc1.txt');
accb2=load('E:\workspace\soft\mtlabdata\acc1\acc2.txt');
accb3=load('E:\workspace\soft\mtlabdata\acc1\acc3.txt');
accb4=load('E:\workspace\soft\mtlabdata\acc1\acc4.txt');
accb5=load('E:\workspace\soft\mtlabdata\acc1\acc5.txt');

accc1=load('E:\workspace\soft\mtlabdata\acc2\acc1.txt');
accc2=load('E:\workspace\soft\mtlabdata\acc2\acc2.txt');
accc3=load('E:\workspace\soft\mtlabdata\acc2\acc3.txt');

accd1=load('E:\workspace\soft\mtlabdata\acc20hz\1.txt');
accd2=load('E:\workspace\soft\mtlabdata\acc20hz\2.txt');
accd3=load('E:\workspace\soft\mtlabdata\acc20hz\3.txt');

accd5=load('E:\workspace\soft\mtlabdata\acc20hz\5.txt');
accd6=load('E:\workspace\soft\mtlabdata\acc20hz\6.txt');

accd8=load('E:\workspace\soft\mtlabdata\acc20hz\8.txt');
accd9=load('E:\workspace\soft\mtlabdata\acc20hz\9.txt');


filter1=load('E:\workspace\soft\mtlabdata\filter\1.txt');
filter2=load('E:\workspace\soft\mtlabdata\filter\2.txt');
filter3=load('E:\workspace\soft\mtlabdata\filter\3.txt');
filter4=load('E:\workspace\soft\mtlabdata\filter\4.txt');
filter5=load('E:\workspace\soft\mtlabdata\filter\5.txt');

true_count = [102, 0, 103, 103, 112, 0, 100, 107];
total = [dat1, dat2, dat3, dat4];
compare = total;
%====================
% 滤波
%====================
%采样频率 217Hz
fs=21;
%巴氏低通滤波器得到形状
Wp = 4/fs; Ws = 10/fs;    %截止频率5Hz,阻带截止频率10Hz
[n,Wn] = buttord(Wp,Ws, 1, 50);  %阻带衰减大于30db,通带纹波小于1db
[a,b]=butter(n,Wn);    %设计Butterworth低通滤波器

fprintf('a=');
fprintf(' %8.10f,', a);
fprintf('\n');
fprintf('b=');
fprintf(' %8.10f,', b);
fprintf('\n');
%=========================================
%            kal timer 200Hz  Start
%=========================================

total = [dat9];
[cow,col] = size(total);


    x=total(:,1);
    y=total(:,2);
    z=total(:,3);
    
    x=x/100;
    y=y/100;
    z=z/100;

    py=vector_norm([x, y, z]);
    
    fx=filter(a,b,x);
    fy=filter(a,b,y);
    fz=filter(a,b,z);
    
    %{
    fx=fx-mean(fx);
    fy=fy-mean(fy);
    fz=fz-mean(fz);
    pmy = vector_norm([fx, fy, fz]);
    %}

    
    
    %
    % Acc entry
    %
    %py = [acc1,acc2,acc3];
    %py = [accb5];
    %py = [accd1, accd2, accd3, accd5,accd6, accd8, accd9];
    %py = [accd8, accd9];
    py=filter(a,b,py);
    
    
    %py=[filter5];
    
    fprintf('%.0f,', py);
    
    figure (1)
    plot(1:length(py), py, 'k.');
    hold on;
    plot(1:length(py), py, 'k');

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
   %fprintf('实际的步数%d， 误差%d\n', true_count(i),length(peak) - true_count(i) );
    fprintf('\n');
    hold off
    
    
    [mx, my, mz] = vector_mean(x, y, z);
    mx = mx.';
    my = my.';
    mz = mz.';
    %pmy = vector_norm([mx, my, mz])
    pmy = mx.^2+my.^2+mz.^2;
    pmy = filter(a, b, pmy);
    
    figure(2)
    plot(1:length(pmy), pmy, 'k.');
    hold on
    plot(1:length(pmy), pmy, 'k');
    hold off
