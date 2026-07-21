clc; clear all;

%%delta function
n01=-2;
n02=-1;
n03=0;
n04=1;
n05=2;

n1= -10; 
n2=10;

[x1 n]=delta(n01, n1, n2);
[x2 n]=delta(n02, n1, n2);
[x3 n]=delta(n03, n1, n2);
[x4 n]=delta(n04, n1, n2);
[x5 n]=delta(n05, n1, n2);

x=x1+x2+x3+x4+x5;

figure
stem(n,x)

