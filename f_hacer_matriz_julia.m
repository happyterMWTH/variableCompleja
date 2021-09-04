function m = f_hacer_matriz_julia(n, const, exp)
    %f_hacer_matriz_julia(n, const, exp)
    %Funcion que crea una matriz de pixeles para crear una imagen
    %La matriz tiene valores de color indicando el numero de pasos que
    %tarda en diverger cada valor en la sucesión de julia
    %Input:
    %n: tamaño de la matriz a crear 
    %const: numero complejo que es la constante de la sucesión
    %exp: exponente de la sucesion
    %Output:
    %Matriz de colores
    salto = 4/n;
    m = zeros(n,n);
    for i=1:1:n
       for j=1:1:n
           z= -2+(j*salto) + (2-i*salto)*1i;
           m(i,j) = f_pasos_divergencia_julia(z,const, exp);
       end
    end
end