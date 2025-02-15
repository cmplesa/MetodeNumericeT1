function [mean_values, variances] = estimate_gaussian(X)

    [m, n] = size(X); 
    mean_values = zeros(1, n); 

    % Calculam media pentru fiecare caracteristica
    for i = 1:n
        mean_values(i) = sum(X(:, i)) / m; 
    end
 
    variances = zeros(n, n); % Initializam matricea

    % Calculam matricea de varianta pentru caracteristicile din X
    for i = 1:m
        variances = variances + (X(i, :) - mean_values)' * (X(i, :) - mean_values);
    end
    variances = variances / m; % Normalizam prin numarul de observatii pentru a obtine varianta

end
