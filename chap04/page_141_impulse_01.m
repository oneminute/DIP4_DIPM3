close all;
clear;

t_range = (-5:0.02:5)';

f = cos(t_range);

figure(1);

delta_T = 0.1;
pulse_train = zeros(length(t_range), 1);
last_t = t_range(1);
pulse_train(1) = 1;
for i = 2:length(t_range)
    if (t_range(i) - last_t >= delta_T)
        last_t = t_range(i);
        pulse_train(i) = 1;
    end
end

samples = zeros(length(t_range), 1);
for i = 1:length(pulse_train)
    samples(i) = f(i) * pulse_train(i);
end

plot(t_range, f);
hold on;
stem(t_range, pulse_train);
hold on;
stem(t_range, samples);
