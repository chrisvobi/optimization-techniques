function [value] = fib(n)
prev = 0;
value = 1;
if n == 0
    value = 0;
end
for i = 2:1:n
    temp = value + prev;
    prev = value;
    value = temp;
end
end