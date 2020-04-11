%% TRABALHO PRÁTICO 3
% Diogo Correia Nº76608
% dv.correia@ua.pt

%% 2.
    % COMPRESSED SIZE IMAGES
    clear; clc; close all;
    ext = '*.jpg';
    list = dir(ext);
    compressedSizeArray = [];
    
    disp(['Compressed images file size:', 10]);
    for i = 1: length(list)
        compressedSizeArray = [compressedSizeArray list(i).bytes];
        disp(['  Name: ', list(i).name, '   |   Size:  ', num2str(list(i).bytes)]);
    end
    
    % DECOMPRESSED SIZE IMAGES
    decompressedSizeArray = [];
    for i = 1 : length(list)
        img = imread(list(i).name);
        aux = whos('img');
        decompressedSizeArray = [decompressedSizeArray aux.bytes];
        % give img name to imread data
        evalc(sprintf('%s=%s',list(i).name,'img'));
    end
    
    disp([10, '-----------------------------------------------'])
    disp([10, 'Decompressed images file size:' , 10]);
    whos('europe','jpegls','lena','mri','news');  
    
    % COMPRESSION RATIO
    disp(['-----------------------------------------------'])
    disp([10, 'Compression Ratio Files:', 10]);
    for i = 1: length(list)
        Td = decompressedSizeArray(i);
        Tc = compressedSizeArray(i);
        T = Td/Tc;
        disp(['  Name: ', list(i).name, '   |   Compression Ratio:  ', num2str(T)]);
    end
    
    disp([10, '<a href = "http://etem5anos.github.io">Etem5anos</a>'])
    