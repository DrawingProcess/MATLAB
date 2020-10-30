%% HomeWork #2_1_2.34(c)
% m[n]=x[n]*f[n]

clear all

x = [zeros(1,4), ones(1,7), zeros(1,4)];

t = -5:1:5;
for n = -5:1:5
    if abs(n) <= 5
        f_(n+6) = n;
    else
        f_(n+6) = 0;
    end
end
f__ = ones(1,11);
f = f_.*f__;
m = conv(x, f);

t = -9:1:15;
stem(t, m)
xlabel('n')
ylabel('m[n]=x[n]*f[n]')
title('HomeWork #2-1-2.34(c) m[n]=x[n]*f[n]')
axis([-8 15 -20 20])