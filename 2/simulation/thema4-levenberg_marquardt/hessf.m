function [z] = hessf(x1,y1)
    syms x y
    f = x^5 * exp(-x^2-y^2);
    hess = hessian(f,[x,y]);
    z = vpa(subs(hess,[x,y],[x1,y1]));
end
