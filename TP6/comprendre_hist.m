clear variables;
close all;
clc;
%{
Ce code permet de comprendre
comment fonctionne histogram()
et le reproduire avec hist()
%}

total=10e3
a = rand(total,1)+1;
b = rand(total,1)+1;
nbins=100

%_____calcul des fréquences_____
n = hist(a, nbins);
%n correspond au nombre de valeurs tombés dans
%dans chaque groupe (effectifs)
%on normalise et on obtient la fréquence
freq=n./sum(n);

%densité des fréquences on divise par la largeur d'une barre
ad=freq./nbins;

ad2=ad./0.01

figure(1);
%histogramme des effectifs
%Nombre de recoupages de l'histogramme
subplot(1,2,1);
hist(a,nbins);

%histogramme des densitées
subplot(1,2,2);
hist(ad2,nbins);


