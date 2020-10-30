%% HomeWork #2_1_2.34(g)
% m[n]=y[n]*w[n]

clear all

y = [zeros(1,2), ones(1,4), -ones(1,4), zeros(1,2)];
t = -10:1:10;

for n = -4:1:4
    if abs(n) <= 4
        w(n+5) = 3 - abs(n);
    else
        w(n+5) = 0;
    end
end
m = conv(y, w);

t = -9:1:10;
stem(t, m)
xlabel('n')
ylabel('m[n]=y[n]*w[n]')
title('HomeWork #2-1-2.34(g)    m[n]=y[n]*w[n]')
axis([-10 10 -10 10])