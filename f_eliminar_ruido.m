function inv=f_eliminar_ruido(X, longitud, umbral)
    Y = fft(X);
    P2 = abs(Y/longitud);
    P1 = P2(1:longitud/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
%     f = frecuencia*(0:longitud-1)/longitud;
%     
%     plot(f(1:longitud/2+1),P1)
    
    for i = 1:1:size(P1, 2)
        if P1(1, i) < umbral && i>1
            Y(1, i) = Y(1, i)*0;
            Y(1, end-i+2) = 0;
        end

    end
    inv = ifft(Y);
end