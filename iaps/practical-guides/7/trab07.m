%% TRABALHO PRÁTICO 7
% Diogo Correia Nº76608
% dv.correia@ua.pt

clear; close all; clc;
fa = 22050; % Hz
fc = 4e3; % Hz
signal = load('mistura1.txt');
N = length(signal);
freqmax = 4e3 + 3e3;

% Sinal da ECG Banda Base & < 500 Hz
% Sinal áudio freq_max = 3 KHz --> modulado em amp fp = 4KHz

% 1.
    % Print of the Signal
    figure('position',[0, 780, 540, 200] , 'Name','Signal Mistura1');
    tt = 0 : 1/fa : (N - 1)/fa;
    plot(tt,signal); grid on;
    title('Signal');
    xlabel('Time(s)'); ylabel('Amplitude');
    
    % FFT Plot (only positive frequêncies)
    figure('position',[0, 85, 540, 600] , 'Name','FFT Mistura1');
    
    signalFFT = abs(fft(signal));
    subplot(2,1,1);
    rawsignalplot = stem(signalFFT);
    rawsignalplot.Marker = 'none';
    grid on; xlabel('FFT Ind(N)');
    title('FFT (index)');
    
    df = fa/N;
    ff = 0 : df : fa;
    ff = ff - ff(end)/2;
    
    signalFFTp = [signalFFT(N/2:end) ; signalFFT(1:N/2)];
    
    subplot(2,1,2);
    signalplot = stem(ff,signalFFTp); 
    signalplot.Marker = 'none'; grid on;
    title('FFT (Hz)');
    axis([-freqmax-100 freqmax+100 0 max(signalFFT)]);
    xlabel('Freq(Hz)');
    
    % ECG Recover
    figure('position',[540, 85, 440, 895] , 'Name','Signals');
    fftECG = signalFFT; fftECG(500/df : N - 500/df) = 0;
    ecg = ifft(fftECG);
    subplot(4,1,1); plot(tt,real(ecg),'r'); title('ECG Signal');
    subplot(4,1,2); p1 = stem(fftECG,'r'); p1.Marker = 'none'; p1.Color = [0.2 0 0.6];
    title('ECG FFT');
    
    ind = find(fftECG(1:N/2) > 150);
    k = [];

    for i = 1 : length(ind) - 1
        k = [k ind(i + 1) - ind(i)];
    end

    k = unique(k);
    f0 = k * fa/N;
    T0 = f0 * 60; % bpm

    disp(['Período do batimento cardíaco = ',num2str(T0),' bpm']);
    
% 2.
    % Audio Recover
    fftAudio = signalFFT; fftAudio(1:500/df) = 0; fftAudio(N - 500/df:end) = 0;
    audio_m = ifft(fftAudio);
    subplot(4,1,3); plot(tt,real(audio_m),'r'); title('Audio Signal');
    subplot(4,1,4); p2 = stem(fftAudio,'r'); p2.Marker = 'none';  p2.Color = [0.2 0 0.6];
    title('Audio FFT');
    
    % encontrar a fase (isto está com alguma coisa errada)
    fp = find(fftAudio(1:N/2) > 1000) / df; % indice da frequência central
    w_x = angle(signalFFT);
    fase = w_x(fp) * 180/pi;
    disp(['Fase = ',num2str(fase)])
    
% 3.
    % também está aqui qualquer coisa errada
    audio = real(audio_m)' .* cos(2*pi * fc * tt + pi/3);
    % sound(audio);
    
% 4. O volume muda com a fase !
    