function negative_effect(img, yuvop)

if yuvop == true
    temp = RGBYUV(img);
    yuv = zeros(size(temp));
    yuv(:,:,1) = temp(:,:,1);
    negative = uint8(-1*(double(yuv)-255));
    negative = YUVRGB(negative);
    imshowpair(img,negative,'montage')
    imwrite(negative,'negative2.bmp')
else
    negative = uint8(-1*(double(img)-255));
    imshowpair(img,negative,'montage')
    imwrite(negative,'negative1.bmp')
end
end