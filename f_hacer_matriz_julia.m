function m = f_hacer_matriz_julia(n, exp)
    m = zeros(n,n);
    salto = 4/n;
    tic
    for i=1:1:n
       i
       for j=1:1:n
           z= -2+(j*salto) + (2-i*salto)*1i;
           m(i,j) = f_pasos_divergencia_julia(z, exp);
       end
    end
    imagesc(m);
    toc
end