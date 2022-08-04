% Laboratory Lesson - 4
% Diogo Correia (dv.correia@ua.pt)

% Exercise 1 --------------------------------------------------------------

clear; close all; clc;

% Simulation of object motion

N = 100;        % Number of time instants
Delta = 1.5;    % Velocity
A = [1 0 Delta 0; 0 1 0 Delta; 0 0 1 0; 0 0 0 1];
sigma_Qx = 2;   
sigma_Qv = 0.5;
epsilon = zeros(4, N);
epsilon(1:2,:) = sigma_Qx * randn(2,N);
epsilon(3:4,:) = sigma_Qv * randn(2,N);
z = zeros(4,N); % State vector (over time)
z(:,1) = [0 0 Delta Delta].'; % Initial state: coordinates at time 0 are (0,0)

for i = 2 : N
    z(:,i) = A * z(:,i-1) + epsilon(:,i);
end

C = [1 0 0 0 ; 0 1 0 0 ; 0 0 0 0 ; 0 0 0 0];
sigma_R = 20;
delta = sigma_R * randn(2,N);
y = zeros(2,N);
y(:,1) = [0 0].';

% my variables
Qk = 0;
Sigma_a = zeros(size(A));
u_a = zeros(size(A));
u = zeros(size(A));

yu = zeros(2,N);
Kt = zeros(size(A));
rt = 0;

for i = 2 : N
    % Prediction
    % Process covanriance matrix
    u = A * u_a(:,i-1);
    Sigma = A * Sigma_a * A' + Qk;
    Sigma = Sigma * eye(size(Sigma));
    
    y(:,i) = C(1:2,:) * z(:,i) + delta(:,i);
    
    % Update
    Sigma_a = Sigma;
    u_a = u;
    
    yu(:,i) = C(1:2,:) * u_a;
    Kt = Sigma * C' \ (C * Sigma * C' + diag([sigma_Qx 0 sigma_Qv 0]));
    rt = y(:,i) - z(1:2,i);
    u = u_a + Kt * rt;
    Sigma = (eye(size(A)) - Kt * C) * Sigma_a;
end

% This figure plots object motion trajectory
figure
plot(z(1,:), z(2,:));
hold on;
plot(y(1,:), y(2,:));
