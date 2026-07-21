clc; clear all;

x1=[1 1 1];
h1=[1 1 1];

x3=conv(x1, h1);

figure
stem(x3)