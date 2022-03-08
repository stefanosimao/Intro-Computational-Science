function [L,U] = GaussGAXPY(A)

n = size(A,1);
L = zeros(n);
U = zeros(n);

for j = 1 : n
    
    if A(j,j) ~= 0
        for k = 1 : j-1
         A(k + 1 : n, j) = A(k + 1 : n, j) - A(k,j) * A(k + 1 : n, k);
        end
        A(j + 1 : n, j) = A(j + 1:n , j)/A(j,j);
    else
        L = [];
        U = [];
        fprintf('Error: one of the pivot elements is zero.\n')
        break;
    end
end   
L = tril(A);
L = L - diag(diag(L));
L = L + eye(n);
U = triu(A);
end

