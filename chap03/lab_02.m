close all;
clear;

f = imread("aerialview-washedout.tif");
ff = im2double(f);
fp = ff.^5;

figure(1);
imshow(f);

figure(2);
imshow(fp);