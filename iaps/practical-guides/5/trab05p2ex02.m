%% TRABALHO PRÁTICO 5
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% Soluções
    % f0 = 5 * fa/N => T0 = f0 * 60 = 75 bpm
    % largura de banda = [0.5 34] Hz
    % fa_min amostragem = 2 * fmax do sinal
    % fa_min = 2 * 34 = 68

%% Parte 2.
    clear; clc; close all;
    
    ecg1 = load('ecg1.txt');
    N = length(ecg1);
    fa = 250; % Hz
    
    % a).
        fft_ecg1 = abs(fft(ecg1));
        fft_ecg1(1) = 0;

        figure('Name','FFT - ecg1');
        f = stem(fft_ecg1); f.Marker = 'none';
        title('FFT - ecg1');

        ind = find(fft_ecg1(1:N/2) > 5);
        k = [];

        for i = 1 : length(ind) - 1
            k = [k ind(i + 1) - ind(i)];
        end

        k = unique(k);
        f0 = k * fa/N;
        T0 = f0 * 60; % bpm

        disp(['Período do batimento cardíaco = ',num2str(T0),' bpm']);
    
    % b).
        fmin = fa / N;
        fmax = (ind(end) - 1) * fa / N;
        disp(['LB = [ ',num2str(fmin),' , ',num2str(fmax),' ] Hz']);
    
    % c).
        fa_min = 2 * fmax;
        disp(['A freq amostragem mínima possível é = ',num2str(fa_min),' Hz']);
        