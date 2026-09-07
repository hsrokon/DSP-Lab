%unit step
n01=-5;
n02=6;
n1=-10;
n2=10;
[x1 n]= u(n01,n1,n2);
[x2 n]= u(n02,n1,n2);
x= x1-x2;
figure
stem(n,x)
grid on
axis([-11,11,-0.5,1.2]); ylabel('x(n)'); xlabel('Number of Samples (n)');
title('Figure of Step Signal in Discrete Time'); fontsize(16, "points");