function pasos = f_pasos_divergencia_mandelbrot(const)
    pasosMax = 100;
    pasos = 0;
    z0 = 0;
    zPrev = 0;
    z = z0;
    while pasos < pasosMax
        zPrev = z;
        z = f_sucesion_mandelbrot(zPrev, const);
        if abs(z) > 2
            break
        end
        pasos=pasos+1;
    end
end