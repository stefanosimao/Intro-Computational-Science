function [C] = matTimesMat_classical(A, B)

n = size(A,1);
C = zeros(n);
for i = 1:n
    for j = 1:n
        for k = 1:n
            C(i,j) =  C(i,j) + A(i,k) * B(k,j);
        end
    end
end

end
