%% HomeWork #1_2
% raised cosine sequence
% Include labels and title for each plot.

clear all

n = -100:.1:100;
y = cos((0.1*pi*n) + 1);

u1 = heaviside(n-10);
u2 = heaviside(n+10);
u = u2-u1;

stem(n, u.*y) % y에 u(step function weighted sum)를 곱해줌으로써 -10:10이외의 값은 0처리.
xlabel('n')
ylabel('x[n]')
title('HomeWork #1-2 cos(0.1𝜋𝑛) + 1 (−10 ≤ 𝑛 ≤ 10)')
axis([-11 11 -2 2])