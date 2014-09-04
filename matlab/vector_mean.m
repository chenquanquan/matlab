%从向量中删除期望
function [mx, my, mz]=vector_mean(x, y, z)
    len = length(x);
    lmean = 80;
    
    for i=1:len-lmean
        xsum = sum(x(i:(i+lmean)))/lmean;
        ysum = sum(y(i:(i+lmean)))/lmean;
        zsum = sum(z(i:(i+lmean)))/lmean;
        
        mx(i:i+lmean) = x(i:i+lmean) - xsum;
        my(i:i+lmean) = y(i:i+lmean) - ysum;
        mz(i:i+lmean) = z(i:i+lmean) - zsum;
    end
    %{
    mx = x;
    my = y;
    mz = z;
    %}