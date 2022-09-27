function n=LoiGeometrique(p)
    n = 1;
    
    y = LoiBernoulli(p);
    while y == 0
        n = n + 1;
        y = LoiBernoulli(p);
    end
end