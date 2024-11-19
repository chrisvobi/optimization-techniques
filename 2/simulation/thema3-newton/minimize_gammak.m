clc;
clear all;

%% DATA
e = 0.01;
k = 1;

xk = []; yk = [];

%% STARTING POINT
%xk(1) = 0; yk(1) = 0;
xk(1) = -1; yk(1) = 1;
%xk(1) = 1; yk(1) = -1;

%% ALGORITHM
while norm(gradf(xk(k),yk(k))) >= e
    if k > 200
        disp("More than 200 iterations. Algorithm shuts down");
        break
    end
    d = -inv(hessf(xk(k),yk(k)))*gradf(xk(k),yk(k));
    f_min = @(g) (xk(k)+g*d(1))^5 * exp(-(xk(k)+g*d(1))^2-(yk(k)+g*d(2))^2);
    gammak = golden_section(f_min,0.01,0,5);
    xk(k+1) = xk(k) + gammak*d(1);
    yk(k+1) = yk(k) + gammak*d(2);
    k = k + 1;
end

%% DISPLAY FINAL VALUES
disp('Final x:'); disp(xk(k))
disp('Final y:'); disp(yk(k))
disp('Number of iterations:'); disp(k)

%% CONVERGANCE F
h = @(x,y) x.^5 .* exp(-x.^2-y.^2);
z = h(xk,yk);
disp('Minimum f:'); disp(z(k))
figure(1)
plot(1:k,z);
xlabel("Number of Iterations")
ylabel("f")
title(['Convergance of f with starting point [' num2str(xk(1)) ',' num2str(yk(1)) ']']);