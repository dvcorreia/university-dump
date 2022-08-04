% Laboratory Lesson - 2
% Diogo Correia (dv.correia@ua.pt)

% Exercise 1 --------------------------------------------------------------

close all; clear; clc;
load('heightWeight.mat');

save = 0;   % Save graphs variable (1 = save ; 0 = no save)

% Create plots directory if there is none
if ~(exist('plots','dir') == 7)
    mkdir plots;
    disp('created plots directory!');
end

% Divide Classes (males from females)
male = heightWeightData(heightWeightData(:,1) == 1, 2:3);
female = heightWeightData(heightWeightData(:,1) == 2, 2:3);

% Plotting scatter data from each class
fig1 = figure; hold on; grid minor;
xlabel('Heigth (cm)'); ylabel('Weight (kg)');
scatter(female(:,1), female(:,2), 'bo', 'filled');
scatter(male(:,1), male(:,2), 'rs', 'filled');
title('Dataset'); axis auto;
set(gcf,'Position',[100 100 500 350])

% Analysing Histograms
fig2f = figure('Position', [10 10 400 300]);
title('Height'); hold on;
xlabel('Height (cm)'); ylabel('N');
histogram(female(:,1));
histogram(male(:,1));
legend('Female', 'Male');
grid on;

if save == 1
    figure(fig2f)
    print -depsc2 ./plots/lab2ex1_hist_height.eps;
end

fig2m = figure('Position', [10 10 400 300]);
title('Weight'); hold on;
xlabel('Weight (cm)'); ylabel('N');
histogram(female(:,2));
histogram(male(:,2));
legend('Female', 'Male');
grid on;

if save == 1
    print -depsc2 ./plots/lab2ex1_hist_weight.eps;
end

% Calculate the maximum likelihood estimate of the mean and covariance
% matrix under a multivariate Gaussian model, independently for each class

muF = mean(female);
sigmaF = cov(female);
muM = mean(male);
sigmaM = cov(male);

% Visualize the pdf contour of weight and height in the scatter figure
figure(fig1); hold on;

% Calculate the multivariate Gaussian pdf for males
x1 = min(female(:,1)):1:205; x2 = min(female(:,2)):1:130;
[X1,X2] = meshgrid(x1,x2);
FM = mvnpdf([X1(:) X2(:)],muM,sigmaM);
FM = reshape(FM,length(x2),length(x1));
contour(x1,x2,FM);

% Calculate the multivariate Gaussian pdf for females
FF = mvnpdf([X1(:) X2(:)],muF,sigmaF);
FF = reshape(FF,length(x2),length(x1));
contour(x1,x2,FF);

legend('Female', 'Male', 'Location','northwest');

if save == 1
    print -depsc2 ./plots/lab2ex1_scatter.eps;
end

% Visualize the multivariate Gaussian pdf 2D
fig3mvnpdff = figure('Position', [10 10 400 300]);
F1 = mvnpdf([X1(:) X2(:)], muM, sigmaM); 
F1 = reshape(F1, length(x2), length(x1)); 
surf(x1,x2,F1); 
caxis([min(F1(:))-.5*range(F1(:)),max(F1(:))]); 
axis([min(female(:,1)) 205 min(female(:,2)) 105 0 max(F1(:))])
xlabel('weight'); ylabel('height'); zlabel('Probability Density - Males');
title('Probability Density - Males');
colorbar; view(0, 90);

if save == 1
    print -depsc2 ./plots/lab2ex1_mvnpdf_females.eps;
end

% Visualize the pdf 2D for females
fig3mvnpdfm = figure('Position', [10 10 400 300]);
F2 = mvnpdf([X1(:) X2(:)], muF, sigmaF); 
F2 = reshape(F2, length(x2), length(x1)); 
surf(x1,x2,F2); 
caxis([min(F2(:))-.5*range(F2(:)),max(F2(:))]); 
axis([min(female(:,1)) 205 min(female(:,2)) 105 0 max(F2(:))])
xlabel('weight'); ylabel('height'); zlabel('Probability Density - Females');
title('Probability Density - Females');
colorbar; view(0, 90);

if save == 1
    print -depsc2 ./plots/lab2ex1_mvnpdf_males.eps;
end