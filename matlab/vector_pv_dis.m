%排除峰峰值太小的
function [peak, valley] = vector_pv_dis(dat, peak_in, valley_in)

    %最小峰峰值
    %pv_min = 500000;
    %pv_min = 60000;
    %pv_min = 50000;
    %量化前
   % pv_min = 10000;
    %pv_min = 36000;
    %pv_min = 10000;
    
    %量化后
    %{
    pv_min = 100;
    %}
    %pv_min = 10000000;
    
    %new filter
    %pv_min = 90000;
    %pv_min = 30000;
    pv_min = 150000;
    
    j=1;
    peak = 1;
    valley = 1;
    
    
    if length(peak_in) > length(valley_in)
        puls_limit = length(valley_in);
    else
        puls_limit = length(peak_in);
    end
%{
    if length(peak_in) > 2
        for i=2:puls_limit-1
            if dat(peak_in(i)) - dat(valley_in(i)) > pv_min && dat(peak_in(i)) - dat(valley_in(i-1)) > pv_min
                peak(j) = peak_in(i);
                valley(j) = valley_in(i);
                j = j+1;
            end
        end
    end
 %}
    if length(peak_in) > 2
        for i=2:puls_limit-1
            if dat(peak_in(i)) - dat(valley_in(i)) > pv_min || dat(peak_in(i)) - dat(valley_in(i-1)) > pv_min
                peak(j) = peak_in(i);
                valley(j) = valley_in(i);
                j = j+1;
            end
        end
    end
    fprintf('pv distance count:%d\n', length(peak_in) - length(peak));