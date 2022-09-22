clear all, close all, clc

mu=3.89;

z(1)=0.1414;
z0=z(1);

for i = 1:502
    z(i+1)=mu*z(i)*(1-z(i));
end

for i = 1:500
    plot3(z(i), z(i+1),z(i+2),'or',LineWidth=1)
    hold on
end
axis([0 1 0 1])
xlabel('X_n')
ylabel('X_{n+1}')
zlabel('X_{n+2}')