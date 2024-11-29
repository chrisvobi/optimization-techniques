function [z] = gradf(x,y)
    syms x1 x2
    f = 1/3*(x1^2) + 3*(x2^2);
    grad = gradient(f, [x1,x2]);
    z = vpa(subs(grad,[x1,x2],[x,y]));
end

