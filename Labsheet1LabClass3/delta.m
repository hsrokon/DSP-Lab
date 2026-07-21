function [x n]= delta(n0,n1,n2)%n0 is location, and n1 and n2 is range
n=[n1:n2];
x=[n-n0]==0;