%% Practice_Part1_5
% step, Impulse, Ramp

u1 = [zeros(1,50),ones(1,100)];
u2 = [zeros(1, 100), ones(1,50)];
Delta = [zeros(1,49),1,zeros(1,49)];
Ramp = 0:.1:10;
u = u1-u2;

hold on
plot(u)
plot(Ramp)
plot(Delta)
hold off