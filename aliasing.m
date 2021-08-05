t = [0:0.05:1];      %20Hz sampling
a = sin(2*pi*2*t);   %2Hz sine wave
b = sin(2*pi*18*t);  %18Hz sine wave
plot(t, a, 'bo');
hold on;
plot(t, b, 'ro');

T = [0:0.001:1];     %1000Hz sampling frequency
A = sin(2*pi*2*T);
B = sin(2*pi*18*T);
% plot for 1000Hz sampling frequency
plot(T, A, 'b');
plot(T, B, 'r');
legend({'2Hz @ 20 Hz f_s', '18Hz @ 20 Hz f_s', '2Hz @ 1000 Hz f_s', '18Hz @ 1000 Hz f_s'})
