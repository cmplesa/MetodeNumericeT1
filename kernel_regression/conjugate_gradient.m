function [x] = conjugate_gradient(A, b, x0, tol, max_iter)
    x = x0;
    r = b - A * x;
    p = r;
    iter = 0;
    while iter < max_iter && norm(r) > tol
        alpha = (r' * r) / (p' * A * p);
        x = x + alpha * p;
        r_new = r - alpha * A * p;
        beta = (r_new' * r_new) / (r' * r);
        p = r_new + beta * p;
        r = r_new;
        iter = iter + 1;
    end
end
