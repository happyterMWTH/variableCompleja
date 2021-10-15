function M_f = f_apply_transformation(Image, fun, lim_x, lim_y, res)
    
    fil = size(Image, 1);
    col = size(Image, 2);
    salto_x = 2*lim_x/col;
    salto_y = 2*lim_y/fil;
    M_f = zeros(res, res);

    for i=1:1:fil
       for j=1:1:col
           z = -lim_x+(j*salto_x) + (lim_y-i*salto_y)*1i;
           w = fun(z);
           x_n = ceil((real(w) + 1.01)*(res/2));
           y_n = ceil((1.01-imag(w))*(res/2));
           if 0 < x_n && x_n <= res && 0 < y_n && y_n <= res
               M_f(y_n, x_n) = Image(i,j);
           end
       end
    end


end