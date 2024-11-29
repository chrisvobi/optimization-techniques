clear all;
close all;
clc;

%% DATA
e = 0.01;
gammak = 0.2;
sk = 0.1;
k = 1;
x1 = []; x2= [];
x1(k) = 8; x2(k) = -10;

%% ALGORITHM
while norm(gradf(x1(k),x2(k))) >= e
   d = -gradf(x1(k),x2(k));

   x1bar = x1(k) + sk*d(1);
   if x1bar < - 10
       x1bar = -10;
   elseif x1bar > 5
       x1bar = 5;
   end

   x2bar = x2(k) + sk*d(2);
   if x2bar < - 8
       x2bar = -8;
   elseif x2bar > 12
       x2bar = 12;
   end

   x1(k+1) = x1(k) + gammak*(x1bar-x1(k));
   x2(k+1) = x2(k) + gammak*(x2bar-x2(k));
   k = k+1;

end

%% CONVERGANCE
f = @(x, y) 1/3 .* (x.^2) + 3 .* (y .^ 2);
z = f(x1,x2);
figure(1)
plot(1:k,z)
xlabel("$Number$ $of$ $Iterations$", Interpreter='latex')
ylabel("$f$", Interpreter='latex')
title(['$Convergance$ $of$ $f$ $with$ $\gamma_{k}$ = ' num2str(gammak) ' $and$  $s_{k}$ = ' num2str(sk) ''], Interpreter='latex');