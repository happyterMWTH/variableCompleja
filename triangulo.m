x = linspace(-1, 0, 150);
y = x+1;


xa = linspace(0, 1, 150);
ya = -xa+1;
x = [x xa];
y = [y ya];

xa = linspace(-1, 1, 150);
ya = zeros(1, 150);
xa = fliplr(xa);
ya = fliplr(ya);
x = [x xa];
y = [y ya];



S = x+randn(size(x))/2;
T = y+rand(size(y))/2;

figure(1)
plot(x, y)

figure(2)
plot(S, T)
hold off

figure(3)
x_inv = f_eliminar_ruido(S, size(S,2), 0.3);
y_inv = f_eliminar_ruido(T, size(T,2), 0.3);
plot(x_inv, y_inv)