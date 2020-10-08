%% HomeWork #1_1
% Rectangle Wave using step function weighted sum
% Include labels and title for each plot.

clear all
t = -10:.01:10;

for n = -1000:1000
    t0 = n*0.01;
    if abs(t0) <= 5
        x(n+1001) = 1 - 1/5*abs(t0);
    else
        x(n+1001) = 0;
    end
end

plot(t,x)
xlabel("t")
ylabel("x(t)")
title(["HomeWork #1_1 Rectangle Wave using step function weighted sum"])
axis([-10 10 -2 2])
