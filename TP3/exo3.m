clear variables;
close all;
clc;
%{
Code qui traite de la loi de poisson avec une notion pratique
%}

%Zone de bombardement
n_cases=24;
cx=[0:n_cases];
cy=[0:n_cases];
[CX,CY]=meshgrid(cx,cy);
mesh(CX,CY,zeros(n_cases+1,n_cases+1));


M = zeros(n_cases ,n_cases);
n_impacts = 537;

%Initialisation des coordonées
x = zeros(n_impacts, 1);
y = zeros(n_impacts, 1);

%Boucle for pour les tirs
for k=1:n_impacts
    %génération aléatoire des coordonnées
    x(k) = n_cases*rand();
    y(k) = n_cases*rand();
    %On arrondit nos valeurs avec ceil()
    i = ceil(x(k));
    j = ceil(y(k));
    M(i,j) = M(i,j)+1;
end

%affichage
figure(1); hold on;
plot(x,y,'r*');
M=M(:);
