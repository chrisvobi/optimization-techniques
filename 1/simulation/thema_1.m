clear all;
close all;
clc;

% functions
f1 = @(x) (x-2)^2 + x*log(x+3);
f2 = @(x) exp(-2*x) + (x-2)^2;
f3 = @(x) exp(x)*(x^3 - 1) + (x-1) * sin(x);

% constant l variable e
size = 50;
k = zeros(size,1); e=zeros(size,1);

% f1
i = 1;
for epsilon = linspace(0.0001,0.0049,size)
    [a,b,k(i),e(i),l] = bisection(f1, epsilon, 0.01);
    i = i + 1;
end
figure(1);
plot(e,k);
xlabel('\epsilon');
ylabel('Number of iterations');
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');

% f2
i = 1;
for epsilon = linspace(0.0001,0.0049,size)
    [a,b,k(i),e(i),l] = bisection(f2, epsilon, 0.01);
    i = i + 1;
end
figure(2);
plot(e,k);
xlabel('\epsilon');
ylabel('Number of iterations');
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');

% f3
i = 1;
for epsilon = linspace(0.0001,0.0049,size)
    [a,b,k(i),e(i),l] = bisection(f3, epsilon, 0.01);
    i = i + 1;
end
figure(3);
plot(e,k);
xlabel('\epsilon');
ylabel('Number of iterations');
title('$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');

% constant e variable l
k = zeros(size,1); l=zeros(size,1);

% f1
i = 1;
for lamda = linspace(0.0021,0.1,size)
    [a,b,k(i),e,l(i)] = bisection(f1,0.001,lamda);
    i = i + 1;
end
figure(4);
plot(l,k);
xlabel('l');
ylabel('Number of iterations');
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');

% f2
i = 1;
for lamda = linspace(0.0021,0.1,size)
    [a,b,k(i),e,l(i)] = bisection(f2,0.001,lamda);
    i = i + 1;
end
figure(5);
plot(l,k);
xlabel('l');
ylabel('Number of iterations');
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');

% f3
i = 1;
for lamda = linspace(0.0021,0.1,size)
    [a,b,k(i),e,l(i)] = bisection(f3,0.001,lamda);
    i = i + 1;
end
figure(6);
plot(l,k);
xlabel('l');
ylabel('Number of iterations');
title('$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');