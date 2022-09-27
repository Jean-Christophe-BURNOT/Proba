function y = LoiBinomiale(n, p)
    y = 0;
    for i=1:n
        if LoiBernoulli(p)
            y = y + 1;
        end
    end
end

