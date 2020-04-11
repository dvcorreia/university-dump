% Teste Prático 1
% Introdução à Análise e Processamento de Sinal
% 8 de Abril de 2014

% Diogo Correia Nº76608
% dv.correia@ua.pt

    clear all; close all; clc;
    
    nmec = 76608;
    nbits = 5 + rem(nmec,2);
    dur = 2 + 2 * rem(nmec,2);
    fa = (4 + rem(nmec,4)) * 30;
    M = 2 + rem(nmec,2);

% 1.
    x = 0;
    n = 0 : 1/fa : dur;
    
    for k = 1 : M
        x = x + sin(pi / (5*k) .* n);
    end
    
% 2.
    
% 3.
    plot(n , x);
    grid on;
    title('x(t) = sum[k = 1 --> M](sin(pi/5k n))');
    xlabel('n (s)');
 
% 4.
    Ex = sum(abs(x).^2);
    disp(['Signal X Energy = ',num2str(Ex)]);
    
% 5.
    xq = round(x * nbits) / nbits;
    hold on;
    plot(n , xq);
    
% 6. 
    Er = sum((x - xq).^2);
    disp(['Quantization Error Energy = ',num2str(Er)]);
   
% 7.
    SNR = 10 * log10(Ex/Er);
    disp(['SNR = ',num2str(SNR),' dB']);

% 8. 
    h = [0.5 0.5];
    xf = conv(h,x);
    plot(n , xf(1:end-1));
    legend('x(n)','x quantized(n)','x(n) filtered')

% 9.
    figure;
    stem(angle(fft(xf)),abs(fft(xf(1:end))),'p')
    title('FFT(xf)');
    ylabel('|A|');
    xlabel('fase')
    
% 10.    
    
disp([10,'<a href = "https://github.com/dvcorreia">Diogo Correia 76608</a>']);