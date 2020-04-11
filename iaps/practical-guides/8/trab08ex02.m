%% TRABALHO PRÁTICO 8
% Diogo Correia Nº76608
% dv.correia@ua.pt

% Exercício 2

clear; close all; clc;

a = [0.5 0.9 1 1.5 -1 -0.9 -0.5];

figure('position',[0, 100, 900, 880] , 'Name','none');
for i = 1 : length(a)
    D = [1 , -a(i)];
    subplot(4,2,i);
    impz(1 , D);
    title(['Impulse Response (',num2str(a(i)),')']);
end