%% HomeWork #1_2
% Discrete Cosine Wave
% Include labels and title for each plot.

n = -100:100;
y = cos(0.05*pi*n) + 1;

u1 = heaviside(n-20);
u2 = heaviside(n+20);
u = u2-u1;

stem(n, u.*y) % y에 u(step function weighted sum)를 곱해줌으로써 -10:10이외의 값은 0처리.
xlabel("n")
ylabel("x[n]")
title(["HomeWork #1_2 Discrete Cosine Wave"])
axis([-30 30 -1 3])