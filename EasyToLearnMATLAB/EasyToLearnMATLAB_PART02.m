% 2.1) for 루프를 이용하여 10! = 10*9*8*,,,*1을 계산하는 script를 작성
sum = 1;
for i = 10:-1:1
    sum = sum * i;
    sum
end

% 2.2) if를 이용하여 주어진 실수 x의 절대값을 계산하는 함수 M파일을 작성하라
n = input('정수를 입력하세요');
if n>=0
    n
elseif n<0
    n = -n
end

% 2.3) 다음을 계산하는 m 파일 생성하라.
% f(x) = sin(x)/x (x != 0), 0(x == 0);
% 1) if를 이용하여 f(x)를 계산하는 함수를 구성하여라
x = input('x값을 입력하세요 ');
useIF(x)
% 1) if를 이용하지 않고 f(x)를 계산하는 함수를 구성하여라
useNotIF(x)

% 2.4) for 루프를 이용하여 황금률(1+sqrt(5))/2를 근사적으로 나타내는 연속적인 분수를 계산
goldrate = 1;
for i = 1:10, goldrate = 1+ 1/goldrate; end
goldrate

% 2.5) 극좌표를 직교좌표로 바꿔주는 함수 m-파일 rectan.m을 작성하여보라.

% 2.6) 10*e^1를 다음과 같은 여러가지 출력형식으로 나타내어 보라.
IOput(10) = struct('format', '10*exp(1)');
FM = {'short', 'long', 'short e', 'long e', 'short g', 'long g', 'hex', 'bank', 'rat'};
for i= 1:10
    IOput(i).format = FM(i);
    %IOput(i).value = format FM(i) 10*exp(1);
end
IOput
