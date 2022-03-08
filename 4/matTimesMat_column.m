function [C] = matTimesMat_column(A, B)

n = size(A,1);
C = zeros(n);
for j = 1:n
    for k = 1:n
        C(:,j) =  C(:,j) + B(k,j) * A(:,k);
    end
end

end