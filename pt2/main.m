butterfly = imread('monarch_in_may.jpg');
castle = imread('castelo.jpg');

h = [-1 -1 -1; 0 0 0; 1 1 1];
%h = [-1 -1 -1; -1 8 -1; -1 -1 -1];
%h = repmat(1/9, 3);
%h = [0.025 0.1 0.25; 0.1 0.5 0.1; 0.025 0.1 0.025];
%h = normrnd(-1.03,4,6,6)

%% -------- CONVOLUÇÃO --------------------------------

%G = convolution(butterfly, h);
%figure, imshowpair(butterfly, G, 'montage')

%test = imfilter(butterfly, h, 'conv');
%figure, imshowpair(butterfly, test,'montage')
%figure, imshowpair(G, test,'montage')

%test2 = rgb2gray(butterfly);
%G = convolution(test2, h);
%figure, imshowpair(test2, G, 'montage');

%% -------- AGUÇAMENTO --------------------------------

%a = 2;     % mask type
%C = 1;
%D = 1;
%sharpnessFilter(butterfly, C, D, a); % aguçamento a = 1,2

%% -------- DETECÇÃO DE BORDAS ------------------------

%b = 4;     % mask type
%edgeDetectionFilter(castle, b);      % detecção b = 1,2,3,4

%% -------- RELEVO ------------------------------------

%c = 3;     % mask type
%embossFilter(castle, c);      % relevo c = 1,2,3

%% -------- GAUSSIANO ---------------------------------

%N = 5;      % Size of Gaussian mask
%sigma = 2;
%gaussianFilter(castle, N, sigma, 2);    

%% -------- EXPANSÃO DE HISTOGRAMA --------------------

boat = imread('boat.jpg');
imhistexp(boat);

%% -------- EQUALIZAÇÃO DE HISTOGRAMA -----------------

%imhisteq(boat);