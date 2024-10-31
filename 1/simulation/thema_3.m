clear all;
close all;
clc;

%% functions
f1 = @(x) (x-2)^2 + x*log(x+3);
f2 = @(x) exp(-2*x) + (x-2)^2;
f3 = @(x) exp(x)*(x^3 - 1) + (x-1) * sin(x);

%% variable l
size = 50;

% f1
k = zeros(size,1); l = zeros(size,1);
i = 1;
for lamda = linspace(0.002,0.1,size)
    [a,b,k(i),l(i)] = fibonacci_method(f1, lamda);
    i = i+1;
end
figure(1);
plot(l,k);
xlabel('$l$','Interpreter','latex');
ylabel('Number of iterations $(k)$',"Interpreter","latex");
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');

% f2
k = zeros(size,1); l = zeros(size,1);
i = 1;
for lamda = linspace(0.002,0.1,size)
    [a,b,k(i),l(i)] = fibonacci_method(f2, lamda);
    i = i+1;
end
figure(2);
plot(l,k);
xlabel('$l$','Interpreter','latex');
ylabel('Number of iterations $(k)$',"Interpreter","latex");
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');

% f3
k = zeros(size,1); l = zeros(size,1);
i = 1;
for lamda = linspace(0.002,0.1,size)
    [a,b,k(i),l(i)] = fibonacci_method(f3, lamda);
    i = i+1;
end
figure(3);
plot(l,k);
xlabel('$l$','Interpreter','latex');
ylabel('Number of iterations $(k)$',"Interpreter","latex");
title('$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');
%% [ak, bk] for various l

% f1, l = 0.01
[a,b,k,l] = fibonacci_method(f1,0.01);
figure(4);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.01','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f1, l = 0.03
[a,b,k,l] = fibonacci_method(f1,0.03);
figure(5);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.03','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f1, l = 0.05
[a,b,k,l] = fibonacci_method(f1,0.05);
figure(6);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.05','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f2, l = 0.01
[a,b,k,l] = fibonacci_method(f2,0.01);
figure(7);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.01','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f2, l = 0.03
[a,b,k,l] = fibonacci_method(f2,0.03);
figure(8);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.03','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f2, l = 0.05
[a,b,k,l] = fibonacci_method(f2,0.05);
figure(9);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.05','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f3, l = 0.01
[a,b,k,l] = fibonacci_method(f3,0.01);
figure(10);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.01','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f3, l = 0.03
[a,b,k,l] = fibonacci_method(f3,0.03);
figure(11);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.03','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f3, l = 0.05
[a,b,k,l] = fibonacci_method(f3,0.05);
figure(12);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.05','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');