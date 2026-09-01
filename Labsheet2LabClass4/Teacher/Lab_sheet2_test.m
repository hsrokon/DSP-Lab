clear all
close all

%% Test convolution:
x=[1 1 1];
nx=-1:1;
h=[1 1 1];
nh=5:7;

[y, ny] = conv_m(x, nx, h, nh);

figure
stem(ny,y)

%% Use of filter command
clear all

x= ones(1,10);
% Moving average:
b1= (1/3)*ones(1,3);
a1=1;

y1= filter(b1,a1,x);
figure
stem(y1)

% Accumulator:
b2=1;
a2=[1 -0.8];
y2= filter(b2,a2,x);
figure
stem(y2)

%% Correlation

clear all
close all

x=[1 1 1 1 0 0 0 0 0 0 0 0];
y=[0 0 0 0 0 0 0 0 0.5 0.5 0.5 0.5];

[ryx lags] = xcorr(y,x);

figure
stem(lags,ryx)
%%
clear all

X1= [5 6 10 12 11];
N1= [-1 2 4 3 7];
[Y1 I]= max(X1);
N1(I);





