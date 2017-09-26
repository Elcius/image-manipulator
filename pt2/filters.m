birds = imread('passaros.jpg');
lena = imread('lena.bmp');
moon = imread('moon.jpg');

%h = [-1 -1 -1; 0 0 0; 1 1 1];
%h = [-1 -1 -1; -1 8 -1; -1 -1 -1];
%h = repmat(1/9, 3);
%h = [0.025 0.1 0.25; 0.1 0.5 0.1; 0.025 0.1 0.025];

h = [-3.3605   -1.1853   -4.4497    1.1321    4.3346    3.2197;
     -0.1395   -0.6776   -5.3309   -6.8098   -3.3532   -0.1736;
      2.0878   -4.1886   -1.3939   -4.9008    2.4705    2.4772;
      0.5088    4.6618   -2.0411   -0.2218    4.5518   -0.2524;
      1.7555   -1.0047    3.7493   -2.4215    0.2539   -2.6896;
     -1.4809    1.7159    1.3943    4.1304    5.4635    0.4038];

%h = normrnd(-1.03,4,6,6)

G = convolution(moon, h, true);
figure, imshowpair(moon, G, 'montage')

G = convolution(lena, h, true);
figure, imshowpair(lena, G, 'montage')

%test = imfilter(image, h, 'conv');
%figure, imshowpair(test,image,'montage')