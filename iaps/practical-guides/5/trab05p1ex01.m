%% TRABALHO PRÁTICO 5
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% Parte 1.
    clear; clc; close all;
    
    f1 = 15; % Hz
    f2 = 40; % Hz
    
    N = 1000;           % nº de amostras
    duration = 2;       % s
    fa = N / duration;  % frequência de amostragem
    
    % tt = 0 : 1/fa : 1000/fa - 1/fa;
    tt = linspace(0 , duration , N);
    
    sin1 = sin(2*pi * f1 * tt);
    sin2 = sin(2*pi * f2 * tt);
    
    sinx = sin1 + sin2;
    
    subplot(2,1,1);
    plot(tt , sinx);
    xlabel('time(s)');
    ylabel('amplitude');
    title('Signal');
    
    subplot(2,1,2);
    fftv = abs(fft(sinx));
    stem(fftv);
    title('FFT');
    
    ind = find (fftv > 100);
    freq = (ind(1:2) - 1) * fa / N;
    disp(['frequências = ' , num2str(freq),' Hz']);