close all;
clear;

x_interval = 0.01 * pi;
x_range = [-5:x_interval:5];
delta_T = pi;

y = zeros(length(x_range), 1);
last_t = x_range(1);
for t = 1:length(x_range)
    if (t - last_t >= delta_T)
        last_t = t;
        m = cos(x_range(t));
        y(t) = m;
    end
end

figure(1);
plot(x_range, cos(x_range));
hold on;
stem(x_range, y);
