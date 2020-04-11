% Teste Prático 1
% Introdução à Análise e Processamento de Sinal
% 19 de Abril de 2016

% Diogo Correia Nº76608
% dv.correia@ua.pt

    clear all; close all; clc;
    
    nmec = 76608;
    nbits = 5 + rem(nmec,2);
    N = 620 * (4 + rem(nmec,2));
    fa = (25 + 7 * (rem(nmec,3))) * 6;

    % Gerar random vars -> Amp = [2 ; 4] ; fa = [1/55 ; 1/33] * fa 
    A = (4 - 2) .* rand + 2;                
    f = ((1/33 - 1/55) .* rand + 1/55) * fa;
    disp(['Amplitude = ',num2str(A),' ; fa = ',num2str(fa)]);

% 1.
    tt = 0 : 1/fa : N/fa - 1/fa; 
    
    x = A * sin(2*pi * f * tt);
    
    y = x;
    y(abs(y) > 1) = 1;
    y(abs(y) < -1) = -1;
    
% 2. 
    disp([10,'2.']);
    time = N / fa;
    disp([9,'Duração (em segundos) do sinal x(n) = ',num2str(time)]);
    
% 3. 
    disp([10,'3.']);
    Ex = sum(abs(x) .^2);
    Ey = sum(abs(y) .^2);
    disp([9,'Energy x(n) = ',num2str(Ex)]);
    disp([9,'Energy y(n) = ',num2str(Ey), 10]);
    
    Amax_x = max(abs(x));
    Amax_y = max(abs(y));
    disp([9,'Máx Amplitude x(n) = ',num2str(Amax_x)]);
    disp([9,'Máx Amplitude y(n) = ',num2str(Amax_y)]);    

% 4.
    figure('position', [0, 580, 540, 400]);
    plot(tt , x , tt , y);
    axis([0 time -max([Amax_x Amax_y]) max([Amax_x Amax_y])]);
    legend('x(s)','y(s)');
    xlabel('t(s)');
    
% 5.
    x_q = round(x * nbits) / nbits;

% 6.
    disp([10,'6.']);

    delta = (max(x)-min(x))/(2^nbits);

    x_q_error = x - x_q;
    Er = sum(abs(x_q_error) .^2);
    
    disp([9,'Máx quantization error = ',num2str(delta)]);
    disp([9,'Error energy = ',num2str(Er)]);
 
% 7.
    disp([10,'7.',9,'nbits + 1']);
    
    x_q = round(x * (nbits + 1)) / (nbits + 1);
    
    delta = (max(x)-min(x))/(2^(nbits + 1));

    x_q_error = x - x_q;
    Er = sum(abs(x_q_error) .^2);
    
    disp([9,'Máx quantization error = ',num2str(delta)]);
    disp([9,'Error energy = ',num2str(Er),10]);
    
    disp('É de se esperar que o erro de quantização e a Energia do erro');
    disp('diminuam, visto que usando mais bits de quantização faça'); 
    disp('sentido o erro na mesma diminuir');
    
% 8. e 9.

disp([10,'<a href = "https://github.com/dvcorreia">Diogo Correia 76608</a>'])