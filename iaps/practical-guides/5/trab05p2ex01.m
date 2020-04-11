%% TRABALHO PRÁTICO 5
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% Parte 2.
% 1
    clear; clc; close all;
    
    fa = 250; % Hz
    signal = load('ecg1.txt');
    signalr = load('ecgNoise.txt');
    
    figure('position',[0, 480, 540, 500] , 'Name','Signals');
    tt = 0 : 1/fa : length(signal)/fa - 1/fa;
    
    subplot(3,1,1);
    plot(tt , signal);
    xlabel('Time(s)'); ylabel('Amplitude');
    title('Original Signal');
    
    subplot(3,1,2);
    plot(tt , signalr , 'b');
    xlabel('Time(s)'); ylabel('Amplitude');
    title('Signal with Noise');
    
    % a).
        fftdata = abs(fft(signalr));
        disp('A primeira risca é a rista a DC.');
    
    % b).
        figure('position',[0, 100, 540, 300] , 'Name','FTT');
        fftdata(1) = 0; % meter a primeira risca a zero
        g = stem(fftdata); g.Marker = 'none';
        title('FFTs');

        figure(1);
        subplot(3,1,3);
        plot(tt , ifft(fftdata) , 'r');
        xlabel('Time(s)'); ylabel('Amplitude');
        title('Inverse FFT without DC Stripe');

    % c).
        N = length(fftdata);

        figure(2); hold on;
        fftecg1 = abs(fft(signal));
        plot(fftecg1(2:end) , 'r');
        legend('ecgNoise','ecg1');

        ind = find(fftdata(1:N/2) > 35) - 1;
        disp(['Númeor de componentes sinusoidais: ',num2str(length(ind))]);

    % d).
        freq = ind * fa / N;
        disp(['Freqûencias associadas às Sin do ruiído (Hz): ',num2str(freq'),10]);
    
    % e).
        disp('Um método poderá ser eliminar as riscas associádas ao ruido.');
        fftdata(fftdata > 35) = 0;
        signalF = ifft(fftdata);
    
    % f).
        Er = sum((signalr - signalF).^2);
        Es = sum(signalF.^2);
        SNR = 10 * log10(Es/Er);
        disp(['SNR = ',num2str(SNR),' dB']);
    
    
    
    
    