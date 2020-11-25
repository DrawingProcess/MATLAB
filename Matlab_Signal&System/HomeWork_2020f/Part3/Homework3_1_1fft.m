%% HomeWork #3_1
% 3.104 [15] Use MATLAB’s fft command to repeat Problem 3.48 (a,c,e)

clear all

n=0:16; % N = 17
x=cos(6*n*pi/17+pi/3);
X=fft(x)/17;
mag_X =abs(X);
phase_X =angle(X);

%plot(n-8, mag_X)
%xlabel("x")
%ylabel("mag_X")
%title(["HomeWork #3_1_a mag_X"])
%axis([-8 8 -3 3])

plot(n-8, phase_X)
xlabel("x")
ylabel("phase_X")
title(["HomeWork #3_1_a phase_X"])
axis([-8 8 -3 3])
