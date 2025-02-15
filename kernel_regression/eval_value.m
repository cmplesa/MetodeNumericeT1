function pred = eval_value(x, X, f, f_param, a)
    m = size(X, 1);
    pred = 0;
    for i = 1:m
        K = f(x, X(i,:), f_param);
        pred = pred + a(i) * K;
    end
end
