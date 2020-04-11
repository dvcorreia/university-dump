%% TRABALHO PRÁTICO 3
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 3.
% a.
    clear; clc; close all;
    bits = [7 5 4 3 1];
    
    img = imread('lena.jpg');
    a = whos('img');
    imgOriginalSize = [a.bytes];
    
    % Show original
    figure('position', [0, 520, 800, 480]);
    subplot(2,3,1);
    imshow(img);
    title('Original');
    
    quantizedSize = zeros(1,length(bits));
    
    % Data for c) SNR calculation
    SNR = zeros(1, length(bits));
    
    for i = 1 : length(bits)
        gama = 255;
        delta = gama/2^bits(i);
        qImg = round(double(img)/delta)*delta;
        
        % SNR calculation
        Er = (1/length(bits))*sum((double(img)-qImg).^2);
        Es = (1/length(bits))*sum(double(img).^2);
        SNR(i) = 10 * log10(Es/Er);
        
        % Print quantized img
        qShapeImg = uint8(qImg);
        a = whos('qShapeImg');
        quantizedSize(i) = a.bytes * bits(i) / 8;
        
        subplot(2,3,i+1);
        imshow(qShapeImg);
        title(['Quantized ', num2str(bits(i)), ' bits']);
    end

% b.
    disp([10, 'Compression Ratio Files:', 10]);
    for i = 1: length(bits)
        Tc = quantizedSize(i);
        T = imgOriginalSize/Tc;
        disp([num2str(bits(i)),' bits', '   |   Compression Ratio:  ', num2str(T)]);
    end
    
% c.
    Es = zeros(1,length(bits));
    Er = zeros(1,length(bits));
    
    % Erros and SNR
    figure('position', [0, 35, 800, 400]);
    stem(bits,SNR,'b');
    title('SNR');
    
 disp([10, '<a href = "http://etem5anos.github.io">Etem5anos</a>'])