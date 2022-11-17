clear variables;
close all;


N = 100000;


X = 1 + rand(1,N);
Y = 1 + rand(1,N);

S = X + Y;
P = X.*Y;
Q = X./Y;


xs1 = 2:0.1:3;
xs2 = 3:0.1:4;
s1 = xs1 - 2;
s2 = 4 - xs2;
xs = [xs1,xs2];
s = [s1,s2];

xp1 = 1:0.1:2;
xp2 = 2:0.1:4;
p1 = log(xp1);
p2 = 2*log(2) - log(xp2);
xp = [xp1,xp2];
p = [p1,p2];

xq1 = 0.5:0.1:1;
xq2 = 1:0.1:2;
q1 = 2 - (1./(2*(xq1.^2)));
q2 = 2./(xq2.^2) - 0.5;
xq = [xq1,xq2];
q = [q1,q2];


figure(1);
subplot(2,2,1);
histogram(X,'Normalization','pdf');
subplot(2,2,2);
hold on;
histogram(S,'Normalization','pdf');
plot(xs,s,'LineWidth',2);
subplot(2,2,3);
hold on;
histogram(P,'Normalization','pdf');
plot(xp,p,'LineWidth',2);
subplot(2,2,4);
hold on;
histogram(Q,'Normalization','pdf');
plot(xq,q,'LineWidth',2);





