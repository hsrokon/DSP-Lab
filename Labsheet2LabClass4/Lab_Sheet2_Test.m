clc; clear all;

x=[1 1 1];
nx=-1:1;
h=[1 1 1];
nh=1:3;

[y, ny] = conv_m(x, nx, h, nh);%it gives you the correct position

figure
stem(ny, y)

%% use of filter command
clear all;

% x=[1 1 1]; %input function with 3 1s
% x=ones(1,10);
%Moving avg
% b=(1/3)*ones(1,3);
% a=1;

%  y = filter(b,a,x);
%its an example of moving avg filter
% it takes 3 samples and divides by 3 to get a smooth output

% figure
% stem(y)

%% Accumulator
% y(n)=y(n-1)+x(n), y(n)-y(n-1)=x(n)
clear all;
x=ones(1,10);
b2=1;
a2=[1 -1];
y2 = filter(b2,a2,x);

figure
stem(y2)