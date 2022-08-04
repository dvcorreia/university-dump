% Laboratory Lesson - 1
% Diogo Correia (dv.correia@ua.pt)
% 05 November 2018

% Exercise 2 --------------------------------------------------------------

close all; clear; clc;

% Parameters --------------------------------------------------------------
k = 3;          % k of the k-NN classifier
testp = 10;     % Percentage of testing data from the dataset starting from the final
plotFlag = 0;   % Flag to save plots
% -------------------------------------------------------------------------
load('speech_dataset.mat');

% Create plots directory if there is none
if ~(exist('plots','dir') == 7)
    mkdir plots;
    disp('created plots directory!');
end

% Analising error with K and length of training dataset
ks = 1 : 10 : 200;
trainingp = round(linspace(30, 90, 5));

res = ones(length(ks), length(trainingp));

for i = 1 : length(trainingp)
    for j = 1 : length(ks)
        res(j, i) = KNNclassifier(dataset, ks(j), testp, trainingp(i));
    end
end

fig1 = figure;
xlabel('K (in K-NN)'); ylabel('Misclassification rate');
hold on; grid minor; title('KNN Errors analisys');
axis auto; set(gcf,'Position',[100 100 500 300])

for i = 1 : size(res, 2)
    plot(ks, res(:, i), '.-');
end

axis tight;
legend(cellstr(num2str(trainingp', 'training percentage = %-d')), 'Location','northwest');

if plotFlag == 1
    print -depsc2 ./plots/lab1ex2_errors.eps;
end

function error = KNNclassifier(dataset, k, testp, trainingp)
    % Separating training data from testing data
    trainingData = dataset(1:round(trainingp / 100 * length(dataset)), :);
    testData = dataset(round((1 - testp / 100) * length(dataset))+1:length(dataset), :);

    % Find index of the minimum distance for each vowal
    idx = knnsearch(trainingData, testData, 'dist', 'euclidean',  'k', k);

    % Find Classes of minimum distance indexes
    trainingClasses = trainingData(:,6);
    idxClass = trainingClasses(idx);

    % Classify results
    testClasses = mode(idxClass, 2);

    % Error
    error = sum(testClasses~=testData(:,6)) / length(testData(:,6));
end