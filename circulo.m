theta = linspace(0, 2*pi, 1500);
puntos = [];
[x, y] = pol2cart(theta, 1);



S = x+randn(size(x))/2;
T = y+rand(size(y))/2;

figure(1)
plot(x, y)

figure(2)
plot(S, T)

figure(3)
x_inv = f_eliminar_ruido(S, size(theta,2));
y_inv = f_eliminar_ruido(T, size(theta,2));

plot(x_inv, y_inv)