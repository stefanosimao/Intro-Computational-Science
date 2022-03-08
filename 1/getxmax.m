function [xmax] = getxmax()
    format long
    y = 1;
    max = 0;
    while y < +inf
        max = y;
        y = y * 2;
    end
    xmax = (2 - 2^(-52)) * max;
end

