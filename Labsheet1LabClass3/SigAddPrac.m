clc; clear all;


n = -2:10; x = [1:7,6:-1:1];
% a) x1(n) = 2*x(n-5) - 3*x(n+4)
[x11,n11] = sigshift(x,n,5); 
[x12,n12] = sigshift(x,n,-4);
[x1,n1] = sigadd(2*x11,n11,-3*x12,n12);
subplot(2,1,1);
stem(n1,x1); title('Sequence in a')
xlabel('n'); ylabel('x1(n)');
axis([min(n1)-1,max(n1)+1,min(x1)-1,max(x1)+1])
