%% TRABALHO PRÁTICO 6
% Diogo Correia Nº76608
% dv.correia@ua.pt

clear; close all; clc;
ddur = 100e-3; % duração digito (s)
gama = 2; 

% a)
    fa = 8e3; % Hz
    ts = 0 : 1/fa : ddur - 1/fa;
    A = (gama / 2) / 2;

    % generate code "0471":
    d0 = A*sin(2*pi * 941 * ts) + A*sin(2*pi * 1336 * ts);
    d4 = A*sin(2*pi * 770 * ts) + A*sin(2*pi * 1209 * ts);
    d7 = A*sin(2*pi * 852 * ts) + A*sin(2*pi * 1209 * ts);
    d1 = A*sin(2*pi * 697 * ts) + A*sin(2*pi * 1336 * ts);

    sep = zeros(1 , fa * (ddur / 2));
    s0471 = [d0 sep d4 sep d7 sep d1];
    
    Ns = length(s0471);
    tt = 0 : 1/fa : Ns/fa - 1/fa;
    
    figure('position',[0, 580, 540, 400] , 'Name','Signals'); 
    subplot(2,1,1);
    plot(tt,s0471);
    axis([0 tt(end) -1.5 1.5]);
    xlabel('Time(s)'); ylabel('Amplitude');
    title('Signal');
    
    sound(s0471);
    
% b).  
    noise = -0.5 + rand(1,Ns);
    s0471_r = s0471 + noise;
    
    subplot(2,1,2);
    plot(tt,s0471_r);
    axis([0 tt(end) -1.5 1.5]);
    title('Signal with Noise');
    xlabel('Time(s)'); ylabel('Amplitude');
    
    Es = sum(s0471.^2);
    Er = sum((s0471 - s0471_r).^2);
    SNR = 10 * log10(Es / Er);
    disp(['SNR = ',num2str(SNR),' dB']);
    
% c).
    s_fft = abs(fft(s0471));
    sr_fft = abs(fft(s0471_r));
    
    figure('position',[0, 100, 540, 400] , 'Name','FFTs');
    r = stem(sr_fft); r.Marker = 'none'; hold on;
    s = stem(s_fft); s.Marker = 'none';
    axis([0 Ns 0 max(s_fft)]);
    legend('signal  w/ noise','signal');
    title('FFTs');  
    
    delta = max(abs(fft(noise))) + 20;
    k1 = find(sr_fft(1:Ns/2) > delta) - 1;
    
    k = [];
    for i = 1 : length(k1) - 1
        k = [k k1(i + 1) - k1(i)];
    end
    
    k1_delta = unique(k);
    fk1 = min(k1_delta)*fa/Ns;
    disp(['A resolução mínima de freq a usar é = ',num2str(fk1),' Hz']);