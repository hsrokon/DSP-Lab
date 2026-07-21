function y=uquant(x,L)
%x= original sequence
% L=Number of Levels

maxval=max(max(x));
minval=min(min(x));

stepsize=(maxval-minval)/(L-1);

y=round((x-minval)/stepsize)*stepsize+minval;