%% TRABALHO PRÁTICO 6
% Diogo Correia Nº76608
% dv.correia@ua.pt

clear; close all; clc;
signal = load('dtmf2.txt');
fa = 8e3; % Hz
N = length(signal);

% a)
    signal = signal - mean(signal); % yy axis centering 
    tt = 0 : 1/fa : (N - 1)/fa;
    figure('position',[0, 580, 540, 400] , 'Name','Signal');
    h = stem(tt, signal); h.Marker = 'none'; grid on;
    title('dtmf2 Signal'); xlabel('Time(s)'); ylabel('Amplitude');

    sfft = abs(fft(signal));
    figure('position',[0, 100, 540, 400] , 'Name','FFT');
    g = stem(sfft); g.Marker = 'none';
    title('FFT dtmf2');

    ind = find(abs(signal) > 0.55);
    figure(1); hold on;
    j = stem(tt(ind) , signal(ind), 'r');
    j.Marker = 'none';
    legend('Signal','Digits');

    % --------------------------------------------------------------------
    % em k1 são guardados os pontos de início e 
    % paragem de cada dígito
    
    k1 = [ind(1)];
    for i = 1 : length(ind) - 1
       delta = ind(i + 1) - ind(i);
       if delta > 300 
            k1 = [k1 ind(i) ind(i+1)];
       end
    end
    k1 = [k1 ind(end)];

    % --------------------------------------------------------------------
    % em k2 são armazenadas as durações de cada
    % digito
    
    k2 = [];
    for i = 1 : 2 : length(k1) - 1
       k2 = [k2 k1(i + 1) - k1(i)];
    end

    durDigitn = roundn(max(k2),2);
    durDigits = durDigitn / fa;
    disp(['Digit duration = ',num2str(durDigits),' (s)']);
   
% b)
    figure('position',[540, 100, 440, 880] , 'Name','Digits FFTs');
    ii = 1;
    
    for i = 1 : 2 : length(k1)
       fftData = abs(fft(signal(k1(i):k1(i+1))));
       index = find(fftData(1:durDigitn/2) > 100) - 1;

       freq1 = round(index(1) * fa/durDigitn);
       freq2 = round(index(2) * fa/durDigitn);
       
       subplot(4,1,ii);
       l = stem(fftData);
       l.Marker = 'none'; l.Color = [(184 + i*16)/300 0 (245 - i*16)/300]; 
       title(['Digit',num2str(ii),' | freq: (',num2str(freq1),' e ',num2str(freq2),') Hz']);
       
       ii = ii + 1;
    end
    
    disp(['Sequência de Dígitos: 5821 ']);
    
% c) Resp: Colocar tudo excepto as riscas da fft necessárias à
% descodificação a zero