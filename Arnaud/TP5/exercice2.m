clear variables;
close all;


k1 = [3,4,5,6,7,8];
P1 = [4/20,1/20,3/20,7/20,2/20,3/20];

k1 = -5:1:4;
P1 = (1/10).*ones(1,10);
k1 = 1:1:20;
p = 1/3;
P1 = (1-p).^(k1-1).*p;


P2 = conv(P1,P1);
k2 = k1(1)*2:1:k1(1)*2+length(P2)-1;


n = 10;
P3 = P1;
for i=1:n
    P3 = conv(P3,P1);
end
k3 = 3*n:1:length(P3)+3*n-1;

E = sum(k3.*P3);
E = 1/p;
V = sum(((k3-E).^2).*P3);
V = (1-p)./(p.^2);
sig = sqrt(V);


% x = E-(5*sig):0.1:E+(5*sig);
% y = (1/(sig*sqrt(2*pi)))*exp(-((x-E).^2)./(2*(sig^2)));



figure(1);
subplot(3,1,1);
bar(k1,P1);
subplot(3,1,2);
bar(k2,P2);
subplot(3,1,3);
hold on;
bar(k3,P3);
% plot(x,y,'LineWidth',2);


disp(E);
disp(sig);


