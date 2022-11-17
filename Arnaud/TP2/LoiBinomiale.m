function [nbSuccess] = LoiBinomiale(n,p)
nbSuccess = 0;
for i=1:n
    nbSuccess = nbSuccess + LoiBernoulli(p);
end
end