%% HomeWork #2_1_2.34(e)
% m[n]=y[n]*z[n]

clear all

y = [ones(1,4), -ones(1,4), zeros(1,5)];
z = [zeros(1,3), ones(1,4), 2*ones(1,5)];
m = conv(y, z);

t = -6:1:17;
stem(t, m)
xlabel('n')
ylabel('m[n]=y[n]*z[n]')
title('HomeWork #2-1-2.34(e)    m[n]=y[n]*z[n]')
axis([-5 15 -8 4])