function averageMxN(A, M, N)

num = 1/(M*N);  % Mask content 
h = repmat(num, M, N);

G = convolution(A, h, true);
figure, imshowpair(A, G, 'montage')

test = imfilter(A, h, 'conv');
figure, imshowpair(A, test,'montage')

end