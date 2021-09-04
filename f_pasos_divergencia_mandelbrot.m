function pasos = f_pasos_divergencia_mandelbrot(const)
    %f_pasos_divergencia_mandelbrot(const)
    %Función que dado un punto en el plano complejo da el numero de pasos
    %que tarda en diverger en la sucesión de mandelbrot
    %Input:
    %const: constante usada para el conjunto de mandelbrot; mismo número z
    %al que le evaluamos la convergencia
    %Output:
    %pasos: numero de pasos que tarda en diverger
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