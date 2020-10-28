%% HomeWork #2_1_2.34(b)
% m[n]=x[n]*y[n]
% oldparam = sympref('HeavisideAtOrigin',1);
% x = heaviside(t-5) - heaviside(t+2);
% y = heaviside(t-3) - 2*heaviside(t+1) + heaviside(t+5);

clear all

x = [ones(1,7), zeros(1,3)];
y = [zeros(1,2), ones(1,4), -ones(1,4)];
m = conv(x, y);

t = -10:1:8;
stem(t, m)
xlabel('n')
ylabel('m[n]=x[n]*y[n]')
title('HomeWork #2-1-2.34(b)    m[n]=x[n]*y[n]')
axis([-10 7 -4 4])