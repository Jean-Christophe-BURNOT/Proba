clear variables;
close all;
clc;
%{
Code qui utilise la méthode de Box-Muller
%}

%empirique
% On part de 2 lois uniformes
u1=rand(10000,1);
u2=rand(10000,1);
X=sqrt(-2*log(u1)).*cos(2*pi*u2);

%théorique

% On défini des vecteurs
ou1=linspace(4-15,4+15,10000);

% On défini la loi normale
u1=(1/sqrt(2*pi))*exp(-(ou1.^2)/2);
% On fait le contraire du centrage reduction

%affichage pour x
figure(1)
histogram(X,'Normalization', 'pdf'); hold on;
plot(ou1, u1, 'r')

%param loi normale décentré et non réduite
mu1=4;
sigma1=3;
Z=(X*sigma1)+mu1;

figure(2)
histogram(Z,'Normalization', 'pdf'); hold on;
