clear variables;
close all;



N = 50000;
a = -2;
b = 3;
n = 50;


X = (b-a).*rand(1,N)+a;

x = linspace(a,b,n);
f = (1/(b-a)).*ones(1,n);

Eth = (a+b)/2;
Eemp = mean(X);
sigth = sqrt(((b-a).^2)/12);
sigemp = std(X);

figure(1);
hold on;
histogram(X,'Normalization','pdf');
plot(x,f,'LineWidth',2);
axis([a b 0 1]);


fprintf('Moyenne theorique : %f,\t Moyenne empirique : %f\n',Eth,Eemp);
fprintf('Ecart type theorique : %f,\t Ecart type empirique : %f\n',sigth,sigemp);


