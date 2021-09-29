clc
clear all
close all

% This is some code to test out the solutions of the quantum tridiagonal
% matrix solver

a = 1;
b = 0.2;

n_b = 2;

N = 2^n_b;

% Set up the A matrix
A = diag(ones(N,1)*a);

for i = 1:(N-1)
    A(i,i+1) = b;
    A(i+1,i) = b;
end


A = A/1.5;

% Print out some relevant details about A
eig(A)
cond(A)



% Set up the b vector
b = eye(N,1);

