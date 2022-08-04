% Laboratory Lesson - 1
% Diogo Correia (dv.correia@ua.pt)
% 23 October 2018

% Exercise 1 --------------------------------------------------------------

close all; clear; clc;
plotFlag = 0;

% Create plots directory if there is none
if ~(exist('plots','dir') == 7)
    mkdir plots;
    disp('created plots directory!');
end

% Loading data and renaming
data = load('synthetic.mat');
train_data = data.knnClassify2dTrain;
test_data = data.knnClassify2dTest;
clear('data');

n = 10;
k = round(linspace(1, length(train_data) - 1, n));
e = ones(2, size(k, 2));

for i = 1 : length(k)
   e(1, i) = knn_classifier(train_data, test_data, k(i));
   e(2, i) = knn_classifier(train_data, train_data, k(i));
end

figure('Name', 'Misclassification rate');
p = plot(k, e(1, :), 'r-x', k, e(2, :), 'b-s');
grid minor; xlabel('K'); ylabel('Misclassification rate');
legend('Test Data', 'Training Data', 'Location','northwest'); ylim([0 2*max(e(1,i))]);
axis auto; title('Misclassification rate');
set(gcf,'Position',[100 100 500 250])

if plotFlag == 1
    print -depsc2 ./plots/lab1ex1_misclassificationrate.eps;
end

% Finding k for minimum error
[e, kidx] = min(e(1, :));
k = k(kidx);

% Plotting Training Data
figure('Name', 'Training Data'); hold on;
scatter(train_data(train_data(:,end) == 1, 1), train_data(train_data(:,end) == 1, 2), 'r.');
scatter(train_data(train_data(:,end) == 2, 1), train_data(train_data(:,end) == 2, 2), 'b.');
title([num2str(k), '-NN']); grid minor;

% Plotting Test Data
scatter(test_data(test_data(:,end) == 1, 1), test_data(test_data(:,end) == 1, 2), 'rx');
scatter(test_data(test_data(:,end) == 2, 1), test_data(test_data(:,end) == 2, 2), 'bx');

% Plot points with classification error
[error, eidx] = knn_classifier(train_data, test_data, k);
scatter(test_data(eidx, 1), test_data(eidx, 2), 'cx', 'LineWidth', 1.5);

axis auto; set(gcf,'Position',[200 200 500 300])
xlabel('x coordinate'); ylabel('y coordinate');
legend('Training Dataset Class1', 'Training Dataset Class2', 'Test Dataset Class1', 'Test Dataset Class2', ['Classed Wrong [', num2str(100 * error), '%]' ], 'Location','southwest','NumColumns',2);

if plotFlag == 1
    print -depsc2 ./plots/lab1ex1_data.eps;
end

function [error, errorIndex] = knn_classifier(train_data, test_data, k)
    % 1. Look at the k points in the trainning set that are nearest to the
    % test input

    % Get sizes of data
    n_features = size(train_data, 2) - 1;   % - 1 to ignore class column
    n_train_data = length(train_data);
    n_test_data = length(test_data);

    % Calculating euclidean distances
    dist_features = cell(1, n_features);
    dist = zeros(n_test_data, n_train_data);
    
    for f = 1 : n_features
        dist_features{f} = repmat(test_data(:,f), 1, n_train_data) - train_data(:,f)';
    end

    for f = 1 : n_features
        dist = dist + dist_features{f}.^2;
    end
    
    dist = sqrt(dist);
    

    % Calculating the k minimun distances
    [ ~, idx ] = sort(dist, 2);
    idx = idx(:, 1:k);

    % 2. Count how many members of each class are in this set
    test_data_classes = test_data(:, end);
    idx_class = test_data_classes(idx);

    % Classifier (choose the most common class)
    class = mode(idx_class, 2);

    % Misclassification error
    error = sum(class ~= test_data_classes) / n_test_data;
    errorIndex = find(class ~= test_data_classes);
end
