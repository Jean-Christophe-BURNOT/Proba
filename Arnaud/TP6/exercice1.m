clear variables;
close all;



N = 50000;


x = 0:0.1:16;
u = x.* exp(-x);


X = -log(1-rand(1,N));
Y = -log(1-rand(1,N))./2;

U = X+2*Y;


figure(1);
hold on;
histogram(U,'Normalization','pdf');
plot(x,u,'LineWidth',2);

Eemp = mean(U);
Eth = 1+2*(1/2);
Vemp = std(U)^2;
Vth = 1+4*(1/2^2);

disp(Eemp);
disp(Eth);
disp(Vemp);
disp(Vth);



