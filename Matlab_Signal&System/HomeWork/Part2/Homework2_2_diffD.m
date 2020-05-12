%% HomeWork #2_2_2.59(d)
% y[n] - 3/4*y[n-1] + 1/8*y[n-2] = 2x[n], y[-1]=1, y[-2]=-1, x[n]=2u[n]

clear all

input = 10; % 입력의 개수(임의지정가능)
b = [2 0 0];
a = [1 -3/4 +1/8]; % a의 첫 번째 요소가 1이 아니면 filter는 차분 방정식을 구현하기 전에 모든 계수를 a(1)로 나눔.
x = 2*ones(1, input);
i = filtic(b,a,[1 -1]); % filter initial condition 설정(b(행벡터) - forward loop 계수(x계수), a(행벡터) - feedback loop 계수(y계수))
y = filter(b,a,x,i); % filter 함수를 이용한 시스템 응답

n = 1:input; % 입력의 개수
stem(n, y)
xlabel('n (1 <= n <= 10)')
ylabel('y[n](y[n]-3/4*y[n-1]+1/8*y[n-2]=2x[n]) (0<=y[n]<=12)')
title('HomeWork #2-2-2.59(d)    y[n]-3/4*y[n-1]+1/8*y[n-2]=2x[n],y[-1]=1,y[-2]=-1,x[n]=2u[n]')
axis([1 input 0 12])