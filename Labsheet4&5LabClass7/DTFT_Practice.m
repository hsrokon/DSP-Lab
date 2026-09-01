clc; clear all;

%Example 4.2.3
n=0:10;
a=-0.5;
x=a.^n;
figure
stem(n,x);

%n=0:6; 
%x=[4 3 2 1 2 3 4]; 

w=[0:500]*pi/500; 
X=dtft(x,n,w); 
magX=abs(X);phaX=angle(X); 

magx2=magX.^2;

%Magnitude Response 
subplot(2,1,1); plot(w/pi,magX); 
grid; 
xlabel('Frequency in pi units');  
ylabel('|X|'); 
title('Magnitude Response'); 
%Phase Response 
subplot(2,1,2);plot(w/pi,phaX);grid; 
xlabel('Frequency in pi units'); 