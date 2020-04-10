
function[bound1,bound2]=findbound(x1)
%x1= ����� ���� �ʱ� ��

%NewtonR ��� �̿��Ῡ root���ϱ�
function [convergence,root]=NewtonR(myFunction,x1)
%x1= xi ��
%es= ������
i=1;

es=0.1;%���ϴ� ����
ea=10; %�ʱⰪ
Maxturn=50;

while ea>es
    y=myFunction(x1);
    slope=derivative(myFunction,x1,0.001);
    
    %x2= xi+1��
    
    x2= x1-(y/slope);
    
    %xi+1=xi-(f(xi)/f'(xi)) �̿� 
    %NewtonRahson ����� ����
    
    es= abs(1-x1/x2)*100;
    
    x1=x2;
    i=i+1;
    % while�� ���� ���Ƽ� �ذ� ������ �ʴ� ���
    if i>=Maxturn
        convergence=0; 
        root=x1;
    return
    end
end
convergence=1;
root=x2;
                      % root�� ���ؼ� ������ bound�� ����
bound1= root+10       % root�ּ� ������ ����ŭ �¿�ΰ��� bound�� ���� ����
                      % root���� �¿�� ���� +10,-10��ŭ �̵��Ͽ� 
                      % root-10=bound1, root+10=bound2�� ������
bound2=root-10


end
end

    
% �� �������� ���� 
% central ��� �̿�

function y1=derivative (myFunction,x,h)
y1=(myFunction(x+h)-myFunction(x-h))/(2*h);


% bound1�� bound2�� ��ȣ�� �ٸ��� Ȯ���ϴ� �Լ�
% bisection ����� �̿��� �� �ִ��� Ȯ���ϱ�

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