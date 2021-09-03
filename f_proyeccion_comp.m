function [x1, x2, x3]=f_proyeccion_comp(x, y)
    x1 = 2*x/(x^2+y^2+1);
    x2 = 2*y/(x^2+y^2+1);
    x3 = (x^2+y^2-1)/(x^2+y^2+1);
end