clear all
close all

%% Sampling
t=0:0.001:1;
xa=cos(20*pi*t)+cos(100*pi*t);

Ts1=0.025; N1=round(1/Ts1); n1=0:N1;
x1=cos(20*pi*n1*Ts1)+cos(100*pi*n1*Ts1); 

figure(1)
subplot(3,1,1);
plot(t,xa,n1*Ts1,x1,'o');
axis([0,1,-2,2]);
ylabel('x1(n)'); title('Sampling of x_{a}(t)using Ts=0.025');



%% Reconstruction:
Ts=0.025; 
Fs=1/Ts;
xa1=x1*sinc(Fs*(ones(length(n1),1)*t-(n1*Ts)'*ones(1,length(t))));


figure(2)
plot(t,xa1); 
axis([0,1,-2,2]);
ylabel('x_{a}(t)'); title('Reconstruction of x_{a}(t) when Ts=0.01 ');