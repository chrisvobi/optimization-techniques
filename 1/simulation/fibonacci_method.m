function [a,b,k,l] = fibonacci_method(f,lamda)
l = lamda;
e = 0.001;
k = 1;
a = []; b=[];
a(k) = -1; b(k) = 3;

n = 0;
while fibonacci(n) <= (b(k)-a(k))/l
    n = n+1;
end

x1 = zeros(n,1); x2 = zeros(n,1);

x1(1) = a(1) + (fibonacci(n-2)*(b(1)-a(1)))/fibonacci(n);
x2(1) = a(1) + (fibonacci(n-1)*(b(1)-a(1)))/fibonacci(n);

for k = 1:n-2
    if f(x1(k)) > f(x2(k))
        a(k+1) = x1(k);
        b(k+1) = b(k);
        x1(k+1) = x2(k);
        x2(k+1) = a(k+1) + (fibonacci(n-k-1)*(b(k+1)-a(k+1)))/fibonacci(n-k);
    else
        a(k+1) = a(k);
        b(k+1) = x2(k);
        x2(k+1) = x1(k);
        x1(k+1) = a(k+1) + (fibonacci(n-k-1)*(b(k+1)-a(k+1)))/fibonacci(n-k);
    end
end

x1(n) = x1(n-1);
x2(n) = x1(n-1) + e;
if f(x1(n)) > f(x2(n))
    a(n) = x1(n);
    b(n) = b(n-1);
else
    a(n) = a(n-1);
    b(n) = x1(n);
end