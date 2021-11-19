x = linspace(-1, 1, 100);
y = -x;

ya = linspace(-1, 1, 100);
xa = 1 + zeros(1, 100);
x = [x xa];
y = [y ya];

xa = linspace(-1, 1, 100);
ya = xa;
xa = fliplr(xa);
ya = fliplr(ya);
x = [x xa];
y = [y ya];

ya = linspace(-1, 1, 100);
xa = -1 + zeros(1, 100);
x = [x xa];
y = [y ya];
S = x+randn(size(x))/5;
T = y+rand(size(y))/5;

figure(1)
plot(x, y)

figure(2)
plot(S, T)
hold off

figure(3)
x_inv = f_eliminar_ruido(S, size(S,2), 0.3);
y_inv = f_eliminar_ruido(T, size(T,2), 0.3);
plot(x_inv, y_inv)