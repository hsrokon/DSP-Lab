clear all
close all
clc

% Example 4.2.3 in Text Book
% n=0:10;
% a= -0.5;
% x= a.^n;
% figure
% stem(n,x)

% Example 4.2.4 in Text Book
L= 8;
N= 10;
x= [ones(1,L),zeros(1,N)];

n=0:L+N-1;
figure
stem(n,x)

% Lab Sheet Example
% n=0:6;
% x=[4 3 2 1 2 3 4];

w=[0:500]*pi/500;
X=dtft(x,n,w);
magX=abs(X);
phaX=angle(X);

magX2= magX.^2;

%Magnitude Response
figure
subplot(2,1,1);
plot(w/pi,magX);
grid;
xlabel('Frequency in pi units');
ylabel('|X|');
title('Magnitude Response');
%Phase Response
subplot(2,1,2);
plot(w/pi,phaX);
grid;
xlabel('Frequency in pi units');

%% Impulse, H(z) pole zero and use freqz command
clear all
close all
clc

b=(1/3)*[1 1 1];
a= 1;

figure
impz(b,a)%impulse

figure
zplane(b,a)%H(z) for pole zero

N= 500;
[H,w]= freqz(b,a,N);%z-transformation dig filter representation in freq domain

figure
plot(w,abs(H))
grid;
xlabel('Frequency in pi units');
ylabel('|X|');
title('Magnitude Response');

%% Application of filtering:
% 
% clear all
% close all
% clc
% 
% load train
% 
% Ly= length(y);
% 
% sound(y)
% 
% noise= randn(Ly,1);
% 
% noisy_y= y+noise;
% 
% 
% figure
% plot(y)
% hold on
% plot(noisy_y,'r')
% 
% sound(noisy_y)
% pause(5)
% 
% b=[1];
% a=[1 -0.5];
% 
% x= filter(b,a,noisy_y);
% sound(x)

