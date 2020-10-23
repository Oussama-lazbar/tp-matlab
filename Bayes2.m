N = 50; % echantillons
n=1:N;

% simulation de L ~ Bernoulli(p)

p=0.5; % parametrer bernoulli
L = rand(1,N); %tirage selon une loi uniforme
L = (L>p) + 1; %transformation selon loi bernoulli

% Gaussienne 1 parametres m1,r1
m1 = 1;
r1 = 2;
x1 = randn(1,N);
x1 = sqrt(r1)*x1 + m1;

% Gaussienne 2 parametres m2,r2
x2 = randn(1,N);
%x2 = sqrt(r2)*x2 + m2;

% Simulation de X/L 
x = (L-1).*x2 + (2-L).*x1;

figure(1)
plot(n,x,'*');













