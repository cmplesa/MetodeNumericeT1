function [P] = get_lower_inverse(L)

    n = size(L, 1); % Determina dimensiunea matricei L
    P = eye(n); % Initializeaza matricea P ca matricea identitate de dimensiune n
    
    % Proceseaza fiecare coloana a matricei identitate pentru a determina coloanele matricei inverse
    for j = 1:n
        for i = j:n
            if i == j
                P(i, j) = 1 / L(i, i); 
            else
                P(i, j) = -L(i, j:n) * P(j:n, j) / L(i, i);
            end
        end
    end
end