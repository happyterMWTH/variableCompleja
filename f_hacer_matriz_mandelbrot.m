function m=f_hacer_matriz_mandelbrot(n)
    m = zeros(n,n);
    salto = 4/n;
    for i=1:1:n
       for j=1:1:n
           %m(i,j)
           z = -2+(j*salto) + (2-i*salto)*1i;
           m(i,j) = f_pasos_divergencia_mandelbrot(z);
       end
    end
    imagesc(m);
end