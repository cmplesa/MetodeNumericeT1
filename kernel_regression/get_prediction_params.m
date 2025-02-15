function [a] = get_prediction_params (K, y, lambda)
    n = size(K, 1); % Dimensiunea matricei de kernel
    K_reg = K + lambda * eye(n); 

    L = chol(K_reg, 'lower'); % L este matricea triangulara inferioar
    z = L \ y; 
    a = L' \ z;
end
