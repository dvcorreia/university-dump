%% TRABALHO PRÁTICO 2
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 2.
% 5 ciclos x(n) sin de 50Hz , fase pi/3.
% frequência de amostragem 1KHz
% a)
    clear; clc; close all;
    
    f = 50;
    T = 1/50;
    fa = 1000;
    Ta = 1/1000;
    
    n = 0 : Ta : T*5;
    x = sin(2*pi*f*n + pi/3);
    subplot(3,1,1);
    plot(n,x);
    title('wave');
    
    % 4 bits são 2^3 valores representáveis = 8 valores
    nbits = 4;
    ndecimal = 2^nbits - 1;
    xnormalized = round(x*ndecimal)/ndecimal;
    subplot(3,1,2);
    plot(n,xnormalized,'r');
    title('wave normalized');
    
% b) 

    x_error = x - xnormalized;
    Er = sum(x_error.^2);
    disp(['nbits: ' , num2str(nbits) , ' || Error Energy (Er): ' , num2str(Er)]);
    
% c) Calculo da SNR

    Es = sum(xnormalized.^2);
    SNR = 10 * log10(Es/Er);
    disp(['nbits: ' , num2str(nbits) , ' || SNR: ' , num2str(SNR) , ' dB' , 10]);
    
% d) Repetir b) - d) para 6,8 e 10 bits
    % array to save values for e)
    arraySNR = zeros(1,4);
    arraySNR(1) = SNR;
    
    nbitsA = [6 8 10];
    for i = 1 : 1 : length(nbitsA)
        nbits = nbitsA(i);
        ndecimal = 2^nbits - 1;
        xnormalized = round(x/ndecimal)*ndecimal;
        
        %b)
        x_error = x - xnormalized;
        Er = sum(x_error.^2);
        disp(['nbits: ' , num2str(nbits) , ' || Error Energy (Er): ' , num2str(Er)]);
        
        % c)
        Es = sum(xnormalized.^2);
        SNR = 10 * log10(Es/Er);
        disp(['nbits: ' , num2str(nbits) , ' || SNR: ' , num2str(SNR) , ' dB' , 10]);   
        arraySNR(i + 1) = SNR;
    end
    
    disp(['Com o aumento do númeor de bits o SNR diminui.']);

% e)
    nbitsA = [4 6 8 10];
    subplot(3,1,3);
    
    graph = plot(nbitsA, arraySNR);
    hold on; grid on;
    graph6_02 = plot(nbitsA,nbitsA * 6.02);
    
    set(graph,'Marker','square');
    set(graph6_02,'Marker','square');
    title('alínea e)');
    legend('SNR prático' , 'SNR 6.02b');
    
disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])