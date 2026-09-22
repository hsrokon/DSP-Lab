%% FDAtool Lab
clear all
close all
clc

load LPF_coeff
load HPF_coefficient

b1= Num;
a1=1;
[H1,w]= freqz(b1,a1);

figure
plot(w,20*log10(abs(H1)))

b2= Num_HPF;
a2=1;
[H2,w]= freqz(b2,a2);

figure
plot(w,20*log10(abs(H2)))

Fs= 8000;
F1= 100;
F2= 1200;
Ts= 1/Fs;

N=1000;
n=0:N;
t=n*Ts;
x1= sin(2*pi*F1*t);
x2= sin(2*pi*F2*t);

x= x1+x2;

%% Detecting the tones:
F_array=(Fs/N)*n;
X= fft(x);

figure
plot(F_array, abs(X))


% LPF Output
y1= filter(b1,a1,x);

figure
plot(t,x)
hold on
plot(t,y1,'r')

% HPF Output
y2= filter(b2,a2,x);

figure
plot(t,x)
hold on
plot(t,y2,'r')

%% FDAtool Lab

clear all
close all
clc

load LPF_v1
load HPF_v1

%LPF
b1= Num;
a1=1;
[H1,w]= freqz(b1,a1);

b2= Num2;
a2=1;
[H2,w]= freqz(b2,a2);

figure
plot(w,20*log10(abs(H1)))

% Signal Genertor

Fs= 8000;
F1= 100;
F2= 1500;
Ts= 1/Fs;

N=1000;
n=0:N;
t=n*Ts;
x1= sin(2*pi*F1*t);
x2= sin(2*pi*F2*t);

x= x1+x2;

% Check input
X=fft(x);
figure
freq_step=Fs/N;
freq_axis = freq_step*n;
plot(freq_axis, abs(X))

%LPF
y1 = filter(b1, a1, x);
%HPF
y2 = filter(b2, a2, x);

figure
subplot(3,1,1)
plot(t,x)
subplot(3,1,2)
plot(t,y1, 'r')
subplot(3,1,3)
plot(t,y2,'m')
grid on