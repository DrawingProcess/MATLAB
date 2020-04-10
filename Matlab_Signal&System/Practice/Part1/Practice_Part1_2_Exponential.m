%% Practice_Part1_2
% exponential signal

B = 5;
a = 6;
t = 0:.001:1;

grow_x = B*exp(a*t); % growing exponential
decay_x = B*exp(-a*t); % decaying exponential

hold on
plot(t, grow_x)
plot(t, decay_x)
hold off