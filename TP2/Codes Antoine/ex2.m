%% TP2: Probabilités discrètes
clear variables;
close all;

%tests
n = 10;
p = 0.01;
fprintf('Uniforme %d\n',      LoiUniforme(n));
fprintf('Bernoulli %d\n',     LoiBernoulli(p));
fprintf('Binomiale %d\n',     LoiBinomiale(n, p));
fprintf('Géometrique %d\n',   LoiGeometrique(p));

%==== histograms
figure(1);
reps = 1e3;

%uniforme
n = 10;

subplot(2,2,1);
valUni = arrayfun( @(x)(LoiUniforme(n)), zeros(reps,1));
histogram(valUni, 'Normalization', 'probability');
hold on;
UniTh = ones(n,1)*1/n;
bar(UniTh);

title(sprintf('Loi uniforme, U(n=%d)', n));
xlabel('k')
ylabel('P(X=k)');
%ylim([0,1]);
legend('empirique', 'théorique')

%bernoulli
p = 0.8;

subplot(2,2,2);
valBer = arrayfun( @(x)(LoiBernoulli(p)), zeros(reps,1));
histogram(valBer, 'Normalization', 'probability');
hold on;
BerTh = [1-p, p];
bar([0,1], BerTh);

title(sprintf('Loi Bernoulli, B(p=%f)', p));
xlabel('k')
ylabel('P(X=k)');
%ylim([0,1]);
legend('empirique', 'théorique')

%binomiale
n = 10;
p = 0.8;

subplot(2,2,3);
valBin = arrayfun( @(x)(LoiBinomiale(n, p)), zeros(reps,1));
histogram(valBin, 'Normalization', 'probability');
hold on;
BinTh = zeros(n,1);
for k = 0:n
    kparmin = factorial(n) / (factorial(k) * factorial(n-k));
    BinTh(k+1) = kparmin * p^k * (1-p)^(n-k);
end
bar(0:1:n, BinTh);

title(sprintf('Loi Binomiale, B(n=%d, p=%f)', n, p));
xlabel('k')
ylabel('P(X=k)');
%ylim([0,1]);
legend('empirique', 'théorique')

%gemoetrique
p = 0.09;

subplot(2,2,4);
valGeo = arrayfun( @(x)(LoiGeometrique(p)), zeros(reps,1));
histogram(valGeo, 'Normalization', 'probability');
hold on;
nmax = max(valGeo);

k = 1:nmax;
GeoTh = p*(1-p).^(k-1);

bar(k, GeoTh);

title(sprintf('Loi Geometrique, G(p=%f)', p));
xlabel('k')
ylabel('P(X=k)');
%ylim([0,1]);
legend('empirique', 'théorique')