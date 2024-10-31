function [a,b,k,l] = bisection_der(df,lamda)
syms x;
l = lamda;
k = 1;
a = []; b = [];
a(k) = -1; b(k) = 3;
n = 0;
while n < log2((b(k)-a(k))/l)
    n = n + 1;
end
for k = 1:n
    xk = (a(k)+b(k))/2;
    val = subs(df,x,xk);
    value = double(val);
    if value == 0
        return
    elseif value > 0
        a(k+1) = a(k);
        b(k+1) = xk;
    else
        a(k+1) = xk;
        b(k+1) = b(k);
    end
end
