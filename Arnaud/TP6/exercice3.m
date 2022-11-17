clear variables;
close all;


N = 100000;


X1 = rand(1,N);
Y1 = rand(1,N);

Z1 = min(X1,Y1);
T1 = max(X1,Y1);


x1 = 0:0.1:1;
z1 = 2 .* (1 - x1);
t1 = 2 .* x1;


figure(1);
subplot(1,2,1);
hold on;
histogram(Z1,'Normalization','pdf');
plot(x1,z1,'LineWidth',2);
subplot(1,2,2);
hold on;
histogram(T1,'Normalization','pdf');
plot(x1,t1,'LineWidth',2);



lambda = 1;


X2 = -log(1-rand(1,N))./lambda;
Y2 = -log(1-rand(1,N))./lambda;

Z2 = min(X2,Y2);
T2 = max(X2,Y2);


x2 = 0:0.01:3;
z2 = 2.*lambda.*exp(-2.*lambda.*x2);
t2 = 2.*lambda.*exp((-1).*lambda.*x2).*(1-exp(-lambda.*x2));


figure(2);
subplot(1,2,1);
hold on;
histogram(Z2,'Normalization','pdf');
plot(x2,z2,'LineWidth',2);
subplot(1,2,2);
hold on;
histogram(T2,'Normalization','pdf');
plot(x2,t2,'LineWidth',2);





