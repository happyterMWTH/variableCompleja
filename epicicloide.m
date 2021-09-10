clear
clc
cicloides = [];
figure(1);

for i=2:2:10
    R = 0.5;
    r = R/i;
    theta = linspace(0, 8*pi, 400);
    x = (R + r)*cos(theta)-r*cos((theta*R/r)+theta) + 0.2*i;
    y = (R + r)*sin(theta)-r*sin((theta*R/r)+theta) - 0.2*i;
    plot(x, y)
    cicloides = [cicloides;x;y];
    hold on
end
figure(2);
[X, Y, Z] = sphere;
ax = axes;
surf(ax, X,Y,Z, 'FaceAlpha',0.01, "LineStyle","-", 'EdgeAlpha',0.5);
hold on
xlabel('x');
ylabel('y');
zlabel('z');
for i=1:2:size(cicloides, 1)
    x = cicloides(i, :);
    y = cicloides(i+1, :);
    [x1, x2, x3] = arrayfun(@f_proyeccion_comp, x, y);
    plot3(ax, x1, x2, x3, 'LineWidth', 1);
    hold on
end