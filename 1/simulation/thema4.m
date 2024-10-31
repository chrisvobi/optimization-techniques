clear all;
close all;
clc;

%% functions
syms x;
f1 = (x-2)^2 + x*log(x+3);
f2 = exp(-2*x) + (x-2)^2;
f3 = exp(x)*(x^3 - 1) + (x-1) * sin(x);

%% variable l
size = 50;

% f1
df1 = diff(f1);
k = zeros(size,1); l = zeros(size,1);
i = 1;
for lamda = linspace(0.002,0.1,size)
    [a,b,k(i),l(i)] = bisection_der(df1, lamda);
    i = i+1;
end
figure(1);
plot(l,k);
xlabel('$l$','Interpreter','latex');
ylabel('Number of iterations $(k)$',"Interpreter","latex");
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');

% f2
df2 = diff(f2);
k = zeros(size,1); l = zeros(size,1);
i = 1;
for lamda = linspace(0.002,0.1,size)
    [a,b,k(i),l(i)] = bisection_der(df2, lamda);
    i = i+1;
end
figure(2);
plot(l,k);
xlabel('$l$','Interpreter','latex');
ylabel('Number of iterations $(k)$',"Interpreter","latex");
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');

% f3
df3 = diff(f3);
k = zeros(size,1); l = zeros(size,1);
i = 1;
for lamda = linspace(0.002,0.1,size)
    [a,b,k(i),l(i)] = bisection_der(df3, lamda);
    i = i+1;
end
figure(3);
plot(l,k);
xlabel('$l$','Interpreter','latex');
ylabel('Number of iterations $(k)$',"Interpreter","latex");
title('$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');

%% [ak, bk] for various l

% f1, l = 0.02
[a,b,k,l] = bisection_der(df1,0.02);
figure(4);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.02','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f1, l = 0.05
[a,b,k,l] = bisection_der(df1,0.05);
figure(5);
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

% f1, l = 0.1
[a,b,k,l] = bisection_der(df1,0.1);
figure(6);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_1$ = $(x-2)^{2}$ + $x$ $\cdot$ $\ln{(x+3)}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.1','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f2, l = 0.02
[a,b,k,l] = bisection_der(df2,0.02);
figure(7);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.02','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f2, l = 0.05
[a,b,k,l] = bisection_der(df2,0.05);
figure(8);
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

% f2, l = 0.1
[a,b,k,l] = bisection_der(df2,0.1);
figure(9);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$f_2$ = $e^{-2x}$ + $(x-2)^{2}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.1','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f3, l = 0.02
[a,b,k,l] = bisection_der(df3,0.02);
figure(10);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.02','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');

% f3, l = 0.05
[a,b,k,l] = bisection_der(df3,0.05);
figure(11);
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

% f3, l = 0.1
[a,b,k,l] = bisection_der(df3,0.1);
figure(12);
hold on;
for i=1:1:k
    plot(i,a(i),'bo');
    plot(i,b(i),'r*');
end
hold off;
title('$$f_3$ = $e^{x}$ $\cdot$ $(x^{3}-1)$ + $(x-1)$ $\cdot$ $\sin{x}$','Interpreter', 'latex');
xlabel('$k$ while $l$ = 0.1','Interpreter','latex');
ylabel('[$a_{k}$,$b_{k}$]','Interpreter','latex')
legend({'$a_{k}$', '$b_{k}$'},'Interpreter','latex');