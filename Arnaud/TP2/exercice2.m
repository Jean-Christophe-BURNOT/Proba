clear variables;
close all;


%loi = input('Loi à tester : ', 's');
loi = 'Geometrique';

switch loi 

    case 'Uniforme'
        
        N = 10000;

        n = input('Paramètre n : ');

        %Empirique
        X = zeros(1,N);
        for i=1:N
            X(i) = LoiUniforme(n);
        end

        Eemp = mean(X)
        sigemp = std(X)
            
        %Théorique
        k = 1:1:n;
        Pk = (1/n)*ones(1,n);

        Eth = (n+1)/2
        Vth = (n^2-1)/12;
        sigth = sqrt(Vth)


        figure(1);
        hold on;
        histogram(X,'Normalization','probability');
        bar(k,Pk,'BarWidth',0.5,'FaceColor','red');
        title(loi);


    case 'Bernoulli'

        N = 10000;

        p = input('Paramètre p : ');

        %Empirique
        X = zeros(1,N);
        for i=1:N
            X(i) = LoiBernoulli(p);
        end

        Eemp = mean(X)
        sigemp = std(X)
            
        %Théorique
        k = [0,1];
        Pk = [1-p,p];

        Eth = p
        Vth = p*(1-p);
        sigth = sqrt(Vth)


        figure(1);
        hold on;
        histogram(X,'Normalization','probability');
        bar(k,Pk,'BarWidth',0.5,'FaceColor','red');
        title(loi);


    case 'Binomiale'

        N = 10000;

        n = input('Paramètre n : ');
        p = input('Paramètre p : ');

        %Empirique
        X = zeros(1,N);
        for i=1:N
            X(i) = LoiBinomiale(n,p);
        end

        Eemp = mean(X)
        sigemp = std(X)
            
        %Théorique
        k = 1:1:max(X);
        Pk = (factorial(n)./(factorial(k).*factorial(n-k))).*(p.^k).*((1-p).^(n-k));

        Eth = n*p
        Vth = n*p*(1-p);
        sigth = sqrt(Vth)


        figure(1);
        hold on;
        histogram(X,'Normalization','probability');
        bar(k,Pk,'BarWidth',0.5,'FaceColor','red');
        title(loi);


    case 'Geometrique'

        N = 10000;

        p = input('Paramètre p : ');

        %Empirique
        X = zeros(1,N);
        for i=1:N
            X(i) = LoiGeometrique(p);
        end

        Eemp = mean(X)
        sigemp = std(X)
            
        %Théorique
        k = 1:1:max(X);
        Pk = ((1-p).^(k-1))*p;

        Eth = p
        Vth = p*(1-p);
        sigth = sqrt(Vth)


        figure(1);
        hold on;
        histogram(X,'Normalization','probability');
        bar(k,Pk,'BarWidth',0.5,'FaceColor','red');
        title(loi);

end


