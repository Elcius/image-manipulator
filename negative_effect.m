function ret = negative_effect(img, op)

if op == 1
    negative = uint8(-1*(double(img)-255));
    imshowpair(img,negative,'montage')
    imwrite(negative,'negative1.bmp')

elseif op == 2
    temp = RGBYUV(img);
    yuv = zeros(size(temp));
    yuv(:,:,3) = temp(:,:,3);
    negative = uint8(-1*(double(yuv)-255));
    negative = YUVRGB(negative);
    imshowpair(img,negative,'montage')
    imwrite(negative,'negative2.bmp')
end

ret = negative
end