clc;
clear all;

syms x y;

f = x^5 * exp(-x^2-y^2);

figure(1);
fsurf(f, [-3, 3, -3, 3]);
xlabel('x');
ylabel('y');
zlabel('f');
title('$f$ = $x^{5}$ $\cdot$ $e^{-x^{2}-y^{2}}$',Interpreter='latex');