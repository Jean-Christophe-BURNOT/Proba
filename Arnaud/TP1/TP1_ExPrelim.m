clear variables;
close all;

%% exemple 1 : une liste de quelques nombres entiers compris entre 1 et 6
X=[1,3,6,6,1,3,3,6,1,3,6,6,3,1,3,3]; 

% histogramme des effectifs de X 
figure(1);
fprintf('===== Exemple 1 =====\n');
hX=histogram(X);   % hX contient un certains nombre d'informations comme par exemple ...
disp(['nombre de classes : ',num2str(hX.NumBins)]);  % ... le nombres de classes (il y en a 6 : 1 2 3 4 5 6)
disp(['les effectifs : ',num2str(hX.Values)]);       % ... et les effectifs par classe (4 fois 1, 0 fois 2, 7 fois 3, etc ...) 
fprintf('\n');

%% exemple 2 : une liste d'un grand nombre de valeurs aléatoires comprises entre 0 et 1 selon une loi uniforme
N=10000;
Y=rand(N,1);   % vecteur colonne (N lignes, 1 colonne)

% histogramme des effectifs de Y 
figure(2);
fprintf('===== Exemple 2 =====\n');
subplot(121);
hY=histogram(Y);   
title('Effectifs');
disp(['nombre de classes : ',num2str(hY.NumBins)]);  % le nombre de classes
disp(['les effectifs : ',num2str(hY.Values)]);       % les effectifs par classe
fprintf('\n');

% vérification qu'il s'agit bien d'un histogramme des effectifs
disp(['somme des effectifs : ', num2str(sum(hY.Values))]);  % cette somme doit être égale à N 
fprintf('\n');

% histogramme des probabilités de Y
subplot(122);
hY_prob=histogram(Y,'Normalization','probability');   
title('Probabilités');

disp(['nombre de classes : ',num2str(hY_prob.NumBins)]);  % le nombre de classes
disp(['les probabilités : ',num2str(hY_prob.Values)]);    % les probabilités par classe
fprintf('\n');

% vérification qu'il s'agit bien d'un histogramme de probabilités
disp(['somme des probabilités : ', num2str(sum(hY_prob.Values))]);  % cette somme doit être égale à 1 (somme de toutes les prob.)


