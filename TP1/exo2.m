clear variables;
close all;
%{
Programme qui traite de la méthode de monte carlo
%}

%Fonctions anonymes de la partie 1
mitrailleuse = @(nb) rand(nb,2)
fonctioncercle = @(ant) sqrt(1-ant^2)

%Fonctions anonymes de la partie 2
mitrailleuseABS = @(nb) ones(nb,1)*exp(1)-(exp(1)-1)*rand(nb,1)
mitrailleuseORD = @(nb) ones(nb,1)*0.5-(0.5)*rand(nb,1)
%A vertu a être utilisée avec des scalaires (pas de ./)
fonction1 = @(ant) log(ant)/(ant^2)

question = 3
switch question;
  case 1
    x = linspace(0,1,1000);
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
    %{
    Pour réaliser le calcul théorique on réalise une IPP
    ou on utilise wolframalpha XD
    on obtient (e-2)/e qui vaut a peu pres 0,26424
    %}
    x=linspace(1,exp(1),1000)
    y = log(x)./(x.^2);
    nbtirs=7000
    tirsABS = mitrailleuseABS(nbtirs);
    tirsORD = mitrailleuseORD(nbtirs);
    tirs=[tirsABS,tirsORD]
    %=====Affichage=====
    figure(1); hold on;
    %trace le cercle
    plot(x,y,'x');
    hold on;
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
      if tirs(i,2) < fonction1(tirs(i,1));
        touche=touche+1
      end
    end
    %=================
    %=====Resultats=====
    integ = touche/nbtirs*(0.5*(exp(1)-1));
    text1 = sprintf('Nombre total de points : %d', nbtirs);
    text2 = sprintf('Nombre de points dans le quadrant : %d', touche);
    text3 = sprintf('Valeur approximative de l''intégrale : %f', integ);
    disp('APPROXIMATION DE PI (METHODE DE MONTE-CARLO)')
    disp(text1)
    disp(text2)
    disp(text3)
    %===================
    
  case 3
    %{
    La valeur théorique de la double intégrale est approximativement
    0.06667
    %}
    %=====Affichage=====
    [x,y] = meshgrid(1:.05:5);
    Courbe = 1./(x+y).^3;
    figure(1)
    hold on;
    mesh(x,y,Courbe)
    view(-131,22)
    grid on;
    xlim([1,3])
    xlabel('x')
    ylim([2,5])
    ylabel('y')
    zlim([0,0.04])
    zlabel('$\displaystyle 1/(x+y)^3$','interpreter','latex')
    %===================
    %Code appartenant à Axel calculs des points dans
    %La structure itérative
    NombrePoint = 10000;
    NombrePointSousLaCourbe = 0;
    for i = 1:NombrePoint
      Point = [1+2*rand(1), 2+2*rand(1), 0.04*rand(1)];
      if Point(3) < 1/(Point(1)+Point(2)).^3
        color = [0,1,0];
        NombrePointSousLaCourbe = NombrePointSousLaCourbe + 1;
      else
        color = [1,0,0];
      end
            plot3(Point(1), Point(2), Point(3), '*', 'color', color)
    end
  ValeurExacteCourbe = 2/75
  ValeurEmpiriqueCourbe = NombrePointSousLaCourbe/NombrePoint * 2*2*0.04;
  text1 = sprintf('Nombre total de points : %d', NombrePoint);
  text2 = sprintf('Nombre de points sous la courbe : %d', NombrePointSousLaCourbe);
  text3 = sprintf('Valeur approximative de l''int�grale : %f', ValeurEmpiriqueCourbe);
  disp('VALEUR APPROXIMATIVE D''UNE INTEGRALE')
  disp(text1)
  disp(text2)
  disp(text3) 
end
