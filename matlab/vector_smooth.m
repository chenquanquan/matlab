%Æ½»¬²¨ĞÎ
function average = vector_smooth(input)
    len = length(input);
    
    for i=1:len-10
        average(i) = input(i) + input(i+1) + input(i+2) + input(i+3) + input(i+4) + input(i+5) + input(i+6)+ input(i+7) + input(i+8) + input(i+9) + input(i+10);
    end