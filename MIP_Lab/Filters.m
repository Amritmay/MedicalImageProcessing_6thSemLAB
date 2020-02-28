cd('C:\Users\Biomedical Engg\Desktop');
Image = imread('brain malignant tumor.jpg');
I = rgb2gray(Image);
imshow(I);


%%Adding noise to the image and calculating PSNRs
i1 = imnoise(I, 'gaussian', 0.2, 0.05);
i2 = imnoise(I, 'salt & pepper', 0.1);
i3 = imnoise(I, 'speckle', 0.05);
subplot(1,3,1)
imshow(i1)
title('Gaussian noise');
subplot(1,3,2)
imshow(i2)
title('salt and pepper noise');
subplot(1,3,3)
imshow(i3)
title('Speckle noise');

[psnr1] = psnr(I, i1);
[psnr2] = psnr(I, i2);
[psnr3] = psnr(I, i3);

%%Creating a 3x3, 5x5 average filters
m1 = 1/9*ones(3,3);
m2 = 1/25*ones(5,5);


%%Mean filtering process on original image
filturedI_3 = conv2(I, m1);
filturedI_5 = conv2(I, m2);
subplot(1,2,1)
imshow(filturedI_3);
subplot(1,2,2)
imshow(filturedI_5);

%%Mean filtering on noisy images
filturedI1 = conv2(i1, m1);
filturedI2 = conv2(i2, m1);
filturedI3 = conv2(i3, m1);
subplot(1,3,1)
imshow(filturedI1)
subplot(1,3,2)
imshow(filturedI2)
subplot(1,3,3)
imshow(filturedI3)



%%Median filtering on noisy images
filtured_I1 = medfilt2(i1);
filtured_I2 = medfilt2(i2);
filtured_I3 = medfilt2(i3);
subplot(1,3,1)
imshow(filtured_I1)
subplot(1,3,2)
imshow(filtured_I2)
subplot(1,3,3)
imshow(filtured_I3)

[psnr_1] = psnr(I, filtured_I1);
[psnr_2] = psnr(I, filtured_I2);
[psnr_3] = psnr(I, filtured_I3);
