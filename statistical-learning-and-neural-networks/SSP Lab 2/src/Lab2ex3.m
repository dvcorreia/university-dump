% Laboratory Lesson - 2
% Diogo Correia (dv.correia@ua.pt)

% Exercise 3 --------------------------------------------------------------

close all; clear; clc;
load('XwindowsDocData.mat');

save = 1;

% Create plots directory if there is none
if ~(exist('plots','dir') == 7)
    mkdir plots;
    disp('created plots directory!');
end

% Unsparce and split data in classes
doc1 = full(xtrain(1:find(ytrain == 1, 1, 'last'),:));
doc2 = full(xtrain(find(ytrain == 1, 1, 'last') + 1 : length(xtrain),:));

N1 = size(doc1,1);  % Number of vectors of class 1
N2 = size(doc2,1);  % Number of vectors of class 2

% Calculating class prior probabilities P(c)
pi1 = N1 / length(xtrain);
pi2 = N2 / length(xtrain);

% Calculating class conditional densities P(x = 1 | c)
Oc1 = sum(doc1, 1) / N1;
Oc2 = sum(doc2, 1) / N2;

% Calculating evidence P(x)
px_test = sum(full(xtest), 1) / length(xtest);
px_train = sum(full(xtrain), 1) / length(xtrain);

% Calculating the MAP estimate
xtest = full(xtest);
xtrain = full(xtrain);
mapd = zeros(length(xtest), 4);
maptest = zeros(length(xtest), 1);
maptrain = zeros(length(xtest), 1);

for i = 1 : length(xtest)
    % Applying Bayes Theorem
    % Calculating likelihood for class = doc1
    mapd(i,1) = log(prod(Oc1(xtest(i,:) == 1))) + log(pi1);
    mapd(i,3) = log(prod(Oc1(xtrain(i,:) == 1))) + log(pi2);
    
    % Calculating likelihood for class = doc2
    mapd(i,2) = log(prod(Oc2(xtest(i,:) == 1))) + log(pi1);
    mapd(i,4) = log(prod(Oc2(xtrain(i,:) == 1))) + log(pi2);
    
    % Calculating MAP
    maptest(i) = (mapd(i,2) > mapd(i,1)) + 1;
    maptrain(i) = (mapd(i,3) > mapd(i,4)) + 1;
end

% Misclassification error
error_test = sum(maptest ~= full(ytest)) / length(xtest);
error_train = sum(maptrain ~= full(ytest)) / length(xtest);

fprintf('Error:\n\tTest: %1.4f\n\tTrain: %1.4f\n', error_test, error_train);

if save == 1
    fid = fopen('./tables/ex3_nbc.csv','wt');
    if fid>0
        fprintf(fid,'%s,%f\n',['Error Test: ', num2str(error_test * 100), '%']);
        fprintf(fid,'%s,%f\n',['Error Train: ', num2str(error_train * 100), '%']);
        fclose(fid);
    end
end