function probabilities = multivariate_gaussian(X, mean_values, cov_matrix)
    num_dimensions = size(X, 2);
    cov_det = det(cov_matrix);
    cov_inv = inv(cov_matrix);
    normalization_factor = 1 / ((2 * pi) ^ (num_dimensions / 2) * cov_det ^ 0.5);
    probabilities = zeros(size(X, 1), 1);
    for i = 1:size(X, 1)
        exponent = -0.5 * (X(i, :) - mean_values) * cov_inv * (X(i, :) - mean_values)';
        probabilities(i) = normalization_factor * exp(exponent);
    end
end