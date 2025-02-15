function [K] = build_kernel(X, f, f_param)
    n = size(X, 1);
    K = zeros(n, n);
    
    % Calculam matricea de kerneluri iterand peste toate perechile de instante
    for i = 1:n
        for j = 1:n
            K(i, j) = f(X(i, :), X(j, :), f_param);
        end
    end
end
