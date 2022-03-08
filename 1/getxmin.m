function [xmin] = getxmin()
    y = 1;
    min = 0;
    while y~=0
        min = y;
        y = y / 2;
    end
xmin = min;
end