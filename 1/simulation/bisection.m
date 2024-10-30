function [a,b,k,e,l] = bisection(f,epsilon,lamda)
l = lamda; e = epsilon;
a = []; b = [];
k = 1;
a(k) = -1; b(k) = 3;
 
while b(k) - a(k) >= l
    x_1 = (a(k)+b(k))/2 - e;
    x_2 = (a(k)+b(k))/2 + e;
    if f(x_1) < f(x_2)
        a(k+1) = a(k);
        b(k+1) = x_2;
    else
        a(k+1) = x_1;
        b(k+1) = b(k);
    end
    k = k + 1;
end