function gaussian_filter(A, N, sigma, op)

% Generate Gaussian mask
ind = -floor(N/2) : floor(N/2);
[X, Y] = meshgrid(ind, ind);

if op == 1      % Create Gaussian Mask
    h = exp(-(X.^2 + Y.^2) / (2*(sigma^2)));
    
elseif op == 2 % Create derivative Gaussian Mask
    % Derivative in X direction emphasizes vertical edges
    h = -X .* exp(-(X.^2 + Y.^2)/(2*(sigma^2))) ;
end

% Normalize so that total area (sum of all weights) is 1
h = h / sum(h(:));

disp(h)
G = convolution(A, h, true);
figure, imshowpair(A, G, 'montage')

test = fspecial('gaussian',[N N], sigma);
Ig = imfilter(A,test,'same');
figure, imshowpair(A, Ig,'montage')

end