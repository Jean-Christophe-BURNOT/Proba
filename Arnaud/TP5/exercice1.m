clear variables;
close all;



N = 50000;

U1 = rand(1,N);
U2 = rand(1,N);

X = sqrt(-2.*log(U1)).*cos(2.*pi.*U2);
Y = sqrt(-2.*log(U1)).*sin(2.*pi.*U2);

% figure(1);
% subplot(1,2,1);
% histogram(X,'Normalization','pdf');
% subplot(1,2,2);
% histogram(Y,'Normalization','pdf');



mu = 4;
sigma = 3;

x = -15:0.1:20;
y = (1/(sigma*sqrt(2*pi)))*exp(-((x-mu).^2)./(2*(sigma^2)));

Z = sqrt(-2.*log(U1)).*cos(2.*pi.*U2);
W = sigma.*Z + mu;


figure(2);
hold on;
plot(x,y);
histogram(W,'Normalization','pdf');






