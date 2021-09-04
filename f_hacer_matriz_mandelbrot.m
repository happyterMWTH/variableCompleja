function m=f_hacer_matriz_mandelbrot(n)
    %f_hacer_matriz_mandelbrot(n)
    %Funcion que crea una matriz de pixeles para crear una imagen
    %La matriz tiene valores de color indicando el numero de pasos que
    %tarda en diverger cada valor en la sucesión de mandelbrot
    %Input:
    %n: tamaño de la matriz a crear 
    %Output:
    %Matriz de colores
    m = zeros(n,n);
    salto = 4/n;
    for i=1:1:n
       for j=1:1:n
           %m(i,j)
           z = -2+(j*salto) + (2-i*salto)*1i;
           m(i,j) = f_pasos_divergencia_mandelbrot(z);
       end
    end
end