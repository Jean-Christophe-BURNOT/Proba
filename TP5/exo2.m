clear variables;
close all;
clc;
%{
Programme qui utilise le théorème centrale limite
%}

%Loi de base du théorème central limite
loi = [3,4,5,6,7,8;4/20,1/20,3/20,7/20,2/20,3/20];
figure(1)
bar(loi(1,:),loi(2,:));

