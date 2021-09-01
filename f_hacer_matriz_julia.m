function m = f_hacer_matriz_julia(n, const, exp)
    salto = 4/n;
    m = zeros(n,n);
    for i=1:1:n
       for j=1:1:n
           z= -2+(j*salto) + (2-i*salto)*1i;
           m(i,j) = f_pasos_divergencia_julia(z,const, exp);
       end
    end
end