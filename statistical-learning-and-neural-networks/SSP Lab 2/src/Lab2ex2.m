% Laboratory Lesson - 2
% Diogo Correia (dv.correia@ua.pt)

% Exercise 2 --------------------------------------------------------------

close all; clear; clc;
load('XwindowsDocData.mat');

save = 0;

% Create plots directory if there is none
if ~(exist('plots','dir') == 7)
    mkdir plots;
    disp('created plots directory!');
end

% Unsparce and split data in classes
doc1 = full(xtrain(1:find(ytrain == 1, 1, 'last'),:));
doc2 = full(xtrain(find(ytrain == 1, 1, 'last') + 1 : length(xtrain),:));

N1 = length(doc1);  % Number of features
N2 = length(doc2);  % Number of features

% Calculating prior probabilities
pi1 = N1 / length(xtrain);
pi2 = N2 / length(xtrain);

% Calculating class conditional densities
Oc1 = sum(doc1, 1) / N1;
Oc2 = sum(doc2, 1) / N2;

% Plot class conditional densities
n = 1 : N1;

fig1 = figure('Position',[100 100 500 300]);
plot(n, Oc1, 'b');
axis([2, N1, 0, 1]); grid minor;
title('p(xj=1|doc=1)');

fig2 = figure('Position',[100 100 500 300]);
plot(n, Oc2, 'r');
axis([2, N2, 0, 1]); grid minor;
title('p(xj=1|doc=2)');

if save == 1
    try
        figure(fig1); plt = Plot();
        plt.Colors = {[0, 0, 1]};
        plt.export('./plots/lab2ex2_doc1.png');
        figure(fig2); plt = Plot();
        plt.Colors = {[1, 0, 0]};
        plt.export('./plots/lab2ex2_doc2.png');
    catch
        warning('Problem trying to use PlotPug library. Will save it in .eps');
        figure(fig1); print -depsc2 ./plots/lab2ex2_doc1.eps;
        figure(fig2); print -depsc2 ./plots/lab2ex2_doc2.eps;
    end
end

% Identification of uninformative features
threshold = 0.16;

cf1 = find(Oc1 > threshold);
cf2 = find(Oc2 > threshold);

uninff = vocab(intersect(cf1, cf2));

% Create tables directory if there is none
if ~(exist('tables','dir') == 7)
    mkdir tables;
    disp('created tables directory!');
end

if save == 1
    fid = fopen('./tables/uninformative_features.csv','wt');
    if fid>0
        for k=1:size(uninff,1)
            fprintf(fid,'%s,%f\n',uninff{k,:});
        end
        fclose(fid);
    end
end

