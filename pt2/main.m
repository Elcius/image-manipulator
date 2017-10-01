butterfly = imread('monarch_in_may.jpg');
castle = imread('castelo.jpg');

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

%a = 2;     % mask type
%C = 1;
%D = 1;
%sharpnessFilter(butterfly, C, D, a); % agu�amento a = 1,2

%% -------- DETEC��O DE BORDAS ------------------------

%b = 4;     % mask type
%edgeDetectionFilter(castle, b);      % detec��o b = 1,2,3,4

%% -------- RELEVO ------------------------------------

%c = 3;     % mask type
%embossFilter(castle, c);      % relevo c = 1,2,3

%% -------- GAUSSIANO ---------------------------------

N = 5;      % Size of Gaussian mask
sigma = 2;
gaussianFilter(castle, N, sigma, 2);    

%% -------- EXPANS�O DE HISTOGRAMA --------------------

%imhistexp(boat);

%% -------- EQUALIZA��O DE HISTOGRAMA -----------------

%imhisteq(boat);