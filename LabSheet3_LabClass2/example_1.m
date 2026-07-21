clear all
close all

% Sampling
t=0:0.001:1;
A= 1;
%xa=cos(20*pi*t)+cos(100*pi*t); 
xa=A*cos(20*pi*t);

Fs= 40;
Ts=1/Fs; 
N1=round(1/Ts); 
n1=0:N1;
%x1=cos(20*pi*n1*Ts)+cos(100*pi*n1*Ts); 
x1=A*cos(20*pi*n1*Ts);

figure
plot(t,xa,n1*Ts,x1,'ro');

ylabel('x1(n)'); title('Sampling of x_{a}(t)using Ts=0.01');

% Reconstruction:
xa1=x1*sinc(Fs*(ones(length(n1),1)*t-(n1*Ts)'*ones(1,length(t))));

figure
plot(t,xa1); 

ylabel('x_{a}(t)'); title('Reconstruction of x_{a}(t) when Ts=0.01 ');

% Quantization
b= 16;   %number of bits
L= 2^b;

x1q= uquant(x1,L);
t_sample= n1*Ts;

figure
stem(t_sample,x1,'x')
hold on
stem(t_sample,x1q,'r')
%plot(t,xa,'g')


% Reconstruction of Quantized signal:
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
