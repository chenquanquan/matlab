%ÕÒ³ö·å¹È
function [peak, valley] = vector_peak(dat)
    valley=find(diff(sign(diff(dat)))>0)+1;
    peak=find(diff(sign(diff(dat)))<0)+1;
    
    %fprintf('%d\n', length(peak));
    %fprintf('%g, ', peak);
    %fprintf('\n');