function ret = histogram_equalize(counts, len)
    k = 7/(len(1)*len(2));
    temp = zeros(size(counts));
    
    for r = 1:max(size(counts)),
        newpos = round(k*sum(counts(1:r))) +1;
        temp(newpos) = temp(newpos) + counts(r);
    end
    
    ret = temp;
end