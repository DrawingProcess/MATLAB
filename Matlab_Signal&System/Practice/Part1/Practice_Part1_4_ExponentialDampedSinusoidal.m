%% Practice_Part1_4
% exponentially damped sinusoidal signals

A = 60;
w0 = 20*pi;
phi = 0;
a = 6;
t = 0:.001:1;
expsin = A*sin(w0*t + phi).*exp(-a*t);
plot(t, expsin)