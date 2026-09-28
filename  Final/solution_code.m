clc; clear; close all;

load Final_Data2.mat

%% 1(a)
t=(0:N-1)*Ts;
plot(t,x)

title('Plot of given signal x(t)')
xlabel('Time in seconds');
ylabel('Amplitude')

%% 1(b)
X=fft(x,N);
Fs=(1/Ts);
F=(Fs/N)*(0:N-1);
plot(F,abs(X))

title('Frequencey Spectrum')
xlabel('Frequency in Hz')
ylabel('Magnitude')

%% 1(c) design filters and take picture for report
%% 1(d) take pole-zero and impulse response graph and include in the report

%% 2(a) Displaying co-efficient length values

load b1.mat
load b2.mat
load b3.mat

length(b1)
length(b2)
length(b3)

%% 2 (b)ignored

%% 2(c)

% filtering signals in time domain
y1=filter(b1,1,x);
y2=filter(b2,1,x);
y3=filter(b3,1,x)

% computing FFT for each for each filtered output
Y1=fft(y1,N);
Y2=fft(y2,N);
Y3=fft(y3,N);

%% 2(d)

figure
subplot(3,1,1);
plot(F,abs(Y1));

subplot(3,1,2);
plot(F,abs(Y2));

subplot(3,1,3);
plot(F,abs(Y3));