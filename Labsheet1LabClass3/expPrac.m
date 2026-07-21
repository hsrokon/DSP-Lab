clc; clear all;

a=0.5;
n1=-10;
n2=10;

[x n]= real_exp(a,n1,n2)

figure
stem(n,x)

n01=0;
%n02=5;
[x1 n]= unit_step(n01,n1,n2)
%[x2 n]= unit_step(n02,n1,n2)

%x3=x1-x2;

y=x.*x1;

figure 
stem(n,y)
