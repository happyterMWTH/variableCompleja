recta = [];
x = linspace(-1, 1, 200);
y = 2 + zeros(1, 200);

ya = linspace(2, 0, 200);
xa = -1+zeros(1, 200);
x = [x xa];
y = [y ya];

xa = linspace(-1, 1, 200);
ya = zeros(1, 200);
x = [x xa];
y = [y ya];

ya = linspace(2, 0, 200);
xa = 1+zeros(1, 200);
x = [x xa];
y = [y ya];

S = x+randn(size(x));
T = y+rand(size(y));

figure(1)
plot(x, y)

figure(2)
plot(S, T)
hold off



figure(3)
x_inv = f_eliminar_ruido(S, size(S,2), 0.5);
y_inv = f_eliminar_ruido(T, size(T,2), 0.5);
plot(x_inv, y_inv)

