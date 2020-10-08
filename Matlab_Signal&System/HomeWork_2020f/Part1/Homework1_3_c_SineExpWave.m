%% HomeWork #1_3_c
% Sine Exp Wave
% Include labels and title for each plot.

clear all
t = [-2:.01:2]/1000;

x1 = 10*sin(2000*pi*t - pi*3);
x2 = exp(-500*t);

x = x1.*x2;
plot(t,x)
xlabel("t")
ylabel("x(t)")
title(["HomeWork #1_3_c Sine Exp Wave"])