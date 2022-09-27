function val = deuxboules( n, tirages )
val = randi(n, tirages, 2) ;

for i=1:tirages
    while val(i, 1) == val(i, 2)
        val(i, 2) = randi(n);
    end
end

