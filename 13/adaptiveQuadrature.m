function [I] = adaptiveQuadrature(f,I,x,h,epsl)
    E = f(x) - 0.5 * (f(x - h) + f(x + h));
    if (abs(E) > epsl)
        I = I + (h * E) + adaptiveQuadrature(f, 0, x - 1/2 * h, 1/2 * h, epsl) + adaptiveQuadrature(f, 0, x + 1/2 * h, 1/2 * h, epsl);
    end
end