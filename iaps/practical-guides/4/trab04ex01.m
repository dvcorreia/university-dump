%% TRABALHO PRÁTICO 4
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 1.
% a.
    clear; clc; close all;

    fa = 250;
    signal = load('ecg1.txt');
    
    signalLength = length(signal)/fa;
    
    % t_inicial : Ta : t_final = 0 : 1/fa : nºamostras/fa
    
    % ñ esquecer de retirar o ultimo valor do array para
    % ter 1000 amostras (por causa da descretização)
    
    tt = 0 : 1/fa : 1000/fa - 1/fa;
    
    subplot(2,1,1);
    plot(tt,signal,'r');
    title('Electrocardiograma (ECG) - h1 filter');
    xlabel('Time (s)');
    ylabel('Signal (mV)');
    grid on;
    
    % bpm = nº de pulsos / duração da amostra de sinal * 60 segundos
    bpm = histc(signal,1) / signalLength * 60 ;
    disp(['Batimento Cardíaco: ' , num2str(bpm) , ' bpm/min']);
    
% b.
    h1 = [0.5 0.5]; % [h1(0) h1(1)]
    y1 = conv(h1,signal);
    
    hold on;
    plot(tt,y1(1:end-1),'b');
    legend('ECG','conv(h1,ECG)');

% c.
    h2 = repmat(0.25,1,4); % [h2(0) h2(1) h2(2) h2(3)]
    y2 = conv(h2,signal);
    subplot(2,1,2);
    plot(tt,signal,'r');
    hold on;
    plot(tt,y2(1:end-3),'g');
    legend('ECG','conv(h2,ECG)');
    title('Electrocardiograma (ECG) - h2 filter');
    
disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])