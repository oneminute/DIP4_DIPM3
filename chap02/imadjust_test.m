close all;
clear;

img = imread("barcode_01.jpg");

img = im2gray(img);



img2 = imadjust(img, [], [], 0.25);

n = 13;
img1 = medfilt2(img2, [n,n]);

figure(1);
imshow(img1);
figure(2);
imshow(img2);
figure(3);
imshow(img);