% Laboratory Lesson - 1
% Diogo Correia (dv.correia@ua.pt)
% 05 November 2018

% Exercise 3 --------------------------------------------------------------

close all; clear; clc;

plotFlag = 0;
load('localization.mat');

% Create plots directory if there is none
if ~(exist('plots','dir') == 7)
    mkdir plots;
    disp('created plots directory!');
end

[ D, M, Nc ] = size(traindata); % D - Number of measured features
                                % M - Number of times measurements were taken
                                % Nc - Number of classes
K = [1 2 3 5 8 15 30 50];
errors = zeros(length(K), 2);

res = cell(M*Nc, 1);

for kk = 1 : length(K)
    % K-NN classifier: Returns an array for each testdata vector of size Nc 
    % with the probability for each class
    k = K(kk);
    
    for i = 1 : M*Nc
        % Calculate eucleadian distance between each test vector and each training vector
        r = traindata - testdata(:, i);
        r = sqrt(sum(r.^2, 1));

        % Find minimum K distance values
        [~, r] = mink(r(:), k);

        % Find classes for K minimum distances
        r = ceil(r./M);                 

        % Calculate probability for each class
        res{i} = sum(repmat(r, 1, Nc) == 1:Nc, 1)./k;
    end

    % Results analysis
    [~, r] = max(cell2mat(res), [] ,2);     % Get decision results
    rc = repmat(1:Nc, M, 1);
    rc = rc(:);

    % Compare results: Correct cell detection
    e = sum(r ~= rc)/length(r);
    errors(kk) = e;

    % Compare results: Correct cell and neighboring cells
    cnm = near_cells();
    cnm = kron(cnm ,ones(M,1));
    en = 1 - sum(sum(r == cnm, 2))/length(r);
    errors(kk + length(K)) = en;
end

% Error results
figure('Name', 'Misclassification rate');
plot(K, errors(:, 1), 'b-x', K, errors(:, 2), 'r-s');
grid minor; xlabel('K'); ylabel('Misclassification rate');
legend('Cell Detection', 'Cell and Neighbors');
title('Misclassification rate'); 
set(gcf,'Position',[100 100 500 200]);
set(gca, 'XLimSpec', 'Tight');

if plotFlag == 1
    print -depsc2 ./plots/lab1ex3_misclassificationrate.eps;
end

function [ cnm ] = near_cells()
% Returns the matrix with cell and their neighbors for each cell
    cnm = [
      1 5 6 2 0 0 0 0 0;
      2 1 5 6 7 3 0 0 0;
      3 2 6 7 8 4 0 0 0;
      4 3 7 8 0 0 0 0 0;
      5 9 10 6 2 1 0 0 0;
      6 10 11 7 3 2 1 5 9;
      7 11 12 8 4 3 2 6 10;
      8 12 4 3 7 11 0 0 0;
      9 13 14 10 6 5 0 0 0;
      10 14 15 11 7 6 5 9 13;
      11 15 16 12 8 7 6 10 14;
      12 16 8 7 11 15 0 0 0;
      13 17 18 14 10 9 0 0 0;
      14 18 19 15 11 10 9 13 7;
      15 19 20 16 12 11 10 14 18;
      16 20 12 11 15 19 0 0 0;
      17 21 22 18 14 13 0 0 0;
      18 22 23 19 15 14 13 17 21;
      19 23 24 20 16 15 14 18 22;
      20 24 16 15 19 23 0 0 0;
      21 22 18 17 0 0 0 0 0;
      22 23 19 18 17 21 0 0 0;
      23 24 20 19 18 22 0 0 0;
      24 20 19 23 0 0 0 0 0
    ];
end