function dat_diff=vector_diff(dat)
    average_count=1;
    for count=2:length(dat)
        dat_average(average_count) = dat(count) - dat(count-1);
        average_count=average_count+1;
    end