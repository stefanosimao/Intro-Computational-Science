%% Assignment 2 
% Name: Stefano Gonçalves Simao
%
% Date: 02/04/2021
clc
clear
%% -----Problem 3-----

% a) & b)

% Initialization
x0 = 1;
d = [];
h = [];
err = [];

% Difference quotient
for i = 1:10
   h(i) = 10^(-i);
   d(i) = (exp(x0 + h(i)) - exp(x0))/h(i);
   err(i) = abs(exp(x0) - d(i));
end


% c)

% Visualize
loglog(h,err);


%% -----Problem 6-----

% b)

% Test
n = 3000;
A = rand(n,n);
B = rand(n,n);
tic
[C] = matTimesMat_classical(A, B); 
toc
norm(C - A * B) / norm(C)
tic
[C] = matTimesMat_column(A, B); 
toc
norm(C - A * B) / norm(C)
tic
[C] = matTimesMat_outerProd(A, B); 
toc
norm(C - A * B) / norm(C)