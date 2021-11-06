frecuencia = 500;
periodo = 1/frecuencia;
longitud = 1500;
t = (0:longitud-1)*periodo;
S = 2*sin(2*pi*t*20)+1.4*sin(2*pi*t*35) + 1.7*sin(2*pi*t*10);
X = S + 3*randn(size(t));

figure(1)
plot(frecuencia*t(1:50), X(1:50))
hold off

%Y = fft(S);
figure(2)
inv = f_eliminar_ruido(X, longitud, frecuencia);

figure(3)
plot(frecuencia*t(1:50), inv(1:50))
% P2 = abs(Y/longitud);
% P1 = P2(1:longitud/2+1);
% P1(2:end-1) = 2*P1(2:end-1);

%plot(f,P1) 
title('Single-Sided Amplitude Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
