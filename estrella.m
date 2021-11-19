x = linspace(-1, 1.5, 100);
y = 3/5*x+11/10;

xa = linspace(-1.5, 1.5, 100);
ya = 2 + zeros(1, 100);
xa = fliplr(xa);
ya = fliplr(ya);
x = [x xa];
y = [y ya];

xa = linspace(-1.5, 1, 100);
ya = -3/5*xa+11/10;
x = [x xa];
y = [y ya];

xa = linspace(0, 1, 100);
ya = -2.5*xa+3;
xa = fliplr(xa);
ya = fliplr(ya);
x = [x xa];
y = [y ya];

xa = linspace(-1, 0, 100);
ya = 2.5*xa+3;
xa = fliplr(xa);
ya = fliplr(ya);
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