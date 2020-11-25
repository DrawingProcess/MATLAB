%% HomeWork #3_1
% 3.104 [15] Use MATLAB’s fft command to repeat Problem 3.48 (c)

clear all

n = -5:6; % N = 12
x = 0;
for i=0:11
    impulse1 = n==2*i;
    impulse2 = n==(-3)*i;
    x = x + (impulse1 + impulse2)*power(-1, i);
end
X=fft(x)/12;
mag_X =abs(X);
phase_X =angle(X);

%plot(n, mag_X)
%xlabel("x")
%ylabel("mag_X")
%title(["HomeWork #3_1_c mag_X"])
%axis([-5 6 -1 1])

plot(n, phase_X)
xlabel("x")
ylabel("phase_X")
title(["HomeWork #3_1_c phase_X"])
axis([-5 6 -4 4])