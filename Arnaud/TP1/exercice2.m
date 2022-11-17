clear variables;
close all;

%% 1)

N = 500; %nombre de fléchettes

v = 0; %nombre de fléchettes dans le cadran

X = rand(1,N);
Y = rand(1,N);

figure(1);
for i=1:N
    if sqrt(X(i)^2+Y(i)^2) <= 1
        hold on;
        plot(X(i),Y(i),'g*');
        v = v+1;
    else
        hold on;
        plot(X(i),Y(i),'r*');
    end
end

hold on;
theta = linspace(0,pi/2);
x = cos(theta);
y = sin(theta);
plot(x,y)


axis equal;

disp('Fléchettes dans le cercle :')
disp(v);

disp('Approximation de pi :')
app_pi = (v/N)*4;


disp(app_pi);


%% 2)

N = 2000; %nombre de fléchettes

v = 0; %nombre de fléchettes dans l'intégrale

X = 1+(exp(1)-1).*rand(1,N);
Y = 0.5*rand(1,N);

figure(2);
for i=1:N
    if Y(i) <= (log(X(i))/(X(i)^2))
        hold on;
        plot(X(i),Y(i),'g*');
        v = v+1;
    else
        hold on;
        plot(X(i),Y(i),'r*');
    end
end

hold on;
x = linspace(1,exp(1));
y = log(x)./(x.^2);
plot(x,y)

integrale = (v*0.5*(exp(1)-1))/N;

disp('Fléchettes dans le cercle :')
disp(v);

disp('Approximation de l integrale :')
disp(integrale);


%% 3)


N = 1000; %nombre de fléchettes

v = 0; %nombre de fléchettes dans l'intégrale

X = 1+2.*rand(1,N);
Y = 2+13*rand(1,N);
Z = 0.05*rand(1,N);

figure(3);

for i=1:N
    if Z(i) <= 1/((X(i)+Y(i))^3)
        hold on;
        plot3(X(i),Y(i),Z(i),'g*');
        v = v+1;
    else
        hold on;
        plot3(X(i),Y(i),Z(i),'r*');
    end
end





