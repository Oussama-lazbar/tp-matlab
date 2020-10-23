clear all, close all;

N=5000;
x1 = randn(1,N);
x2 = randn(1,N);
figure(1)
plot(x1,x2,'*');
% pas de correlation
corr2(x1,x2)