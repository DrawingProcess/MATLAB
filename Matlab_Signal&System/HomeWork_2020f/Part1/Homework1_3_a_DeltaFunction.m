%% HomeWork #1_3_a
% discrete delta function
% Include labels and title for each plot.

clear all
n = -5:5;

impulse1 = n==3;
impulse2 = n==0;
impulse3 = n==-3;
u = 3*impulse1-impulse2+2*impulse3;

stem(n, u) % y에 u(step function weighted sum)를 곱해줌으로써 -10:10이외의 값은 0처리.
% stem : sampling값만(discrete), plot : sampling값을 연결해서 그래프(continuous)
xlabel('n')
ylabel('x[n]')
title('HomeWork #1_3_a discrete delta function')
axis([-5 5 -3 3])