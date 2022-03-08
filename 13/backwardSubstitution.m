function [x] = backwardSubstitution(U, b)

    x = zeros(size(b));
    n = max(size(b));
   
    x(n) = b (n) / U(n, n);
    for i = n-1:-1:1
        x(i) = (b(i) - dot(x(i+1:end), U(i,i+1:end)))/U(i,i);
    end
end