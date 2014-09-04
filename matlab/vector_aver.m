%得到分布特征值
function average = vector_aver(dat, peak_in, valley_in)
    limit = 2000000;

    if 1
    feature(1)=var([dat(peak_in(1)) dat(peak_in(2)) dat(peak_in(3))]);
    feature(2)=var([dat(peak_in(2)) dat(peak_in(3)) dat(peak_in(4))]);
    
    for i=3:length(peak_in)-2
        feature(i) = var([dat(peak_in(i-2):peak_in(i+2))]);
    end
    end
    fprintf('%8.0f, ', sqrt(feature));
    fprintf('\n');
    
    if 0
    feature(1)=vector_std([dat(peak_in(1) : peak_in(3))]);
    feature(2)=vector_std([dat(peak_in(2) : peak_in(4))]);
    
    for i=3:length(peak_in)-2
        feature(i) = vector_std([dat(peak_in(i-2):peak_in(i+2))]);
    end
    end
    
    average = feature;
         
    if 1
    j=1;
    for i=1:length(feature)
        if (feature(i) < limit)
            average(j) = feature(i);
            j = j+1;
        end
    end
    fprintf ('length: %d\n', length(average));
    end