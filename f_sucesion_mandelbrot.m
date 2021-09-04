function z_next=f_sucesion_mandelbrot(z_prev, const)
    %f_sucesion_mandelbrot(z_prev, const)
    %Funcion para calcular el siguiente número de la sucesion de mandelbrot
    %Input:
    %z_prev: Anterior número en la sucesión
    %const: Constante a sumar
    %Output:
    %z_next: Siguiente número de la sucesión
    z_next = z_prev^2+const;
end