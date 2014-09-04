function [ iarry ] = vector_inter(iarry, time)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    for n = 1:time
        arry = iarry;
        for i=1:length(arry)
            iarry(i) = 0;
            for j=1:i
                iarry(i) = iarry(i) + arry(j);
            end
        end
    end
end

