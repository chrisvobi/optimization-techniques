clear all;
close all;
clc;

%% DATA
e = 0.001;
gammak = [0.1, 0.3, 3, 5];
f = @(x, y) 1/3 .* (x.^2) + 3 .* (y .^ 2);

%% ALGORITHM
for i = 1:1:4
    k = 1;
    x1 = []; x2 = [];
    x1(k) = 1; x2(k) = 1;

    while norm(gradf(x1(k),x2(k))) >= e
        d = -gradf(x1(k),x2(k));
        x1(k+1) = x1(k) + gammak(i)*d(1);
        x2(k+1) = x2(k) + gammak(i)*d(2);
        k = k + 1;
    end

    z = f(x1,x2);
    figure(i)
    plot(1:k,z);
    xlabel("$Number$ $of$ $Iterations$", Interpreter='latex')
    ylabel("$f$", Interpreter='latex')
    title(['$Convergance$ $of$ $f$ $with$ $\gamma_{k}$ = ' num2str(gammak(i)) ''], Interpreter='latex');
end
