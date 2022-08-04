% Laboratory Lesson - 3
% Diogo Correia (dv.correia@ua.pt)

% Exercise 1 --------------------------------------------------------------

close all; clear; clc;
load('Indian_Pines_Dataset.mat');

% Extract spectral vectors of two classes

save = 0; % save plots flag
c1 = 2; % class index choice 1
c2 = 6; % class index choice 2

% Create plots directory if there is none
if ~(exist('plots','dir') == 7)
    mkdir plots;
    disp('created plots directory!');
end

x1 = zeros(length(find(indian_pines_gt == c1)), 220); n = 0;
for i = 1:size(indian_pines, 1)
    for j = 1:size(indian_pines, 2)
        if indian_pines_gt(i,j)== c1
            n = n + 1;
            x1(n,:)= indian_pines(i,j,:);
        end
    end
end

x2 = zeros(length(find(indian_pines_gt == c2)), 220); n = 0;
for i = 1:size(indian_pines, 1)
    for j = 1:size(indian_pines, 2)
        if indian_pines_gt(i,j) == c2
            n = n + 1;
            x2(n,:)= indian_pines(i,j,:);
        end
    end
end

% Estimate the sample covariance matrix of the dataset as a whole
x = [x1 ; x2];
x = (x - mean(x)) ./ max(std(x));
sigma = 1/size(x, 1) .* x' * x;

% Perform the eigenvector decomposition of the sample covariance matrix
[W, lambda] = eig(sigma);

% Choose a number of dimensions K<=220
K = 2;

% Construct the eigenvector matrix W for K components
W_r = W(:,1:K);

% Using W, compute the PCA coefficients for each spectral vector in the test set
z1 = x1 * W_r;
z2 = x2 * W_r;

% From the PCA coefficients obtain an approximation of the corresponding test vector
% and compute the error (mean square error - MSE)
x1_aprox = z1 * W_r';
x2_aprox = z2 * W_r';
J1 = 1/size(x1, 1) .* sum(norm(x1 - x1_aprox).^2);
J2 = 1/size(x2, 1) .* sum(norm(x2 - x2_aprox).^2);
var1 = 1/size(x1, 1) .* sum(norm(x1).^2);
var2 = 1/size(x2, 1) .* sum(norm(x2).^2);
var1_retained = 1 - J1 / var1
var2_retained = 1 - J2 / var2

% Plot 2D
if save
    try
        fig1 = figure(); hold on;
        plot(z1(:,1), z1(:,2), 'b');
        plot(z2(:,1), z2(:,2), 'r'); 
        plt = Plot();
        plt.LineStyle = {'none', 'none'};
        plt.Markers = {'s', 'o'};
        plt.Title = ['PCA K = ', num2str(K)];
        plt.XLabel = 'PCA1';
        plt.YLabel = 'PCA2';
        plt.Colors = {[1,      0,       0] [0,      0,       1]};
        plt.Legend = {['class1: RetainedVAR = ', num2str(var1_retained)], ['class2: RetainedVAR = ', num2str(var2_retained)]};
        plt.LegendBox = 'off';
        plt.export('./plots/lab3ex1_2d_pca.png');
    catch
        warning('Problem trying to use PlotPug library. Will save it in .eps');
        figure(fig1); print -depsc2 ./plots/lab2ex2_doc1.eps;
    end
else
    fig1 = figure(); hold on; grid minor;
    plot(z1(:,1), z1(:,2), 'b.');
    plot(z2(:,1), z2(:,2), 'r.');
    xlabel('PCA1'); ylabel('PCA2');
    axis auto; title(['PCA K = ', num2str(K)]);
    legend('class 1', 'class 2');
end

% Plot the average MSE over the test set as a function of K
kn = 2 : 5 : 220;
ekn1 = zeros(1,length(kn));
ekn2 = zeros(1,length(kn));

for i = 1 : length(kn)
    W_rn = W(:,1:kn(i));
    z1n = x1 * W_rn;
    z2n = x2 * W_rn;
    x1_aproxn = z1n * W_rn';
    x2_aproxn = z2n * W_rn';
    ekn1(i) = (1/size(x1, 1) .* sum(norm(x1 - x1_aproxn).^2))/var1;
    ekn2(i) = (1/size(x2, 1) .* sum(norm(x2 - x2_aproxn).^2))/var2;
end

fig2 = figure; threshold = 0.01;

if save
    plot(kn, ekn1, kn, ekn2, kn, repmat(threshold,1,length(kn)));
    axis tight;
    plt = Plot(fig2);
    plt.XLabel = 'K';
    plt.YLabel = 'MSE';
    plt.Colors = {[1,      0,       0]...
                  [0,      0,       1]...
                  [0,      1,       0]};
    plt.Title = 'MSE';
    plt.Legend = {'class1', 'class2', ['threshold [', num2str(threshold), ']']};
    plt.LegendBox = 'off';
    plt.export('./plots/lab3ex1_var.png');
else
    plot(kn, ekn1, 'b', kn, ekn2, 'r', kn, repmat(threshold,1,length(kn)), 'm');
    axis auto; legend(['class 1'], 'class 2');
end


% Plot the eigenvectors corresponding to the 3 largest eigenvalues
W = W'; fig3 = figure; hold on; grid on;
plot3([0; W(1,1)], [0; W(1,2)], [0; W(1,3)], 'k');
plot3([0; W(2,1)], [0; W(2,2)], [0; W(2,3)], 'b');
plot3([0; W(3,1)], [0; W(3,2)], [0; W(3,3)], 'r');
view(30, 30);

if save
   plt = Plot(fig3);
   plt.XLabel = 'X';
   plt.YLabel = 'Y';
   plt.ZLabel = 'Z';
   plt.Title = 'Eigenvectors';
   plt.export('./plots/lab3ex1_eigvec.png');
end