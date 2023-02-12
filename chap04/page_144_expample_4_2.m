close all;
clear;

T = 2;
delta_T = 2;

n_range = -500:1:500;
t_range = -10:0.1:10;

%figure(1);
s_n = complex(zeros(length(n_range), length(t_range)));
for n = 1:length(n_range)
    s = exp(1i * 2 * pi * n_range(n) / delta_T * t_range);
    %fprintf("left length = %d, right length = %d\n", length(s_n(n,:)), length(s));
    s_n(n,:) = s;
end
s_deltaT = sum(s_n, 1) / delta_T;

figure(1);
plot(t_range, real(s_deltaT));

u = -pi*2:0.01:pi*2;
F_u = zeros(1, length(u));

for i = 1:length(u)
    e_u_t = exp(-1i * 2 * pi * u(i) * t_range);
    f = s_deltaT .* e_u_t;
    F_u(i) = sum(f);
end

figure(2);
subplot(3,1,1);
plot(u, real(F_u));
title('Real Part of F(u)');

subplot(3,1,2);
plot(u, imag(F_u));
title('Imagine Part of F(u)');

subplot(3,1,3);
plot(u, abs(F_u));
title('Magnitude of F(u)');

xline(1 / delta_T, 'color', 'red');
