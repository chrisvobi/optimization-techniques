function [a,b,k,l] = golden_section(f, lamda)
l = lamda; g = 0.618;
a = []; b = [];
k = 1;
a(k) = -1; b(k) = 3;
x_1 = a(1) + (1-g)*(b(1)-a(1));
x_2 = a(1) + g*(b(1)-a(1));
while b(k) - a(k) > l
    if f(x_1) > f(x_2)
        a(k+1) = x_1;
        b(k+1) = b(k);
        x_1 = x_2;
        x_2 = a(k+1)+g*(b(k+1)-a(k+1)); 
    else
        a(k+1) = a(k);
        b(k+1) = x_2;
        x_2 = x_1;
        x_1 = a(k+1) + (1-g)*(b(k+1)-a(k+1));
    end
    k = k + 1;
end
