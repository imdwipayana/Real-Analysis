clear all, close all, clc

x=linspace(0,1,300);
mu=3.3;

z(1)=0.1414;
z0=z(1);

for i = 1:300
    y(i)=mu*x(i)*(1-x(i));
end

plot(x,y,'-b',x,x,'--b',LineWidth=2)
hold on

for i = 1:101
    z(i+1)=mu*z(i)*(1-z(i));
end

plot([z0 z0],[0 mu*z0*(1-z0)],'r',LineWidth=1)

for i = 1:100
    plot([z(i) z(i+1)],[z(i+1) z(i+1)],'r',LineWidth=1)
    hold on
    plot([z(i+1) z(i+1)],[z(i+1) z(i+2)],'r',LineWidth=1)
end
xlabel('X_n')
ylabel('X_{n+1}')