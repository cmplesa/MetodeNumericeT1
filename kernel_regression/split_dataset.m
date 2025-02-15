function [X_train, y_train, X_pred, y_pred] = split_dataset(X, y, percentage)
    num_points = size(X, 1); % Calculează numărul total de instanțe în setul de date
    num_train = round(percentage * num_points); % Calculează numărul de instanțe pentru antrenament
    X_train = X(1:num_train, :);
    y_train = y(1:num_train, :);
    X_pred = X(num_train+1:end, :);
    y_pred = y(num_train+1:end, :);
end