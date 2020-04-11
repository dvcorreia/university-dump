%% TRABALHO PRÁTICO 4
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 2.
% a.
    clear; clc; close all;
    
    fa = 250;
    signal = load('ecgDrift.txt');
    
    signalLength = length(signal)/fa;
    tt = 0 : 1/fa : 1000/fa - 1/fa;

    plot(tt,signal,'r');
    title('Electrocardiograma (ECG) - h3 filter');
    xlabel('Time (s)');
    ylabel('Signal (mV)');
    grid on;
    
    h3 = [0.5 -0.5];
    y3 = conv(h3,signal);
    
    hold on;
    plot(tt,y3(1:end-1),'b');
    legend('ECG','conv(h3,ECG)');    
    
disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])