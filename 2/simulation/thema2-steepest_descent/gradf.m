function [z] = gradf(x1,y1)
    syms x y
    f = x^5 * exp(-x^2-y^2);
    grad = gradient(f, [x,y]);
    z = vpa(subs(grad,[x,y],[x1,y1]));
end

