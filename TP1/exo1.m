clear variables;
%{
Programme principal:
Resolution du theorique du probleme à faire
%}

part = 3;
switch part
    case 1
    
        resultats = LancerDeSixFaces(100000);
        figure(1);
        histogram(resultats,'normalization','probability');
    
    %joueurA
    case 2
        cpt=0;
        N = 1000;
        for k = 1:N;
            X = LancerDeSixFaces(4);
            if max(X) == 6;
                cpt=cpt+1;
            end
        end
        prob_emp = cpt/N;
        prob_th = 1- (5/6)^4;
        fprintf("Cas joueur A \n")
        fprintf("La probabilité empirique est %f \n",prob_emp)
        fprintf("La probabilité théorique est %f \n",prob_th)
        
    %joueurB
    case 3
        cpt=0;
        N= 1000;
        for k = 1:N;
            %lancer du premier de
            X1 = LancerDeSixFaces(24);
            %lancer du second de
            X2 = LancerDeSixFaces(24);
            %Permet la vérification complète
            Xtot= X1*10 + X2;
            if max(Xtot) == 66;
                cpt=cpt+1;
            end
        end
        prob_emp = cpt/N;
        prob_th = 1-(35/36)^24;
        fprintf("Cas joueur B \n")
        fprintf("La probabilité empirique est %f \n",prob_emp)
        fprintf("La probabilité théorique est %f \n",prob_th)
end
        