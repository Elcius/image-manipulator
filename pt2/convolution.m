function ret = convolution(A, h, crop)
    A = double(A);
    h = double(h);
    
    % Rebatimento
    hr = flip(fliplr(h));

    % Expansion by zeros
    newsize = size(hr);
    newsize = newsize(1:2);
    aux = size(A);
    aux = aux(1:2);
    newsize = (newsize -[1 1])*2 + aux;
    newsize = [newsize 3];
    B = zeros(newsize);

    % Calculating temporary axis
    begin = size(hr);
    begin = begin(1:2);
    endin = aux + begin -[1 1];
    B(begin(1):endin(1), begin(2):endin(2), :) = A(:,:,:);
    G = zeros(endin(1), endin(2), 3);

    % Convolution loop
    for i = 1:endin(1),
        for j = 1:endin(2),
            temp = B(i:(begin(1)-1) +i, j:(begin(2)-1) +j, :);
            G(i,j,1) = sum(sum(hr.*temp(:,:,1)));
            G(i,j,2) = sum(sum(hr.*temp(:,:,2)));
            G(i,j,3) = sum(sum(hr.*temp(:,:,3)));
        end
    end
    
    % Crop
    if crop == true
        G = G(1:endin(1)-(begin(1)-1), 1:endin(2)-(begin(2)-1), :);
    end
    
    ret = uint8(G);
end