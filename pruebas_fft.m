frecuencia = 500;
periodo = 1/frecuencia;
longitud = 1500;
t = (0:longitud-1)*periodo;
S = sin(2*pi*t*20)+1.4*sin(2*pi*t*35);
X = S + 2*randn(size(t));

figure(1)
plot(frecuencia*t(1:50), X(1:50))
hold on
plot(frecuencia*t(1:50), S(1:50))
hold off


figure(2)
Y = fft(X);
P2 = abs(Y/longitud);
P1 = P2(1:longitud/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = frecuencia*(0:longitud-1)/longitud;
plot(f,P2) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')

umbral = 35;
for i = 1:1:size(P1, 2)
    if P1(1, i) < umbral
        Y(1, i) = Y(1, i)*0;
    end
    Y(1, size(Y, 2)-i+1) = Y(1, i);
end
inv = ifft(Y);
plot(frecuencia*t(1:50), inv(1:50))

figure(3)
Y = fft(S);
inv = ifft(Y);
plot(frecuencia*t(1:50), S(1:50))
P2 = abs(Y/longitud);
P1 = P2(1:longitud/2+1);
P1(2:end-1) = 2*P1(2:end-1);

%plot(f,P1) 
title('Single-Sided Amplitude Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
