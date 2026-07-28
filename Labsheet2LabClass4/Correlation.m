clc; clear all;

x=[1 1 1 1 0 0 0 0 0 0 0 0];
y=[0 0 0 0 0 0 0 0 0.5 0.5 0.5 0.5];

[rxy lags]= xcorr(y, x); % lags means delay, instead of l

[y1, i]=max(rxy);
z= lags(i);

figure
stem(lags, rxy)