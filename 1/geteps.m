function [myeps] = geteps
y = 1;
while 1 + y > 1
    y = y / 2;
end
myeps = 2 * y;
end