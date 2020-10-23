% nettoyage
close all, clear all


% parametre de simulation
N = 5000;
n=1:N;
% Realisation
x = randn(1,N);
x(n) = bijn(x(n),2,3);

fprintf('la moyenne est %f, ecart type : %f \n.',mean(x),std(x))

%Observation
figure(1);

subplot(2,2,1);
plot(n,x,'*');
xlabel('iteration');
ylabel('tirage aléatoire');
title('Realisations');
grid;

subplot(2,2,3:4);
%histogram(x,20,'Normalization','probability');
nb = 100;
[h,nh]=hist(x,nb);  % h=Nx, nh :centre des histogrammes
delta = nh(2) - nh(1);
hn = h/(delta*N);
bar(nh,hn);
title('normalized histogram');
grid;

subplot(2,2,2);
histogram(x,nb);
title('non normalized histogram');
grid;



%bijection de [0,1] dans [a,b] pour la loi uniforme
function s = bij(t,a,b)
    s = (1-t)*a + t*b;
end

%bijection pour loi normale
function s = bijn(t,m,r)
    s = sqrt(r)*t + m;
end