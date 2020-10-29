%% HomeWork #2_1_2.34(i)
% m[n]=z[n]*g[n]

clear all

z = [zeros(1,8), ones(1,4), 2*ones(1,5), zeros(1,2)];
g = [ones(1,7), zeros(1,5), ones(1,7)];
m = conv(z, g);

t = -16:1:20;
stem(t, m)
xlabel('n')
ylabel('m[n]=z[n]*g[n]')
title('HomeWork #2-1-2.34(i)    m[n]=z[n]*g[n]')
axis([-10 20 0 12])