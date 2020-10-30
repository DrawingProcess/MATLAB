%% HomeWork #2_2_2.59(a)
% y[n]-3y[n-1]=2x[n], y[-1]=3, x[n]=(-1/2)^n*u[n]

clear all

input = 10; % 입력의 개수(임의지정가능)
b = [2 0];
a = [1 -1/2]; % a의 첫 번째 요소가 1이 아니면 filter는 차분 방정식을 구현하기 전에 모든 계수를 a(1)로 나눔.
t = 1:10;
for n = 1:1:10
    f(n) = -1/2.^n;
end
x = ones(1, input).*f;
i = filtic(b,a,3); % filter initial condition 설정(b(행벡터) - forward loop 계수(x계수), a(행벡터) - feedback loop 계수(y계수))
y = filter(b,a,x,i); % filter 함수를 이용한 시스템 응답

n = 1:input; % 입력의 개수
stem(n, y)
xlabel('n (1 <= n <= 10)')
ylabel('y[n](y[n]-3y[n-1]=2x[n]) (-0.4<=y[n]<=0.3)')
title('HomeWork #2-2-2.59(a)   y[n]-3y[n-1]=2x[n], y[-1]=3, x[n]=(-1/2)^n*u[n]')
axis([1 input -0.4 0.3])