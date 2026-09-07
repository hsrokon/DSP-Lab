
%% Sampling
%{
Consider an analog sinusoidal signal x1(t) = 2 cos 2π(10)t. The signal is sampled at a rate Fs
= 40 Hz. Now, sample this signal using the sampling frequency Fs and plot the signal and
sampled signal for 5 cycles.
%}

clear all; close all;

%Plotting analog signal
F=10;
A=2;
theta=0; %Phase shift=0;
T=1/F; %time period
duration= 5*T; %For 5 cycles

%the time step used to simulate a "continuous" analog signal
delT= 0.001;
%Samples per cycle
N=round(duration/delT);

t=(0:N-1)*delT; %Time Array
x_1= A*cos((2*pi*F*t)+theta);

figure
plot(t,x_1); grid on



%Sampling the sine wave
% Fs= 4*F; 
% Ts= 1/Fs;
% Ns= 40; % 5 cycles with 8 times of frequency
% t_sampled= (0:Ns-1)*Ts;
% x_1_sampled= A*cos((2*pi*F*t_sampled)+theta);

% Sampling the sine wave at 40 Hz
Fs = 40;                            % Fs = 4*F = 40 Hz (matches prompt)
Ts = 1/Fs;                          % Sampling period = 0.025 s
Ns = 5 * (Fs/F);                    % 5 cycles * 4 samples/cycle = 20 samples
t_sampled = (0:Ns-1)*Ts;            % Sampled time array
x_1_sampled = A*cos((2*pi*F*t_sampled)+theta);

hold on
stem(t_sampled, x_1_sampled);
title('5 cycles of continuous time and sampled Cosine signal')
ylabel('Amplitude of Sinusoidal'); xlabel('Time(seconds');
legend({'x_1(t)','x_1(n)'})


%% Example 1.2: Aliasing
%{Consider two analog sinusoidal signals x1(t) = cos 2π(10)t 
% and x2 (t) = cos 2π(50) t . Both signals are sampled at 
% a rate Fs = 40 Hz for 5 cycles. Compare the plot with the plot in Example 1.1 %}

clear all; close all;
F1=10;
F2=50;

delT= 0.001; %Sample Spacing
n=0:500; %Number of points
t=n*delT;

x_1=cos(2*pi*F1*t);
x_2=cos(2*pi*F2*t);
plot(t,x_1, 'r');
hold on;
plot(t,x_2,'g');

Fs=40; % for both signals
Ts=1/Fs;
N=round(1/Ts);%N=40(Total number of samples in 1 full second)
n=0:N/2;% Indices from 0 to 20(samples over half a second0 to 0.5 s)
t=n*Ts;

x1=cos(2*pi*F1*t); %Sampled signal at 40 Hz
x2=cos(2*pi*F2*t); %Sampled signal at 40 Hz

hold on
plot(t,x1,'o');
hold on
plot(t,x2,'o');
title(['Aliasing effect on two sinusoidal with 10Hz and 50 Hz Frequency'])
ylabel('Amplitude of Sinusoidal')
xlabel('Time(seconds)')
legend({'x_1(t)','x_2(t)', 'Sample for Fs=40'})