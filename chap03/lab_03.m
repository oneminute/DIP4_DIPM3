close all;
clear;

f = imread("currency$100.tif");

fbp6 = bitand(f, 0b00100000);
fbp7 = bitand(f, 0b01000000);
fbp8 = bitand(f, 0b10000000);

figure(1);
subplot(5,1,1);
imshow(f);

subplot(5,1,2);
imshow(fbp8);

subplot(5,1,3);
imshow(fbp7);

subplot(5,1,4);
imshow(fbp6);

subplot(5,1,5);
imshow(fbp6 + fbp7 + fbp8);
