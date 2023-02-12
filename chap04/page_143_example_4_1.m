t = [-4*pi:0.1:4*pi];

y = sinc(t);

figure(1);
subplot(2,1,1);
plot(t, y);
subplot(2,1,2);
plot(t, abs(y));
%subplot(3,1,3);
%plot(t, abs(F_u));