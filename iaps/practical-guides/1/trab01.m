%% TRABALHO PRÁTICO 1
% Diogo Correia Nº76608
% dv.correia@ua.pt

% Podem executar as diferentes alíneas estando com o cursor 
% de escrita na mesma e dar 'Run Section' ou Ctrl + Enter

%% 1.
    clear; clc;
    x = linspace(-2*pi,2*pi,100);
    disp('ex 1 completed');
    
% 2.
    y = rand(1,100) * 4*pi - 2*pi;
    disp('ex 2 completed');
    
% 3. plot graph
    stem(x,y);
    title('graph ex. 3');
    disp('ex 3 completed');
    
%% 4.
    clear; clc;
    v = repmat([0 1 0 -1] , 1 , 256/4);
    disp('ex 4 completed');
    
%% 5.  
    clear; clc;
    tt = linspace(-1.5,1.5,1000);
    yy = square(2*pi*tt);
    
    % correct first and last point
    yy(1) = 0; yy(end) = 0;       
    
    plot(tt,yy,'r');
    grid on;
    title('graph ex. 5');
    axis([-2 2 -2 2]);
    
    disp('ex 5 completed');
    
%% 6.
    clear; clc;
    syms x;
    f = inline('sin(pi.*x)./(pi.*x)');
    xx = linspace(-5,5,1000);
    plot(xx,f(xx));
    hold on; grid on;
    title('graph ex. 6');
    
    % highlight zeros in graph
    z = [-5 -4 -3 -2 -1 1 2 3 4 5];
    zy = linspace(0,0,length(z))
    stem(z,zy);
    
    disp('ex 6 completed');
    
%% 7.
    clear; clc;
    f = inline('(4 * sin(2*pi*(2*k-1)*t))/(pi*(2*k - 1))');
    tt = linspace(0,3,1000);
    sumY = 0;

    for k = 1:1:3
        subplot(4,1,k);
        yy = f(k,tt);
        sumY = sumY + yy;
        plot(tt,yy);
    end
    
    subplot(4,1,4);
    plot(tt,sumY,'b');
    
    suptitle('graph ex. 7');
    
    disp('ex 7 completed');
    
%% 8.
    clear; clc;
    M = [2 4 10 50 100];
    f = inline('(4 * sin(2*pi*(2*k-1)*t))/(pi*(2*k - 1))');
    tt = linspace(0,3,1000);
    sumY = 0;
    
    for i = 1:1:length(M)
        
       for k = 1:1:M(i)
           yy = f(k,tt);
           sumY = sumY + yy;
       end
       
       subplot(5,1,i);
       plot(tt,sumY,'r');
       title([M(i)]);
       
       % reset somatório
       sumY = 0;
    end

    disp('ex 8 completed');
    
%% 9.
    clear; clc;
    M = [2 4 10 50 100];
    f = inline('((2*(-1)^(k+1))*sin(2*pi*k*t))/(pi*k)');
    tt = linspace(0,3,1000);
    sumY = 0;
    
    for i = 1:1:length(M)
        
       for k = 1:1:M(i)
           yy = f(k,tt);
           sumY = sumY + yy;
       end
       
       subplot(5,1,i);
       plot(tt,sumY,'r');
       title([M(i)]);
       
       % reset somatório
       sumY = 0;
    end
    
    disp('ex 9 completed');
    
    disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])
