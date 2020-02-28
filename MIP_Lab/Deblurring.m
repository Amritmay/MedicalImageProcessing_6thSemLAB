cd('C:\Users\Biomedical Engg\Desktop');
Image  = imread('brain malignant tumor.jpg');
%imshow(Image)

I = rgb2gray(Image);
%imshow(I)

H = fspecial('disk',4);
blurred = imfilter(I,H,'replicate');
%imshow(blurred);

%%
s = I - blurred;
s = 0.3*s;
I1 = I + s;
%imshow(I1)

subplot(2,3,1)
imshow(I)
title('Original image');
subplot(2,3,2)
imshow(blurred)
title('Blurred image');
subplot(2,3,3)
imshow(I1)
title('Deblurred image');

%%
s1 = I - blurred;
s1 = 2*s1;
I2 = I + s1;
%imshow(I1)

subplot(2,3,4)
imshow(I)
title('Original image');
subplot(2,3,5)
imshow(blurred)
title('Blurred image');
subplot(2,3,6)
imshow(I2)
title('Deblurred image');