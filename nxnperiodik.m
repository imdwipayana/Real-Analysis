clear all, close all, clc

x=linspace(0,1,300);
mu=3.3;

z(1)=sqrt(2)/10;
n=1:30;



for i = 1:n(end)-1
  
    z(i+1)=mu*z(i)*(1-z(i))
end

  plot(n,z,'r--o',LineWidth=1,MarkerSize=4)
  axis([0 n(end) 0 1])

  xlabel('n')
ylabel('X_n')
  