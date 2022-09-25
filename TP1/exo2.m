clear variables;
close all;
%{
Programme qui traite de la méthode de monte carlo
%}

%Valeur des antécédants
x = linspace(0,1,1000);

%Fonctions anonymes de la partie 1
mitrailleuse = @(nb) rand(nb,2)
fonctioncercle = @(ant) sqrt(1-ant^2)

question = 1
switch question;
  case 1
    %j'ai défini fonctioncercle après pour les calculs
    y = sqrt(1-x.^2);
    nbtirs=10000
    tirs = mitrailleuse(nbtirs);    
    %=====Affichage=====
    figure(1); hold on;
    %trace le cercle
    plot(x,y,'x'); hold on;
    %trace les points
    scatter(tirs(:,1),tirs(:,2));
    title("Méthode de Monte-Carlo");
    %===================
    %=====Calculs=====
    touche=0
    %{
    Comme je n'utilise pas la même série
    de point pour faire mes tirs et mon cercle
    je vais devoir créer les images des antécédants
    utilisées par les tirs pour comparer
    
    On aurais pu utiliser la norme des points puisque
    on se base sur le point (0,0)
    %}
    for i=1:nbtirs
      if tirs(i,2) < fonctioncercle(tirs(i,1));
        touche=touche+1
      end
    end
    %=================
    %=====Resultats=====
    ppi = touche/nbtirs * 4;
    text1 = sprintf('Nombre total de points : %d', nbtirs);
    text2 = sprintf('Nombre de points dans le quadrant : %d', touche);
    text3 = sprintf('Valeur approximative de pi : %f', ppi);
    disp('APPROXIMATION DE PI (METHODE DE MONTE-CARLO)')
    disp(text1)
    disp(text2)
    disp(text3)
    %===================
    
  case 2
    
    
    
    
    
    
    
    
end
