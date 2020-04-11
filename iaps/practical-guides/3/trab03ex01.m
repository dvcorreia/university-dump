%% TRABALHO PRÁTICO 3
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 1.
% a.
    clear; clc; close all;
    ext = '*.jpg';
    list = dir(ext);
    
    for i = 1 : length(list)
        img = imread(list(i).name);
        % give img name to imread data
        evalc(sprintf('%s=%s',list(i).name,'img'));
    end
    
    clear ext i img list;
    disp(['a) - Decompressed images file size:' , 10]);
    whos;
    
    % explanation
    type('alínea_a_comment.txt');

% b.
    figure('position', [0, 580, 540, 400]);
    subplot(2,2,1);
    img = imread('europe.jpg');
    aux = img;
    imshow(img);
    title('Original');
  
    aux(:,:,2:3) = 0;
    subplot(2,2,2);
    imshow(aux);
    title('Red');
    
    aux = img;
    aux(:,:,1) = 0;
    aux(:,:,3) = 0;
    subplot(2,2,3);
    imshow(aux);
    title('Green');
        
    aux = img;
    aux(:,:,1:2) = 0;
    subplot(2,2,4);
    imshow(aux);
    title('Blue');
    
    suptitle('RGB dimentions')

% c.
    syms r g b;
    c = inline('0.299*r + 0.587*g + 0.144*b');
    
    figure('position', [0, 100, 540, 400]);
    subplot(2,2,1);
    img = imread('europe.jpg');
    imshow(img);
    title('Original');
    
    subplot(2,2,2);
    imshow(c(img(:,:,3),img(:,:,2),img(:,:,1)));
    title('Grey');
    
    subplot(2,2,3);
    img = imread('news.jpg');
    imshow(img);
    title('Original');
    
    subplot(2,2,4);
    imshow(c(img(:,:,3),img(:,:,2),img(:,:,1)));
    title('Grey');
    
    suptitle('Original to Grey Images')
    
% d.      
    figure('position', [540, 100, 440, 880]);
    suptitle('Negative Images')
    ext = '*.jpg';
    list = dir(ext);
    
    for i = 1 : length(list)
        img = imread(list(i).name);
        subplot(length(list),2,2*i-1);
        imshow(img);
        title(['Original: ',list(i).name]);
        
        subplot(length(list),2,2*i);
        imgNeg = uint8(-1*(double(img)-255));
        imshow(imgNeg);
        title(['Negative: ',list(i).name]);
    end
    
disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])