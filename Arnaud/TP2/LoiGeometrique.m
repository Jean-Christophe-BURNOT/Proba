function [n] = LoiGeometrique(p)
n = 1;
while LoiBernoulli(p) == 0
    n = n + 1;
end
end