cd('C:\Users\bmenitrr015\Desktop\MIP_6SEM');
BT = imread('MRI_BrainTumor.jpg');
BTre = imresize(BT, 0.45);
title('Brain image MRI');
BTbw = rgb2gray(BTre);
BTco = imcomplement(BTbw);
figure;
subplot(1,2,1);
imshow(BTco);
title('brain MRI complemented');
[m,n] = size(BTbw);
BTco = zeros(m,n);
% initialing the for loop
for i = 1:m
    for j = 1:n
        % use the condition 
        if BTbw(i,j) <= 110  % try with defferent intensity levels in the range from 227 to 245 for better understanding
            BTco(i,j) = 255;
        else
            BTco(i,j) = 0;
        end
    end
end
subplot(1,2,2)
imshow(BTco);
title('tumor');