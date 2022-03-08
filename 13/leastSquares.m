function [x,r,d] = leastSquares(A, b)

    [Q, R] = qr(A);
    sizeR = min(size(A));
    R = R(1:sizeR, 1:sizeR);
    
    y = Q' * b;
    x = backwardSubstitution(R, y(1:sizeR));
    
    r = norm(A * x - b);
    d = norm(y(sizeR+1:end));
end