clear all, close all, clc

%x=linspace(0,1,300);
%mu=3.1;

%z(1)=1/(10*sqrt(2));
n=1:500



%for i = 1:n(end)-1
%    z(i+1)=mu*z(i)*(1-z(i));
%end

%plot(n,z,'r--o',LineWidth=1,MarkerSize=4)
%axis([0 n(end) 0 1])

alpha1 = 1.01
alpha2 = 1
alpha3 = 0.99
P(1)   = 100
PP(1)  = 100
PPP(1) = 100

for i = 1:n(end)-1
    P(i+1)  =alpha1*P(i);
    PP(i+1) =alpha2*PP(i);
    PPP(i+1)=alpha3*PPP(i);
end

plot(n,P,'r--o',LineWidth=1,MarkerSize=4)
hold on
plot(n,PP,'g--+',LineWidth=1,MarkerSize=4)
hold on
plot(n,PPP,'b--*',LineWidth=1,MarkerSize=4)

axis([0 n(end) 0 500])
xlabel('n')
ylabel('P_n')
  