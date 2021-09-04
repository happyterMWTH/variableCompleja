function pasos = f_pasos_divergencia_julia(z, const, exp)
    %f_pasos_divergencia_juliat(z, const, exp)
    %Función que dado un punto en el plano complejo, una constante y un
    %exponente, da el numero de pasos que tarda en diverger en la sucesión 
    %de julia
    %Input:
    %z: numero complejo del que evaluamos la convergencia
    %const: constante usada para el conjunto de julia
    %exp: exponente usado para el conjunto de julia
    %al que le evaluamos la convergencia
    %Output:
    %pasos: numero de pasos que tarda en diverger
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