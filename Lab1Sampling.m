%%This is lab1 for sampling
clear
close

%%Plotting sinusoidal signals
F=10; %Frequency of 10 Hz
A=2; %Amplitude = 2 volts
theta=0;

T=1/F; % Time period
delT=0.001; %sample in spacing
duration=5*T; %total 5 cycles
%N=100;
N=round(duration/delT); %Total number of points
t=(0:N-1)*delT; %time array

X=A*sin(2*pi*F*t);

figure
plot(t,X)
grid on

%Sampling the sine wave
Fs=8*F;
Ts=1/Fs;
Ns=5*8;
t_sampled=(0:Ns-1)*Ts;
X_sampled= A*sin(2*pi*F*t_sampled);

hold
stem(t_sampled,X_sampled, 'r')%first parameter works as index