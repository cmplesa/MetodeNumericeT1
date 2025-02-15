function result = polynomial_kernel(x, y, d)
    x = x';
    y = y';
    result = (1 + x' * y) ^ d;
end
