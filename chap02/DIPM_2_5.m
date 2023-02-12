%DIPUM 2.4

close all;
clear;

f = imread("testpattern2048.tif");
imshow(f, []);

res = round(800*2.56/1.7);
imwrite(f, "pattern.tif", "compression", "none", "Resolution", res);