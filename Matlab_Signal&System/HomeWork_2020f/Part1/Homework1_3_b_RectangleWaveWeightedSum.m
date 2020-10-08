%% HomeWork #1_3_b
% Rectangle Wave using step function weighted sum
% Include labels and title for each plot.

clear all
t = -10:10;
u1 = heaviside(t+5);
u2 = heaviside(t+3);
u3 = heaviside(t-2);
u4 = heaviside(t-4);
u = u1+u2-u3-u4;

stem(t,u)
xlabel("n")
ylabel("x[n]")
title(["HomeWork #1_3_b Rectangle Wave using step function weighted sum"])
axis([-10 10 -1 3])
