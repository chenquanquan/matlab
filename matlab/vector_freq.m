%排除频率太高和太低
function peak = vector_freq(peak_in)

    %20Hz
    %周期最大值2s  2s=0.05s*40
    time_max=40;
    %周期最小值0.2s  0.2s=0.05*4
    time_min=4;


%{
    %500Hz
    %周期最大值2s  2s=0.002s*1000
    time_max=1000;
    %周期最小值0.2s  0.2s=0.002*100
    time_min=100;   
%}
%{
    %200Hz
    %周期最大值2s  2s=0.005s*400
    time_max=400;
    %周期最小值0.2s  0.2s=0.005*40
    time_min=40;   
%}


    j=1;
    n=0;
    if length(peak_in) > 2
        peak(j) = peak_in(1);
        for i=2:length(peak_in)
            if peak_in(i) - peak_in(i-1) > time_max
                n = n+1;
            elseif peak_in(i) - peak_in(i-1) < time_min && peak_in(i) - peak(j) < time_min
                n = n+1;
            elseif peak_in(i) - peak_in(i-1) < time_min && peak_in(i) - peak(j) > time_max
                n = n+1;
            else
                j = j+1;
                peak(j) = peak_in(i);   
            end
        end
    else
        peak = 0;
    end
    
    fprintf('freq count:%d\n', n);