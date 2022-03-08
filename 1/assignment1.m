%% Assignment 1 
% Name: Stefano Gonçalves Simao
%
% Date: 12/3/2021
%
% This is a template file for the first assignment to get started with running 
% and publishing code in Matlab.  Each problem has its own section (delineated 
% by |%%|) and can be run in isolation by clicking into the particular section
% and pressing |Ctrl| + |Enter| (evaluate current section).
% 
% To generate a pdf for submission in your current directory, use the following
% three lines of code at the command window:
% 
%  >> options.format = 'pdf';
%  >> options.outputDir = pwd;
%  >> publish('assignment1.m', options)
% 
%% Problem 1

%a------------
x = 5;

%b------------
%y = 0.042;
y2 = 4.2 * 10^(-2);

%c------------
r = sqrt (pi);

%d------------
rate = 0.01;
t = 6;
T = 12;
money = 1000;

interest = money * (exp((rate*t)/T) - 1);

%e------------
% We can see that i is the immaginary number
a = 1 + i;
b = 1;
i = 2;
c = exp(i * pi);
d = exp(b * pi);
% We can see that i has now value 2

%f------------
c = exp(1i * pi);
%Using 1i Matlab returns the basic imaginary unit and we have as result -1

%% Problem 2 

%a------------
A = [1 -2 0; -2 1 -2; 0 -2 1]

%b------------
Z = zeros(9)

%c------------
B = ones(9) * 3
%or 
%B = zeros(9) + 3;

%d------------
C = ones(9) - eye(9)

%e------------
d = [1 2 3 4 5 4 3 2 1];
D = diag(d)

%f------------
e = 1:9;
E = [e', e', e', e', e']
    
%% Problem 3 

%a------------
flip(A,2)

%b------------
B(2,:) = ones(1,9)

%c------------
C(1,:) = []

%d------------
F = E(1:2,1:2)

%e------------
E(:,1) = flip(E(:, 1))

%% Problem 4

%a------------
[myeps] = geteps;
X = sprintf('\n myeps: %s \n eps: %s \n' , myeps, eps);
disp(X);

%b------------
[xmin] = getxmin;
Y = sprintf('xmin: %s \n realmin: %s \n', xmin, realmin);
disp(Y);

%c------------
[xmax] = getxmax;
Y = sprintf('xmax: %s \n realmax: %s', xmax, realmax);
disp(Y);

%d------------
%We can see that myeps is equal to eps. xmin and realmin are not the same
%because xmin is the smallest positive non-normalized number and realmin 
%is the smallest positive normalized normalized.
%The first part of getxmax returns the value 8.988465674311580e+307 that is
%the largest power of two that is less than Inf (2^1023). In order to find
%the largest finite number we multiply it with (2 - 2^(-52)).
