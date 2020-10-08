%% HomeWork #1_2
% Cosine Wave
% Include labels and title for each plot.

clear all
t = -30:.01:30;

for n = -3000:3000
    t0 = n*0.01;
    if abs(t0) <= 20
        x(n+3001) = cos(0.05*pi*t0) + 1;
    else
        x(n+3001) = 0;
    end
end

plot(t,x)
xlabel("t")
ylabel("x(t)")
title(["HomeWork #1-2 Cosine Wave"])
axis([-30 30 -1 3])
