landscape = imread('paisagem.jpg');
birds = imread('passaros.jpg');
lena = imread('lena.bmp');
moon = imread('moon.jpg');
boat = imread('boat.jpg');

h = [-1 -1 -1; 0 0 0; 1 1 1];
%h = [-1 -1 -1; -1 8 -1; -1 -1 -1];
%h = repmat(1/9, 3);
%h = [0.025 0.1 0.25; 0.1 0.5 0.1; 0.025 0.1 0.025];
%h = normrnd(-1.03,4,6,6)

%% -------- CONVOLUÇÃO --------------------------------

%G = convolution(moon, h, true);
%figure, imshowpair(moon, G, 'montage')

%G = convolution(lena, h, true);
%figure, imshowpair(lena, G, 'montage')

%test = imfilter(image, h, 'conv');
%figure, imshowpair(test,image,'montage')

%% -------- AGUÇAMENTO --------------------------------

%sharpnessFilter(moon, 1, 1, 1); % aguçamento a1
%sharpnessFilter(moon, 1, 1, 2); % aguçamento a2

%% -------- EXPANSÃO DE HISTOGRAMA --------------------

%imhistexp(boat);

%% -------- EQUALIZAÇÃO DE HISTOGRAMA -----------------

imhisteq(boat);