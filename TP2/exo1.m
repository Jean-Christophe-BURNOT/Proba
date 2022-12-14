clear variables;
close all;
clc;
%{
Premier exercice du TP2 de proba
%}

%nombre de boules numérotées
n = 8;
nbtirages = 10000;
tirs = deuxboules(n,nbtirages)
%Valeur mimale de boule (sur les deux boules tirées)
tirsmin = zeros(nbtirages,1)
for i=1:nbtirages
    if tirs(i,1) < tirs(i,2)
        tirsmin(i,1) = tirs(i,1);
    else
        tirsmin(i,1) = tirs(i,2);
    end
end
%Partie théorique
pbttheor = zeros(n,1);
for i=1:n
    pbttheor(i,1) = (2*(n-i))/(n*(n-1));
end
%Calculs des espérances et variances
%empirique
esp = mean(tirsmin);
var = std(tirsmin)^2;
%theorique
espt = (n+1)/3;
vart = (n^2-n-2)/18;
%=====Affichage=====
figure(1);
h = histogram(tirsmin,'Normalization','probability'); hold on;
bar(pbttheor);
title("Histogramme de la variable aléatore")
xlabel('k')
ylabel('P(X=k)')
legend('empirique','théorique')
txt={
sprintf('%d boules\n', n)
sprintf('%d Expériences\n', nbtirages)
sprintf('E(X)_{em}=%f\n', esp)
sprintf('E(X)_{th}=%f\n', espt)
sprintf('\\sigma(X)_{em}=%f\n', var)
sprintf('\\sigma(X)_{th}=%f\n', vart)
}
text(6,0.175,txt);

