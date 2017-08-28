function ret = brightness_effect(img, bright, op)

% Additive
if op == 1
    brighter = imadd(img, bright);
    imshowpair(img,brighter,'montage')
    imwrite(brighter,'brighter1.jpg')
    ret = brighter
% Multiplicative
elseif op == 2
    brighter = immultiply(img, bright);
    imshowpair(img,brighter,'montage')
    imwrite(brighter,'brighter2.jpg')
    ret = brighter

end