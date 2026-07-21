%Sampling

clc; clear all;

t=0:0.001:1;
Fs=40; % Ts=0.025

xa=cos(20*pi*t)+cos(100*pi*t);

Ts=0.025; N1=round(1/Ts); n1=0:N1;

x1=cos(20*pi*n1*Ts)+cos(100*pi*n1*Ts);
plot(t,xa,n1*Ts,x1,'o');axis([0,1,-2,2]);
ylabel('x1(n)'); title('Sampling of x_{a}(t)using Ts=0.025');



%Reconstruction

xa2=x1q*sinc(Fs*(ones(length(n1),1)*t-(n1*Ts)'*ones(1,length(t))));

sq_error= (xa-xa2).^2;
MSE= mean(sq_error);


SNR= 10*log10((A^2/2)/MSE)

figure
plot(t,xa)
hold on
plot(t,xa2,'r')
grid on
legend('Original','DAC Output')

quant_error= xa-xa2;
figure
plot(t,quant_error,'r')