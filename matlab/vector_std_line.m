%
function standard = vector_std(dat)
    avr = 0;
    for i = 1:length(dat)
        avr = avr + dat(i);
    end
    avr = avr / length(dat);
    
    standart = 0;
    for i = 1:length(dat)
        standart = standart + dat(i)-avr
    end