function [z] = fun(x1,y1)
    syms x y
    f = x^5 * exp(-x^2-y^2);
    z = vpa(subs(f,[x,y],[x1,y1]));
end

