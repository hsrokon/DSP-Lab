clear all
close all
clc

L= 8;
N= 8*L;

x= ones(1,L);
X= fft(x,N);
k=0:N-1;
w= (2*pi/N)*k;


x1= [x zeros(1,N-L)]; %Zero Padding
figure
stem(k,x1)
ylabel('x(n)')

figure
stem(k,abs(X))
hold on
plot(k,abs(X),'r')

% figure
% stem(w/(pi),abs(X))
% hold on
% plot(w/(pi),abs(X),'r')
% xlabel('In terms of \pi')

Fs=2000;
figure
stem((Fs/N)*k,abs(X))
hold on
plot((Fs/N)*k,abs(X),'r')
xlabel('In terms of f')

%% Sinusoidal signal
clear all
close all

F1= 50;
Fs= 2000;
f1= F1/Fs;
L=Fs/F1;
n=0:L;
x= sin(2*pi*f1*n);

figure
stem(n,x)

N= L;
X= fft(x,N)

k=0:N-1;
w= (2*pi/N)*k;
F_array= (Fs/N)*k;

figure
stem(w,abs(X))

figure
stem(F_array,abs(X))

%%

clear all
close all

F1= 50;
F2= 200;
Fs= 2000;
f1= F1/Fs;
f2= F2/Fs;
L=Fs/F1;
n=0:L;
x1= sin(2*pi*f1*n);
x2= 0.5*sin(2*pi*f2*n);
noise= 0.1*randn(1,L+1);
x= x1+x2+noise;

figure
plot(n,x)

N= L;
X= fft(x,N)

k=0:N-1;
w= (2*pi/N)*k;
F_array= (Fs/N)*k;

figure
stem(w,abs(X))

figure
stem(F_array,abs(X))

%% Sinusoid signal from lab sheet

clc; clear all; close all;
Fs=2000;
Ts=1/Fs;
t=0:Ts:1;
F1=10;
F2=50;
x1= sin(2*pi*F1*t);
x2= sin(2*pi*F2*t);

%FFTyh
X1=fft(x1);
N=length(X1);
k=0:N-1;
F=(Fs/N)*k;

xn=0.5*rand(1,N);%random noise
y=x1+x2+xn;

Y=fft(y);

figure
plot(t,y)
%xlabled('Sec')

figure
stem(F,abs(Y))
%xlabled('Hz')





