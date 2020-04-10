%% Practice_Part1_3
% sinusoidal signals

A = 4;
w0 = 20*pi;
phi = pi/6;
t = 0:.001:1;
t_ = 0:.001:1;
cosine = A*cos(w0*t + phi);
omega = 2*pi/12; %angular frequency
n = -10:10;
cosine_descrete = A*cos(omega*n);

hold on
plot(t, cosine)
plot(t_, cosine_descrete)
hold off
axis([0 10 0 10])