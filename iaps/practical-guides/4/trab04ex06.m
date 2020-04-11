%% TRABALHO PRÁTICO 4
% Diogo Correia Nº76608
% dv.correia@ua.pt

% Podem subtituir o sample que estão a analisar
% por outro que queiram bastando meter como nome
% 'sample.wav' no mesmo directório. A rotina adapta-se.

%% 6.
    clear; clc; close all;
    
    [signal, fa] = audioread('sample.wav');
    tt = 0 : 1/fa : length(signal)/fa - 1/fa;
    
    disp('Playing original sample ...');
    sound(signal , fa);
    pause(length(signal)/fa - 1/fa);
    
    % filters
    h1 = [0.5 0.5];
    y1l = conv(h1,signal(:,1));
    y1r = conv(h1,signal(:,2));
    
    subplot(2,1,1);
    plot(tt , signal , 'r');
    hold on;
    plot(tt , y1l(1 : end - 1) , 'b');
    title('h1 filter');
    legend('(red) original','(blue) filter');
    
    disp('Playing with filter h1 ...');
    sound([y1l y1r] , fa);
    pause(length(signal)/fa - 1/fa);
    
    h2 = repmat(0.25,1,4);
    y2l = conv(h2,signal(:,1));
    y2r = conv(h2,signal(:,2));
    
    subplot(2,1,2);
    plot(tt , signal , 'r');
    hold on;
    plot(tt , y2l(1 : end - 3), 'b');
    title('h2 filter');
    legend('(red) original','(blue) filter');
   
    disp('Playing with filter h2 ...');
    sound([y2l y2r] , fa);
    pause(length(signal)/fa - 1/fa);

disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])