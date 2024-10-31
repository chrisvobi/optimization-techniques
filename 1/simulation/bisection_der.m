function [a,b,k,l] = bisection_der(f,lamda)
l = lamda;
k = 1;
a = []; b = [];
a(k) = -1; b(k) = 3;
n = 0;
df = diff(f);
while n < log2((b(k)-a(k))/l)
    n = n + 1;
end
for k = 1:n
    x = (a(k)+b(k))/2;
    if df(x) == 0
        return
    elseif df(x) > 0
        a(k+1) = a(k);
        b(k+1) = x;
    else
        a(k+1) = x;
        b(k+1) = b(k);
    end
end
