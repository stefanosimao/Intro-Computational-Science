function [v] = spline_curve(alpha,x)
    v = zeros(size(x));
    % + 2 to compensate for i = 1 at the beginning
    for i = 1:size(alpha, 1)
       v = v + alpha(i) * B3(x-i+2);
    end
end