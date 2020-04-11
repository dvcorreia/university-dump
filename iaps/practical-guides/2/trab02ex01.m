%% TRABALHO PRÁTICO 2
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 1. y = Amplitude * sin (wt)- offsetY 
%     y = Amp * sin (2pi f t) - offsetY , f -> frequência
% a)    
    clear; clc; 
    syms t;
    f = inline('(3/2)*sin(2*pi*5*t)-0.5');
    tt = linspace(0,0.5,100);
    plot(tt,f(tt),'r');
    grid on;
    disp(['Estão representados 2,5 períodos', 10]);
    
% b) frequencia de amostragem = 1/(tempo / nº amostras)
    fa = 1 / (0.5/100);
    disp(['Frequência de amostragem: ', num2str(fa) ,'Hz', 10]);
    
% c)
    % valor médio do sinal é a média das amostras de amplitude do sinal
    mediaP = mean(f(tt));
    disp(['Valor médio prático do sinal: ' , num2str(mediaP)]);
    % valor médio do sinal analógico é (Ymáx + Ymin) / 2
    mediaT = (1 + (-2))/2;
    disp(['Valor médio teórico do sinal: ' , num2str(mediaT), 10]);
    
    % O que acontece é que na prática nunca iremos obter um valor médio
    % prático igual ao teórico visto que estamos a quantizar um sinal
    % analógico. Por mais amostras que consigamos só vamos conseguir
    % melhorar a aproximação do sinal mas nunca vamos obter o sinal
    % analógico perfeito.
  
% d)
    energyP = sum(f(tt).^2); 
    disp(['Energia do sinal prático: ' , num2str(energyP)]);
    energyT = integral( @(t) f(t).^2 , 0 , 0.5 );
    disp(['Energia do sinal teórico: ' , num2str(energyT)]);
    
    disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])
   
    