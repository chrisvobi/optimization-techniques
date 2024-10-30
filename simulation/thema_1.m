clear all;
clc;

% functions
f1 = @(x) (x-2)^2 + x*log(x+3);
f2 = @(x) exp(-2*x) + (x-2)^2;
f3 = @(x) exp(x)*(x^3 - 1) + (x-1) * sin(x);
