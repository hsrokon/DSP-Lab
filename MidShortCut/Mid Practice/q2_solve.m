%% Q2 solve
clear all
close all
clc

b=[1 -3 2];
a= [1 -1.4 0.48];

% (i)
figure
zplane(b,a)%H(z) for pole zero

% (ii)
figure
impz(b,a)%impulse

% (iii)
N= 500;
[H,w]= freqz(b,a,N);%z-transformation dig filter representation in freq domain
figure
plot(w,abs(H))
grid;
xlabel('Frequency in pi units');
ylabel('|X|');
title('Magnitude Response');
% its high pass filter, at 0 its lower freq, then later the freq is higher

% (iv)
%System is stable, because all poles inside unit circle lies inside unit
%circle

% STABILITY RULES (Poles in z-plane):
% 1. All poles inside unit circle (|p| < 1) -> STABLE
% 2. Any pole outside unit circle (|p| > 1) OR repeated poles on unit circle -> UNSTABLE
% 3. Single poles directly on unit circle (|p| = 1) -> MARGINALLY STABLE
% Note: Zeros do NOT affect stability!
%% Gem Solve

clear all
close all
clc

% System Coefficients
% H(z) = (1 - 3*z^-1 + 2*z^-2) / (1 - 1.4*z^-1 + 0.48*z^-2)
b = [1 -3 2];
a = [1 -1.4 0.48];

% Part (i): Plot poles and zeros in the z-plane
figure
zplane(b, a)
title('Poles and Zeros in z-plane');

% Part (ii): Plot h(n)
figure
impz(b, a)
title('Impulse Response h(n)');

% Part (iii): Plot |H(w)| vs. w and filter type
N = 500;
[H, w] = freqz(b, a, N);

figure
plot(w, abs(H))
grid;
xlabel('Frequency in pi units');
ylabel('|X|');
title('Magnitude Response');

% Type of filter: High-Pass Filter (attentuates low frequencies near 0, passes higher frequencies)

% Part (iv): System Stability
% System is STABLE because all poles (x) in the zplane plot lie strictly inside the unit circle.