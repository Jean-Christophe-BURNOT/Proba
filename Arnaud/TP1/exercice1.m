clear variables;
close all;


%% 1)
X = LancerDeSixFaces(10);

figure(1);
hX = histogram(X);

%% 2)
N = 10000; %nombre de simulations

% jeu A
nA = 0;
for i=1:N
    A = LancerDeSixFaces(4);
    if max(A)==6
        nA = nA+1;
    end
end
disp("Probabilité de A :")
disp(nA/N)


% jeu B
nB = 0;
for i=1:N
    B1 = LancerDeSixFaces(24);
    B2 = LancerDeSixFaces(24);
    B = B1+B2;
    if max(B)==12
        nB = nB+1;
    end
end
disp("Probabilité de B :")
disp(nB/N)

