close all;
clear;

f = imread("aerialview-washedout.tif");
whos f;

figure(1);
imshow(f);

figure(2);
imshow(f, []);

f = imread("rose.tif");
figure(3);
imshow(f);

fp = f(end:-1:1, :);
figure(4);
imshow(fp);

fs = f(1:2:end, 1:2:end);
figure(5);
imshow(fs);

figure(6);
plot(f(512, :));

figure(7);
fm = f(:, end:-1:1);
imshow(fm);