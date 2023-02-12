close all;
clear;

img1 = imread("circuitboard-saltandpep.tif");
figure(1);
h1 = imhist(img1);
bar(1:1:256, h1(1:1:256));

img1_f = medfilt2(img1);
figure(2);
h1_f = imhist(img1_f);
bar(1:1:256, h1_f(1:1:256));

figure(3);
imshow(img1);
figure(4);
imshow(img1_f);
