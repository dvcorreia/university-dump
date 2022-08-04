% Laboratory Lesson - 2
% Diogo Correia (dv.correia@ua.pt)

% Exercise 4 --------------------------------------------------------------

close all; clear; clc;
load('heightWeight.mat');

save = 0;

% Create plots directory if there is none
if ~(exist('plots','dir') == 7)
    mkdir plots;
    disp('created plots directory!');
end

% Picking 20 males and 35 females as test data 
testData = heightWeightData(1:55,:);
fprintf('Test Data:\n\tMales: %1.0f\n\tFemales: %1.0f\n\n', ...
    sum(testData(:,1) == 1), sum(testData(:,1) == 2));

% Pick the rest as test data
trainData = heightWeightData(56:end,:);

% Separating males from females
mtrainData = trainData(trainData(:,1) == 1,2:end);
ftrainData = trainData(trainData(:,1) == 2,2:end);

% Ploting training data
fig1 = figure;
plot(mtrainData(:,1), mtrainData(:,2), '.r', ...
    ftrainData(:,1), ftrainData(:,2), '.b');
grid minor; title('Dataset');
xlabel('Heigth (cm)'); ylabel('Weight (kg)');

% Classifiers

% Two-class quadratic discriminant analysis (fitting: both mean values and covariance
% matrices are class-specific

muF = mean(ftrainData);
sigmaF = cov(ftrainData);
muM = mean(mtrainData);
sigmaM = cov(mtrainData);

y = [ mvnpdf([testData(:,2) testData(:,3)], muF, sigmaF) ...
    mvnpdf([testData(:,2) testData(:,3)], muM, sigmaM) ];

c = (y(:,1) > y(:,2)) + 1;
e = sum(c ~= testData(:,1)) / length(c);
disp(['- Accuracy quadratic discriminant analysis: ', num2str((1-e)*100), '%']);


% Two-class quadratic discriminant analysis with diagonal covariance matrices (fitting: as in
% the previous case, but you must set to zero the off-diagonal entries of the class-specific
% covariance matrices).

sigmaF = cov(ftrainData) .* eye(size(sigmaF));
sigmaM = cov(mtrainData) .* eye(size(sigmaM));

y = [ mvnpdf([testData(:,2) testData(:,3)], muF, sigmaF) ...
    mvnpdf([testData(:,2) testData(:,3)], muM, sigmaM) ];

c = (y(:,1) > y(:,2)) + 1;
e = sum(c ~= testData(:,1)) / length(c);
disp(['- Accuracy quadratic discriminant analysis with diagonal covariance matrices: ', num2str((1-e)*100), '%']);

% Two-class linear discriminant analysis (fitting: class-specific mean 
% values as in the previous case. Shared covariance matrix is calculated 
% putting together male and female training examples; the mean values should also be recalculated accordingly).

mu = mean(trainData(:,2:3));
sigma = cov(trainData(:,2:3));

y = [ mvnpdf([testData(:,2) testData(:,3)], mu, sigma) ...
    mvnpdf([testData(:,2) testData(:,3)], mu, sigma) ];

c = (y(:,1) > y(:,2)) + 1;
e = sum(c ~= testData(:,1)) / length(c);
disp(['- Accuracy quadratic discriminant analysis with shared covariance matrix: ', num2str((1-e)*100), '%']);
