clear all
close all

%% Sampling
t=0:0.001:1;
xa=cos(20*pi*t); % f=10

Ts1=0.01; N1=round(1/Ts1); n1=0:N1;
x1=cos(20*pi*n1*Ts1); 


Ts2=0.05; N2=round(1/Ts2); n2=0:N2;
x2=cos(20*pi*n2*Ts2); 

Ts3=0.1; N3=round(1/Ts3); n3=0:N3;
x3=cos(20*pi*n3*Ts3);

figure
subplot(3,1,1);
plot(t,xa,n1*Ts1,x1,'o');
axis([0,1,-1.1,1.1]);
ylabel('x1(n)'); title('Sampling of x_{a}(t)using Ts=0.01');

subplot(3,1,2);
plot(t,xa,n2*Ts2,x2,'o'); 
axis([0,1,-1.1,1.1]);
ylabel('x2(n)'); title('Sampling of x_{a}(t)using Ts=0.05');

subplot(3,1,3);
plot(t,xa,n3*Ts3,x3,'o'); 
axis([0,1,-1.1,1.1]);
ylabel('x3(n)');title('Sampling of x_{a}(t)using Ts=0.1');



%% Reconstruction:
Ts=0.01; 
Fs=1/Ts;
xa1=x1*sinc(Fs*(ones(length(n1),1)*t-(n1*Ts)'*ones(1,length(t))));

Ts=0.05; Fs=1/Ts;
xa2=x2*sinc(Fs*(ones(length(n2),1)*t-(n2*Ts)'*ones(1,length(t))));

Ts=0.1; Fs=1/Ts;
xa3=x3*sinc(Fs*(ones(length(n3),1)*t-(n3*Ts)'*ones(1,length(t))));

figure
subplot(3,1,1); 
plot(t,xa1); 
axis([0,1,-1.1,1.1]);
ylabel('x_{a}(t)'); title('Reconstruction of x_{a}(t) when Ts=0.01 ');


subplot(3,1,2); 
plot(t,xa2); 
axis([0,1,-1.1,1.1]);
ylabel('x_{a}(t)'); title('Reconstruction of x_{a}(t) when Ts=0.05 ');


subplot(3,1,3);
plot(t,xa3);
axis([0,1,-1.1,1.1]);
ylabel('x_{a}(t)'); title('Reconstruction of x_{a}(t) when Ts=0.1 ');

%% Quantization
clear all

b= 4;   %number of bits
L= 2^b;

t=0:0.001:1;
xa=cos(20*pi*t); % f=10

Ts1=0.01; N1=round(1/Ts1); n1=0:N1;
x1=cos(20*pi*n1*Ts1); 

x1q= uquant(x1,L);
t_sample= n1*Ts1;

figure
stem(t_sample,x1,'x')
hold on
stem(t_sample,x1q,'r')
plot(t,xa,'g')



