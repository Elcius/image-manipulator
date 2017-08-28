function negative_effect(img_name, op)
    if op == 0
        negative = uint8(-1*(double(img_name)-255));
        figure, imshow(negative)
    
    elseif op == 1
        temp = RGBYUV(img_name);
        yuv = zeros(size(temp));
        yuv(:,:,3) = temp(:,:,3);
        negative = uint8(-1*(double(yuv)-255));
        negative = YUVRGB(negative);
        figure, imshow(negative)
    end
end