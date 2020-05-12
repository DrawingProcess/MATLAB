%% HomeWork #2_1_2.59(b)
% y[n] - 1/9*y[n-2] = x[n-1], y[-1]=1, y[-2]=0, x[n]=u[n]

clear all
n = 10;
x = ones(1,n);
y = [0,1];
for i = 3:n
    y(1,i) = 1/9*y(1,i-2) + x(1,i-1);
end
y