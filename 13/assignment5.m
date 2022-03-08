%% ICS - Assignment 5 
% Name: Stefano Gonçalves Simao
%
% Date: 28/5/2021
%
%% Exercise 3
clc

f = @(x) (sqrt(x));
F = @(x) (2 * x .^(3/2) ./ 3);
eps = @(i) 10.^(-i);
x = 0.5;
h = 0.5;
I = 0.5 * (f(0) + f(1));

results = zeros(1, 8);
for i = 1:8
    results(i) = adaptiveQuadrature(f, I, x, h, eps(i));
end

figure;
semilogy((F(1) - F(0)) - results);

%% Exercise 6

X = [0; 0.1; 0.2; 0.3; 0.4; 0.5; 0.6; 0.7; 0.8; 0.9; 1.0];
Y = [0.52; 1.33; 0.97; 1.00; 1.25; 2.05; 2.46; 2.92; 2.82; 2.88; 4.42];

A = zeros(10,5);
for i = 1:10
    for j = 1:5
        A(i,j) = X(i)^(j);
    end
end
A = [ones(10,1) A];

[x,r,d] = leastSquares(A, Y(1:10));

nodes = (0:0.001:1);
f = [];
for p = 0:5
    f = [f (nodes.^p)'];
end
poly = f * x;

figure;
hold on 
plot(nodes, poly);
plot(X, Y, 'r*');
grid on;
hold off

disp('The norm of the residual r is');
disp(r);
disp('That is equal to the norm of d:');
disp(d);