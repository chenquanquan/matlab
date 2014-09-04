%消除离0太近的峰值
function [peak, valley] = vector_dis_line(dat, peak_in, valley_in)
%排除平均值高于某一阈值的峰值
if (lengh(peak_in) < 2)
    %error
    fprintf('vector dis line error! puls number less than 2\n');
end

ptag = 1;
for i=1:length(peak_in)
    if (peak_in(i) - peak_in(ptag) > 200)
        
    end
end

%直接排出某一阈值以下的峰值
%{
    %最小峰值
    %p_min = 1065;
    %p_min = 1100;
    
    %量化前
    %p_min = 1000000;
    %p_min = 1210000;
    
    %量化后
    %p_min = 12000;
    %p_min = 30000;
    p_min = 400000000;
    
    j=1;
    peak = 1;
    valley = 1;
    m=0;
    
    if length(peak_in) > length(valley_in)
        puls_limit = length(valley_in);
    else
        puls_limit = length(peak_in);
        end
    
    for i=2:puls_limit-1
        if dat(peak_in(i)) > p_min || dat(peak_in(i-1)) > p_min
            peak(j) = peak_in(i);
            valley(j) = valley_in(i);
            j = j+1;
        else
            m = m+1;
        end
    end
    
    fprintf('distance line count:%d\n', m);
    %{
    if m > 30
        peak = 0;
        valley = 0;
    end
    %}
%}
    
%{
    %line_value=150000;
    line_value=500000;
    %line_value=2000000;
    
    j=1;
    peak_j=1;
    valley_j=1;
    if length(peak_in) > length(valley_in)
        limit=length(valley_in);
    else
        limit=length(peak_in);
    end

    
    for i=1:limit
        if dat(peak_in(i)) > line_value
                peak(j) = peak_in(i);
            peak_j = peak_j+1;
        end
        
        if dat(valley_in(i)) < -line_value
                valley(j) = valley_in(i);
            valley_j = valley_j+1;
        end
        
        if valley_j > 1 && peak_j > 1
            j = j+1;
            valley_j = 1;
            peak_j = 1;
        end


%        if abs(dat(peak_in(i))) > line_value && abs(dat(valley_in(i))) > line_value
%            peak(j) = peak_in(i);
%            valley(j) = valley_in(i);
%            j = j+1;
%        end

    end
    %fprintf('\n');
    %fprintf('%g, ', peak);
    %fprintf('\n');
    %fprintf('length:%d\n ', length(peak));
%}