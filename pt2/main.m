birds = imread('passaros.jpg');
lena = imread('lena.bmp');
moon = imread('moon.jpg');
boat = imread('boat.jpg');

h = [-1 -1 -1; 0 0 0; 1 1 1];
%h = [-1 -1 -1; -1 8 -1; -1 -1 -1];
%h = repmat(1/9, 3);
%h = [0.025 0.1 0.25; 0.1 0.5 0.1; 0.025 0.1 0.025];
%h = normrnd(-1.03,4,6,6)

%% -------- CONVOLU��O --------------------------------

%G = convolution(moon, h, true);
%figure, imshowpair(moon, G, 'montage')

%G = convolution(lena, h, true);
%figure, imshowpair(lena, G, 'montage')

%test = imfilter(image, h, 'conv');
%figure, imshowpair(test,image,'montage')

%% -------- AGU�AMENTO --------------------------------

%sharpnessFilter(moon, 1, 1, 1); % agu�amento a1
%sharpnessFilter(moon, 1, 1, 2); % agu�amento a2