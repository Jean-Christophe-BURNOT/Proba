%% TP 2: Probabilité discrète
clear variables;
close all;

n = 8;

% empirique
tirages = 10000;

exp = deuxboules(n, tirages);
Xem = zeros(tirages, 1);
for i=1:tirages
    Xem(i) = min(exp(i, :));
end

% théorique
k = 1:1:8;
Xth = 2/n * (n-k)/(n-1);

figure(1)

histogram(Xem, 'Normalization', 'probability');
hold on;
bar(k, Xth);

legend('empirique', 'théorique')
title(sprintf('Tirages de %d couples de boules', tirages));
xlabel('k');
ylabel('P(X=k)');

ylim([0, 0.3]);

txt = {
    sprintf('%d boules\n', n)
    sprintf('%d expériences\n', tirages)
    sprintf('E(X)_{em} = %f\n', mean(Xem))
    sprintf('E(X)_{th} = %f\n', (n+1)/3)
    sprintf('\\sigma(X)_{emp} = %f\n', std(Xem))
    sprintf('\\sigma(X)_{th} = %f\n', sqrt((n^2 - n -2)/18))
};
text(6, 0.165, txt); 