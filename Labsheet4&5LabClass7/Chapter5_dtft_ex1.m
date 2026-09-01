clear all
close all
clc

%%
n=0:10;
a= -0.5;
x= a.^n;
figure
stem(n,x)

%x=[4 3 2 1 2 3 4];

w=[0:500]*pi/500;
X=dtft(x,n,w);
magX=abs(X);phaX=angle(X);
%Magnitude Response
figure
% subplot(2,1,1);
plot(w/pi,magX);
grid;
xlabel('Frequency in pi units');
ylabel('|X|');
title('Magnitude Response');
% %Phase Response
% subplot(2,1,2);plot(w/pi,phaX);grid;
% xlabel('Frequency in pi units');

%% Use freqz command
clear all
close all
clc
% a= -0.5;
% x= a.^n;

% b=[1];
% a=[1 -0.5];

b=[1 -0.5];
a=[1];
zplane(b,a)

N= 500;

[H,w]= freqz(b,a,N);

figure
plot(w,abs(H))
grid;
xlabel('Frequency in pi units');
ylabel('|X|');
title('Magnitude Response');


%% Use freqz command to solve a problem
clear all
close all
clc
% a= -0.5;
% x= a.^n;

% b=[1];
% a=[1 -0.5];

b=[1/3 1/3 1/3];%......change
a=[1];

N= 500;
figure
zplane(b,a)

[H,w]= freqz(b,a,N)
figure

impz(b,a)%.......change

figure
plot(w,abs(H))
grid;
xlabel('Frequency in pi units');
ylabel('|X|');
title('Magnitude Response');