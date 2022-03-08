function N = NewtonInterpolation (x, y)
	n = length(x);
    N = y;
    for i = 1:(n-1)
        N(n:-1:i+1) = (N(n:-1:i+1) - N(n-1:-1:i)) ./ (x(n:-1:i+1) - x(n-i:-1:1));
    end
end