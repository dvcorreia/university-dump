% Teste Prático 2
% Introdução à Análise e Processamento de Sinal
% 6 Junho de 2017

% Diogo Correia Nº76608
% dv.correia@ua.pt

% Intro - Despresar para termos de Avaliação
    clear all; close all; clc;
    disp('Teste Prático 1 - 18 Abril de 2017');
    disp('Introdução à Análise e Processamento de Sina');
    disp(['Diogo Correia Nº76608',10,'dv.correia@ua.pt',10]);
    
% 1. 
% a)
    signal = load('tonsB.txt');
    fa = 8e3; % Hz
    N = length(signal);
    
    figure('position',[0, 580, 540, 400] , 'Name','tonsB - Signal');
    tt = 0 : 1/fa : (N - 1)/fa;
    subplot(2,1,1);
    plot(tt , signal);
    title('tonsB Signal');
    xlabel('Time(s)'); ylabel('Amplitude');
    
    durDigit = N/2 /fa;
    disp('Exercise 1:');
    disp(['Digit Duration = ',num2str(durDigit),' s']);
    
 % b).
    subplot(2,1,2);
    firstDigit = signal(1:end/2);
    plot(tt(1:end/2) , firstDigit);
    title('First Digit');
    xlabel('Time(s)'); ylabel('Amplitude');
    
 % c).
    figure('position',[0, 100, 540, 400] , 'Name','First Digit');
    signalFFT = abs(fft(firstDigit));
    f = stem(signalFFT); f.Marker = 'none';
    title('First Digit FFT');
    
    delta = 500;
    ind = find(signalFFT(1:end/2) > delta) - 1;
    freq = ind([1 , 3]) .*  fa/(N/2);
    disp(['As frequências do Digito são: ',num2str(freq + 1),'Hz']);
    disp(['O digito é o 3!']);
    
 % 2.
 % a).
    acordes = load('acordesB.txt');
    fa = 8e3; % Hz
    N = length(signal);
    
    df = fa/N;
    
    figure('position',[540, 580, 540, 400] , 'Name','FFT acordesB');
    acordesFFT = abs(fft(acordes));
    f = stem(acordesFFT); f.Marker = 'none';
    title('AcordesB FFT');
    
    signalCropFFT = acordesFFT(300/df : 400/df);
    signalCrop = ifft(signalCropFFT);
    Energy = sum(signalCrop.^2);
    disp(['Signal [300 - 400 Hz] Energy = ',num2str(Energy)]);
    
  % b).
    ff = 0 : df : fa;
    ff = ff - ff(end)/2;
    f = stem(ff(1:end-1),acordesFFT); f.Marker = 'none';
    xlabel('Frequêncy(Hz)');
    
  % c).
    hfs = fa/2;
    [N1 , D1] = butter(4, 500/hfs); % Filtro passa-baixo c/ polo aos 500 Hz
    s1 = filter(N1 , D1 , acordes);
    
    figure('position',[540, 100, 540, 400] , 'Name','Filtered Signals');
    subplot(2,1,1);
    plot(tt,s1); title('S1 Signal');
    xlabel('Time(s)'); ylabel('Amplitude');
    
  % d).    
    [N2 , D2] = butter(3, [500 1000]./hfs); % Filtro Passa-banda [500 - 1000 Hz]
    s2 = filter(N2 , D2 , acordes);

    subplot(2,1,2);
    plot(tt,s1); title('S2 Signal');
    xlabel('Time(s)'); ylabel('Amplitude');
    
% Filter 2 response Test
%     figure; 
%     fv = 0:50:2000;
%     plot(fv,freqz(N2 , D2 , fv , fa));
    
    
    
    