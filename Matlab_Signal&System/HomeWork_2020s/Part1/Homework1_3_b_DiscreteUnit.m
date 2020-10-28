%% HomeWork #1_3_b
% discrete unit function
% Include labels and title for each plot.

clear all

n = -10:10;

u1 = heaviside(n+5);
u2 = heaviside(n+3);
u3 = heaviside(n+1);
u4 = heaviside(n-2);
u5 = heaviside(n-4);
u6 = heaviside(n-6);
u = u1+u2+u3-u4-u5-u6;

stem(n, u) % y에 u(step function weighted sum)를 곱해줌으로써 -10:10이외의 값은 0처리.
% stem : sampling값만(discrete), plot : sampling값을 연결해서 그래프(continuous)
xlabel('n')
ylabel('x[n]')
title('HomeWork #1-3-b discrete unit function')
axis([-10 10 -4 4])