function ret = imhistexp(image)
    aux = zeros(size(image));
    for i = 1:3,
        [counts, binLoc] = imhist(image(:,:,i));

        rmin = find(counts>0, 1, 'first');
        rmax = find(counts>0, 1, 'last');
        
        aux(:,:,i) = round((double(image(:,:,i) - rmin)/double(rmax - rmin))*255.0) +1;
    end
    
    ret = uint8(aux);
end