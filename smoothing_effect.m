function smoothing_effect(img_name, op)
    % Avarage
    if op == 1
        H = fspecial('average',[3 3]);
        smoothed_av = imfilter(img_name,H,'replicate');
        imshowpair(img_name,smoothed_av,'montage')

    % Median
    elseif op == 2
        R = img_name(:,:,1);
        G = img_name(:,:,2);
        B = img_name(:,:,3);

        smoothed_med(:,:,1) = medfilt2(R);
        smoothed_med(:,:,2) = medfilt2(G);
        smoothed_med(:,:,3) = medfilt2(B);

        imshowpair(img_name,smoothed_med,'montage')
    end
end