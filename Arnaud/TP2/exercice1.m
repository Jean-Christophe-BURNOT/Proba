clear variables;
close all;


N = 15000; %nombre d'expériences

n = 15; %nombre de boules


%Empirique
X = zeros(1,N);

for i=1:N
    boules = [randi(n),randi(n)];
    while boules(1) == boules(2)
        boules = [randi(n),randi(n)];
    end
    X(i) = min(boules);
end

Eemp = mean(X)
sigemp = std(X)


%Théorique

k = 1:1:n;
Pk = (2.*(n-k))./(n.*(n-1));


Eth = (n+1)/3
Vth = (n^2-n-2)/18;
sigth = sqrt(Vth)


figure(1);
hold on;
histogram(X,'Normalization','probability');
bar(k,Pk,'BarWidth',0.5,'FaceColor','red');



