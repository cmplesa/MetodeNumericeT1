function [a] = get_prediction_params_iterative(K, y, lambda)
    m = size(K, 1);
    M = K + lambda * eye(m);
    b = y;
    tol = 1e-6;
    max_iter = 1000;
    a = conjugate_gradient(M, b, zeros(m, 1), tol, max_iter);
end
