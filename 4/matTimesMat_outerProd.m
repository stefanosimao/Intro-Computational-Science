function [C] = matTimesMat_outerProd(A, B)

n = size(A,1);
C = zeros(n);
for j = 1:n
	C = C + A(:,j) * B(j,:);
end

end