%% TRABALHO PRÁTICO 4
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 3.
    clear; clc; close all;
    
    h1 = [0.5 0.5];
    n = 0:49;
    
    omega = [0 pi/4 pi/2 3*pi/4 pi];
    
    figure('position', [0, 150, 800, 700]);
    
    for i = 1 : length(omega)
        suptitle(['Omega (',num2str(i),') = ', num2str(omega(i))]);
        x = exp(1i*omega(i)*n);
        y1 = conv(x,h1);
        
        H1 = 0.5*(1 + exp(-1i * omega(i)));
        y2 = H1 * x;
        
        subplot(2,1,1);
        plot(n,real(y1(1 : end-1)),'b'); % porque o conv calcula 1 amostra a mais
        
        hold on;
        plot(n,real(y2),'r--'); % porque o conv calcula 1 amostra a mais
        legend('y1(n)','y2(n)');
        hold off;
        
        subplot(2,1,2);
        plot(n,real(x),'b');
        legend('x(n)');
        title('Entrada');
        
        pause();
    end
     
disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])