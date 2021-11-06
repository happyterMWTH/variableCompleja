recta = [];
x = linspace(-1, 1, 500);
y = 2 + zeros(1, 500);

ya = linspace(2, 0, 500);
xa = -1+zeros(1, 500);
x = [x xa];
y = [y ya];

xa = linspace(-1, 1, 500);
ya = zeros(1, 500);
x = [x xa];
y = [y ya];

ya = linspace(2, 0, 500);
xa = 1+zeros(1, 500);
x = [x xa];
y = [y ya];

S = x+randn(size(x));
T = y+rand(size(y));

figure(1)
plot(x, y)
hold on
plot(S, T)
hold off

figure(2)
x_inv = f_eliminar_ruido(S, size(S,2));
y_inv = f_eliminar_ruido(T, size(T,2));
plot(x_inv, y_inv)