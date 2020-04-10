
function[bound1,bound2]=findbound(x1)
%x1= 사용자 지정 초기 수

%NewtonR 방법 이용햐여 root구하기
function [convergence,root]=NewtonR(myFunction,x1)
%x1= xi 값
%es= 오류값
i=1;

es=0.1;%원하는 오차
ea=10; %초기값
Maxturn=50;

while ea>es
    y=myFunction(x1);
    slope=derivative(myFunction,x1,0.001);
    
    %x2= xi+1값
    
    x2= x1-(y/slope);
    
    %xi+1=xi-(f(xi)/f'(xi)) 이용 
    %NewtonRahson 방식의 정의
    
    es= abs(1-x1/x2)*100;
    
    x1=x2;
    i=i+1;
    % while을 많이 돌아서 해가 나오지 않는 경우
    if i>=Maxturn
        convergence=0; 
        root=x1;
    return
    end
end
convergence=1;
root=x2;
                      % root를 구해서 역으로 bound를 결정
bound1= root+10       % root애서 일정한 값만큼 좌우로가면 bound로 설정 가능
                      % root에서 좌우로 각각 +10,-10만큼 이동하여 
                      % root-10=bound1, root+10=bound2로 설정함
bound2=root-10


end
end

    
% 한 점에서의 기울기 
% central 방식 이용

function y1=derivative (myFunction,x,h)
y1=(myFunction(x+h)-myFunction(x-h))/(2*h);


% bound1과 bound2가 부호가 다른지 확인하는 함수
% bisection 방식을 이용할 수 있는지 확인하기

function sign= diff_sign(myFunction,bound1,bound2)
if myFunction(bound1)*myFunction(bound2)<0
    sign=1;
elseif myFunction(bound1)*myFunction(bound2)>0
    sign=0;
else
    fprintf('Bound1 is root')
    sign=-1;
end


end
end