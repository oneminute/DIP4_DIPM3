%DIPUM 2.4

close all;
clear;

f = imread("chest-xray.tif");
h = imshow(f, []);

imwrite(f, "chest-xray_q0.jpg", "Quality", 0);
imwrite(f, "chest-xray_q50.jpg", "Quality", 50);
imwrite(f, "chest-xray_q100.jpg", "Quality", 100);

imfinfo("chest-xray_q0.jpg")
imfinfo("chest-xray_q50.jpg")
imfinfo("chest-xray_q100.jpg")

figure, imshow("chest-xray_q0.jpg");
figure, imshow("chest-xray_q50.jpg");
figure, imshow("chest-xray_q100.jpg");