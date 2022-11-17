clear variables;
close all;



%% 1)

N = 10000;
a = -3;
b = 2;


Y = rand(1,N);
X=exp(Y.*log(6))-4;

x = a:0.1:b;
f = 1./(log(6).*(x+4));

Eth = (5./log(6))-4;
Eemp = mean(X);
sigth = sqrt;
sigemp = std(X);


figure(1);
hold on;
histogram(X,'Normalization','pdf');
plot(x,f,'LineWidth',2);
axis([a b 0 0.6]);


fprintf('Moyenne theorique : %f,\t Moyenne empirique : %f\n',Eth,Eemp);
fprintf('Ecart type theorique : %f,\t Ecart type empirique : %f\n',sigth,sigemp);


%% 2)


N = 50000;
a = 0;
b = 2;
c = 4;



Y1 = 0.5 .* rand(1,N);
Y2 = 0.5 .* rand(1,N) + 0.5;
X1 = sqrt(8.*Y1);
X2 = 4 - sqrt(8-8.*Y2);
X = [X1 X2];


x1 = a:0.1:b;
f1 = x1./4;
x2 = b:0.1:c;
f2 = (4-x2)./4;
x = [x1 x2];
f = [f1 f2];


mu_th = 2;
mu_emp = mean(X);
sig_th = sqrt(2/3);
sig_emp = std(X);


figure(2);
hold on;
histogram(X,'Normalization','pdf');
plot(x,f,'LineWidth',2);
axis([a c 0 0.5]);



fprintf('Moyenne theorique : %f,\t Moyenne empirique : %f\n',mu_th,mu_emp);
fprintf('Ecart type theorique : %f,\t Ecart type empirique : %f\n',sig_th,sig_emp);





