function brightness_effect(img, bright, op, yuvop)

% Additive
if op == 1
    if yuvop == true
        temp = RGBYUV(img);
        yuv = zeros(size(temp));
        yuv(:,:,1) = temp(:,:,1);
        brighter = imadd(yuv, bright);
        brighter = YUVRGB(brighter);
    else
        brighter = imadd(img, bright);
    end
    imshowpair(img,brighter,'montage')
    imwrite(brighter,'brighter1.jpg')
% Multiplicative
elseif op == 2
    if yuvop == true
        temp = RGBYUV(img);
        yuv = zeros(size(temp));
        yuv(:,:,1) = temp(:,:,1);
        brighter = immultiply(yuv, bright);
        brighter = YUVRGB(brighter);
    else
        brighter = immultiply(img, bright);
    end
        imshowpair(img,brighter,'montage')
        imwrite(brighter,'brighter2.jpg')
end