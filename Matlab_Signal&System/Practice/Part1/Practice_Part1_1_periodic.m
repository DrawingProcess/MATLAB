%% Practice_Part1_1
% Periodic Signal
A = 1;
w0 = 10*pi;
rho = 0.5;
t = 0:.001:1;
sq = A*square(w0*t, rho);
sa = A*sawtooth(w0*t, rho);

omega = pi/4;
n = -10:10;
x = A*square(omega*n);

hold on
plot(t,sq)
plot(t,sa)
stem(n, x)
hold off
%axis([0 1 -1.1 1.1])

