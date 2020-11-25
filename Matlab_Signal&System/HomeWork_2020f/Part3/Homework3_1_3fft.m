%% HomeWork #3_1
% 3.104 [15] Use MATLAB’s fft command to repeat Problem 3.48 (e)

clear all

n = -5:4; % N = 10
for i=0:9
    if (0 <= i) && (i <= 5)
        x = 1/5*i;
    else
        x = 0;
    end
    y(i+1) = x;
end
X=fft(y)/10;
mag_X =abs(X);
phase_X =angle(X);

plot(n, mag_X)
xlabel("x")
ylabel("mag_X")
title(["HomeWork #3_1_e mag_X"])
axis([-5 4 -1 1])

%plot(n, phase_X)
%xlabel("x")
%ylabel("phase_X")
%title(["HomeWork #3_1_e phase_X"])
%axis([-5 4 -4 4])