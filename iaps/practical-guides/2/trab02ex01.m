%% TRABALHO PR�TICO 2
% Diogo Correia N�76608
% dv.correia@ua.pt

%% 1. y = Amplitude * sin (wt)- offsetY 
%     y = Amp * sin (2pi f t) - offsetY , f -> frequ�ncia
% a)    
    clear; clc; 
    syms t;
    f = inline('(3/2)*sin(2*pi*5*t)-0.5');
    tt = linspace(0,0.5,100);
    plot(tt,f(tt),'r');
    grid on;
    disp(['Est�o representados 2,5 per�odos', 10]);
    
% b) frequencia de amostragem = 1/(tempo / n� amostras)
    fa = 1 / (0.5/100);
    disp(['Frequ�ncia de amostragem: ', num2str(fa) ,'Hz', 10]);
    
% c)
    % valor m�dio do sinal � a m�dia das amostras de amplitude do sinal
    mediaP = mean(f(tt));
    disp(['Valor m�dio pr�tico do sinal: ' , num2str(mediaP)]);
    % valor m�dio do sinal anal�gico � (Ym�x + Ymin) / 2
    mediaT = (1 + (-2))/2;
    disp(['Valor m�dio te�rico do sinal: ' , num2str(mediaT), 10]);
    
    % O que acontece � que na pr�tica nunca iremos obter um valor m�dio
    % pr�tico igual ao te�rico visto que estamos a quantizar um sinal
    % anal�gico. Por mais amostras que consigamos s� vamos conseguir
    % melhorar a aproxima��o do sinal mas nunca vamos obter o sinal
    % anal�gico perfeito.
  
% d)
    energyP = sum(f(tt).^2); 
    disp(['Energia do sinal pr�tico: ' , num2str(energyP)]);
    energyT = integral( @(t) f(t).^2 , 0 , 0.5 );
    disp(['Energia do sinal te�rico: ' , num2str(energyT)]);
    
    disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])
   
    