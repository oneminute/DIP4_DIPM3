clear;
close all;

t = -5:0.01:5;

w = 3;  % frequency of the original signal

% we can use lots of different f(t)s
%f_t = ones(length(t), 1)';
f_t = cos(t * w * 2 * pi);

u = -pi*2:0.01:pi*2;
F_u = zeros(1, length(u));

for i = 1:length(u)
    e_u_t = exp(-1i * 2 * pi * u(i) * t);
    f = f_t .* e_u_t;
    F_u(i) = sum(f);
end

figure(1);
subplot(3,1,1);
plot(u, real(F_u));
title('Real Part of F(u)');

subplot(3,1,2);
plot(u, imag(F_u));
title('Imagine Part of F(u)');

subplot(3,1,3);
plot(u, abs(F_u));
title('Magnitude of F(u)');

xline(w, 'color', 'red');