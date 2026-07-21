%%step function

n01=-2;
n02=-1;
n03=0;
n04=1;
n05=2;

n1=-10;
n2=10;

[x11 n]= unit_step(n01,n1,n2)
[x22 n]= unit_step(n02,n1,n2)
[x33 n]= unit_step(n03,n1,n2)
[x44 n]= unit_step(n04,n1,n2)
[x55 n]= unit_step(n05,n1,n2)


figure
stem(n,x)

