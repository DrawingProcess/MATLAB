function [p]=fibo(n)
   if(n==1)
      p=1;
   else if(n==2)
      p=2;
   else
      p=fibo(n-1)+fibo(n-2);     
end

