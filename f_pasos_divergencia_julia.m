function pasos = f_pasos_divergencia_julia(z, const, exp)
    pasosMax = 500;
    pasos = 0;
    z0 = const;
    zPrev = 0;
    while pasos < pasosMax
        zPrev = z;
        z = f_sucesion_julia(zPrev, const, exp);
        if abs(z) > 2
            break
        end
        pasos=pasos+1;
    end
end