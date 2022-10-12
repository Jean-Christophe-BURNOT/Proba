clear variables;
close all;
clc;
%{
Premier code du TP4
%}
N=10000;

%Probabilités empiriques
a=-2;b=3;
X=a+(b-a)*rand(1,N);

figure(1);
histogram(X,'Normalization','pdf'); hold on

%Probabilités théoriques
x=[a,b];
y=ones(1,2)/(b-a);
plot(x,y);

title("Simulation de la loi Uniforme sur l'intervalle [-2,3]")
legend("empirique", "théorique")
xlim([-2,3]);
ylim([0,1]);
xlabel("x (valeurs de X)")
ylabel("Densité de probabilité")
text{
sprintf('%d boules\n', n)
sprintf('%d Expériences\n', nbtirages)
sprintf('E(X)_{em}=%f\n', esp)
sprintf('E(X)_{th}=%f\n', espt)
sprintf('\\sigma(X)_{em}=%f\n', var)
sprintf('\\sigma(X)_{th}=%f\n', vart)
}




