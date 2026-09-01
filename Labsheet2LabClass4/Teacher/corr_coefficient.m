function rxy= corr_coefficient(X,Y)

%X=input('Input the 1st sequence:');
%Y=input('Input the 2nd sequence:');
Xm=X-mean(X);
Ym=Y-mean(Y);
rxy = sum(Xm.*Ym)/sqrt(sum(Xm.^2)*sum(Ym.^2));
%disp('The correlation coefficient is:');
%disp(rxy)