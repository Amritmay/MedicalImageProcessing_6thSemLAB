cd('C:\Users\bmenitrr015\Desktop\MIP_6SEM');
BT = imread('MRI_BrainTumor.jpg');
%figure;
%imshow(BT);
BTre = imresize(BT, 0.45);
figure;
s1 =subplot(1,2,1)
imshow(BTre);
title('Brain image MRI');
%imtool(BTre);
tumor = [145 180 60 65] ;
BTcr = imcrop(BTre, tumor );
s2=subplot(1,2,2)
imshow(BTcr);
title('Tumor');
linkaxes([s1,s2])