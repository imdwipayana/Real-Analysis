clear all, close all, clc

x=linspace(0,1,300);
mu=3.89;

z(1)=0.1414;
z0=z(1);

for i = 1:300
    y(i)=mu*x(i)*(1-x(i));
end

plot(x,y,'--b',LineWidth=1)
hold on

for i = 1:101
    z(i+1)=mu*z(i)*(1-z(i));
end

for i = 1:100
    plot(z(i), z(i+1),'or',LineWidth=1)
    hold on
end
xlabel('X_n')
ylabel('X_{n+1}')