%% TRABALHO PRÁTICO 4
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 4.
% a.
    clear; clc; close all;
    figure('position', [0, 580, 540, 400]);
    
    n = 0:49;
    w = linspace(0,2*pi,256); 
    
    h1 = 0.5*(1 + exp(-1i * w));
    h3 = 0.5*(1 - exp(-1i * w));
    
    subplot(2,1,1);
    hold on; grid on;
    
    plot(w,abs(h1));
    plot(w,abs(h3),'r');
    
    legend('H1','H3');
    xlabel('freq (rad/s)');
    title('H1(e^{jw}) & H3(e^{jw}) - Module');
    
    hold off;
    
    subplot(2,1,2);
    hold on; grid on;
    plot(w,angle(h1));
    plot(w,angle(h3),'r');
    
    legend('H1','H3');
    xlabel('freq (rad/s)');
    title('H1(e^{jw}) & H3(e^{jw}) - Phase');
    
    hold off;
    
% b.
    figure('position', [0, 100, 540, 400]);
    hold on; grid on;
    
    wf = pi/4;

    x = sin(wf * n);
    rx = conv(x,[0.5 0.5]);
    
    plot(n,x);
    plot(n,rx(1:end-1),'r--');
    
    legend('sin(wt)' , 'H1(sin(wt))');
    title('Alínea 4-b)');
 
disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])