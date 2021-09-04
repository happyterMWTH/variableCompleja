function z_next=f_sucesion_julia(z_prev, const, exp)
    %f_sucesion_julia(z_prev, const), exp
    %Funcion para calcular el siguiente número de la sucesion de julia
    %Input:
    %z_prev: Anterior número en la sucesión
    %const: Constante a sumar
    %exp: Exponente de la función
    %Output:
    %z_next: siguiente número de la sucesion
    z_next = z_prev^exp+const;
end