function [X] = LancerDeSixFaces(n)

X = zeros(1,n);

for i=1:n
    X(i) = randi(6);
end

end