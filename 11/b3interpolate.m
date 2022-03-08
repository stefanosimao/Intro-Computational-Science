function [alpha] = b3interpolate(y)
   dim = size(y, 1);
   
   % Populate Natural Boundary matrix
   M = zeros(dim + 2);
   M(1,1:3) = [1, -2, 1];
   M(dim+2, dim:end) = [1, -2, 1];
   for i = 1:dim
       M(i+1, i:i+2) = [1/6, 2/3, 1/6];
   end
   alpha = M \ [0; y; 0];
end