function result = gaussian_kernel(x, y, sigma)
    x = x';
    y = y';
    squared_distance = sum((x - y) .^ 2);
    result = exp(-squared_distance / (2 * sigma^2));
end