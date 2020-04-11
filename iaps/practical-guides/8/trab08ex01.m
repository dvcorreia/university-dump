%% TRABALHO PRÁTICO 8
% Diogo Correia Nº76608
% dv.correia@ua.pt

% Exercício 1

clear; close all; clc;

signal = load('mistura1.txt');
fa = 22050;
N = length(signal);

figure('position',[0, 50, 440, 940] , 'Name','Mistura 1 Signal');
tt = 0 : 1 / fa : (N - 1) / fa;
subplot(5,1,1); plot(tt , signal);
title('Original Signal'); 
xlabel('Time(s)'); ylabel('Amplitude');


hfs = fa/2; % Hz

% a).    
    % o butter usa frequências normalizadas (entre 0 e 1)
    % a divisão por hfe é para normalizar, porque hfe vai ser a freq max
    % hfe = freq de Nyquist = fmax = fa/2
    
    [N1, D1] = butter(3, 500/hfs);
    [N2, D2] = butter(3, [1000 7000]./hfs);
    [N3, D3] = butter(4, 3000/hfs);
    
    y1 = filter(N1 , D1 , signal);
 
    subplot(5,1,2); plot(tt , y1);
    title('Original Signal w/ H1 Filter (ECG)');
    xlabel('Time(s)'); ylabel('Amplitude');  
    
% b).
    fv = [0, 50, 100, 200, 300, 1000, 2000];
    H1 = freqz(N1 , D1 , fv , fa);
    
    figure('position',[450, 50, 440, 940] , 'Name','Filters Freq. Response');
    subplot(4,1,1); semilogx(fv , abs(H1));
    title('H1 Filter freq. Response'); grid on;
    xlabel('Frequêncy(Hz)'); ylabel('Amplitude');

% c).    
    fv = 0 : 50 : 10000;
    H2 = freqz(N2 , D2 , fv , fa);
    subplot(4,1,2); semilogx(fv , abs(H2));
    grid on; xlabel('Frequêncy(Hz)'); ylabel('Amplitude');
    title('H2 Filter freq. Response');

% d).
    y2 = filter(N2 , D2 , signal);
    figure(1) ; subplot(5,1,3);
    plot(tt , y2); title('Original Signal w/ H2 Filter');
    xlabel('Time(s)'); ylabel('Amplitude');
    axis([0 max(tt) -1 1]);

% e).
    y3 = filter(N3 , D3 , signal);
    subplot(5,1,4); plot(tt , y3);
    plot(tt , y2); title('Original Signal w/ H3 Filter');
    xlabel('Time(s)'); ylabel('Amplitude'); axis([0 max(tt) -1 1]);

    figure(2);
    fv = 0 : 50 : 10000;
    H3 = freqz(N3 , D3 , fv , fa);
    subplot(4,1,3); semilogx(fv , real(H3));
    title('H3 Filter freq. Response'); grid on;
    xlabel('Frequêncy(Hz)'); ylabel('Amplitude');
    
    subplot(4,1,4);
    impz(N3 , D3); % resposta impulsional
    title('H3 Impulse Response');

% f).
    fc = 4000; % frequência de modulação
    audio = filter(N2 , D2 , signal);
    x = audio' .* cos(2*pi * fc * tt + pi/3);
    audio = filter(N3 , D3 , x);
    
    figure(1); subplot(5,1,5); plot(tt , audio);
    title('Audio Signal'); xlabel('Time(s)'); ylabel('Amplitude');
    % sound(audio,fa);