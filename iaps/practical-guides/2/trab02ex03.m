%% TRABALHO PRÁTICO 2
% Diogo Correia Nº76608
% dv.correia@ua.pt

% Para testar não esquecer de extrair o samples.zip que contem
% os samples

%% 3.
    clear; clc;

    % list all .wav files and import them
    ext = '*.wav';
    list = dir(ext);
    samples = cell(length(list) , 3);
    
    % get data for wave plot and histogram
    for i = 1 : length(list)
        [data, Fs] = audioread(list(i).name);
        t = 1/Fs : 1/Fs : length(data)/Fs;
        
        samples{i , 1} = t;
        samples{i , 2} = data;
        samples{i , 3} = Fs;
    end
    
    % print hist and wave
    for i = 1 : length(list)
       subplot(length(list) , 3 , 3*i-2);
       plot(samples{i,1} , samples{i,2});
       title(['Waveform: ' , list(i).name]);
       
       h = samples{i,2};
       % print left channel
       subplot(length(list) , 3 , 3*i-1);
       hist(h(1:end , 1) , 40);
       title(['Left Channel: ' , list(i).name]);
       
       % print rigth channel
       subplot(length(list) , 3 , 3*i);
       hist(h(1:end , 2) , 40);
       title(['Rigth Channel: ' , list(i).name])
       
    end
    
disp(['<a href = "http://etem5anos.github.io">Etem5anos</a>'])