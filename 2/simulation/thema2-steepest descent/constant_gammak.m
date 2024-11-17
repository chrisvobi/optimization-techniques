clc;
clear all;
%% DATA
syms x y
f = x^5 * exp(-x^2-y^2);

e = 0.01;
k = 1;
gammak = 0.1;

f_values = [];
xk = []; yk = [];

%% STARTING POINT
%xk(1) = 0; yk(1) = 0;
xk(1) = -1; yk(1) = 1;
%xk(1) = 1; yk(1) = -1;

%% ALGORITHM
while norm(gradf(xk(k),yk(k))) >= e
    d = -gradf(xk(k),yk(k));
    xk(k+1) = xk(k) + gammak*d(1);
    yk(k+1) = yk(k) + gammak*d(2);
    f_values(k) = subs(f,[x,y],[xk(k),yk(k)]);
    k = k + 1;
end

%% DISPLAY FINAL VALUES
disp('Final x:'); disp(xk(k))
disp('Final y:'); disp(yk(k))
disp('Number of iterations:'); disp(k)

%% CONVERGANCE F
disp('Minimum f:'); disp(f_values(k-1))
figure(1)
plot(1:k-1,f_values);
xlabel("Number of Iterations")
ylabel("f")
title(['Convergance of f with starting point [' num2str(xk(1)) ',' num2str(yk(1)) ']']);