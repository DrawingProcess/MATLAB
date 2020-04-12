%% HomeWork #1_3_c
% discrete exp*cosine*unit
% Include labels and title for each plot.

clear all

n = -10:.1:10;
u1 = heaviside(n);
u = exp(-0.15*n).*cos(0.2*pi*n).*u1;

stem(n, u) % y에 u(step function weighted sum)를 곱해줌으로써 -10:10이외의 값은 0처리.
% stem : sampling값만(discrete), plot : sampling값을 연결해서 그래프(continuous)
xlabel('n')
ylabel('x[n]')
title('HomeWork #1-3-c discrete exp*cosine*unit function')
axis([-10 10 -2 2])