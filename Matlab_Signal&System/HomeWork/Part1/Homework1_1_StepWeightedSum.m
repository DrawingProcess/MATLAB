%% HomeWork #1_1
% Rectangle Wave using step function weighted sum
% Include labels and title for each plot.

clear all
t = -10:.001:10;
u1 = heaviside(t-5);
u2 = heaviside(t+5);
u = u2-u1;

plot(t,u)
xlabel("t")
ylabel("x(t)")
title(["HomeWork #1-1 Rectangle Wave using step function weighted sum"])
axis([-10 10 -2 2])
