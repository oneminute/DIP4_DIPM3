% a simple program to show Fourier Serials Formula
clear;
close all;

%a = [1,2,3,4,5,6,7,8,9];
%a = [1,1,1,1,1,1,1,1,1];
a = [0,1,0,1,0,1,0,1,0,1];
%a = [1,1,1,2,1,1,1,2,1];
%a = [1:0.5:5];
%a = repmat(2, 10, 1);
%a = 2 * ones(20, 1);
b = 0;

x = [-20:0.01:20];

T = 2 * pi / 1;
w0 = 2 * pi / T;

figure(1);
l = length(a);
yr = 0;
yc = 0;
for i = 0:l - 1
    ak = a(i + 1);
    fprintf("a(%d) = %f\n", i + 1, ak);
    k = i + b;
    yr_k = a(i + 1) * cos(k * w0 * x);
    yc_k = a(i + 1) * sin(k * w0 * x);
    yr = yr + yr_k;
    yc = yc + yc_k;
    subplot(l + 1, 2, i * 2 + 1);
    plot(x, yr_k);
    subplot(l + 1, 2, i * 2 + 2);
    plot(x, yc_k);
end

figure(2);
subplot(3, 1, 1);
plot(x, yr);
subplot(3, 1, 2);
plot(x, yc);
subplot(3, 1, 3);
plot(x, abs(yr + 1i * yc));

period = -T/2*2:0.01:T/2*2;
l = length(period);
fprintf("length of period = %f\n", l);
ak = 0;
ak_r = 0;
ak_c = 0;
for k = 0:length(a) - 1
    for i = 0:l - 1
        xt_r = yr(i + 1) * cos(-k * w0 * x(i + 1));
        xt_c = yc(i + 1) * sin(-k * w0 * x(i + 1));
        ak_r = ak_r + xt_r;
        ak_c = ak_c + xt_c;
    end
    ak_r = ak_r / l;
    ak_c = ak_c / l;
    ak = abs(ak_r) + abs(ak_c);
    %fprintf('ak_r = %f\n', ak_r);
    %fprintf('ak_c = %f\n', ak_c);
    fprintf('a(%d) = %f\n', k, ak);
end

