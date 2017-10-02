butterfly = imread('monarch_in_may.jpg');
castle = imread('castelo.jpg');
lena = imread('lena_mono.jpg');

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

%a = 2;     % mask type
%C = 1;
%D = 1;
%sharpness_filter(butterfly, C, D, a);      % aguçamento a = 1,2

%% -------- DETECÇÃO DE BORDAS ------------------------

%b = 4;     % mask type
%edge_detection_filter(castle, b);      % detecção b = 1,2,3,4

%% -------- RELEVO ------------------------------------

%c = 1;     % mask type
%emboss_filter(castle, c);      % relevo c = 1,2,3

%% -------- GAUSSIANO ---------------------------------

%N = 5;      % Size of Gaussian mask
%sigma = 2;
%gaussian_filter(castle, N, sigma, 2);    

%% -------- MÉDIA MxN ---------------------------------

%M = 5;
%N = 5;
%averageMxN(castle, M, N);

%% -------- COMPARAÇÕES POR MÉDIA  --------------------

%M = 5;
%N = 5;
%result = average_comparisons(castle, M, N);

%M = 10;
%N = 1;
%average_comparisons(result, M, N);

%% -------- MEDIAN ------------------------------------

%mask_size = 3;    % median (3,5,...)
%median_filter(lena, mask_size);

%% -------- EXPANSÃO DE HISTOGRAMA --------------------

%imhistexp(boat);

%% -------- EQUALIZAÇÃO DE HISTOGRAMA -----------------

%imhisteq(boat);