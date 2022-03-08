%% Midterm - Introduction to Computational Science
% Name: Stefano Gonçalves Simao
%
% Date: 30/4/2021
%% Exercise 6
clc

A = [2,2,2,1,1;
     2,7,6,2,4;
     4,19,20,8,14;
     8,23,28,17,20;
     6,31,38,37,34];

% A = [0,3;3,3];

% A = [1,2,3;4,5,6;3,-3,5];

[L,U] = GaussGAXPY(A)