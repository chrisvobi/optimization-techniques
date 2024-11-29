clc;
clear all;

syms x1 x2;

f = 1/3*(x1^2) + 3*(x2^2);

figure(1);
fsurf(f, [-10, 10, -10, 10]);
xlabel('$x_1$', Interpreter='latex');
ylabel('$x_2$', Interpreter='latex');
zlabel('$f$', Interpreter='latex');
title('$f$ = $\frac {1} {3}$ $x_{1}^{2}$ + $3$ $x_{2}^{2}$',Interpreter='latex');