%Transformaciones para la imagen del monstruo del lago ness
M = imread('lago_ness.pgm');

%Muestro la imagen
figure(1);
imshow(I);
title("Imagen original");
drawnow;
I = mat2gray(M);

%Transaformacion e^z
lim_x = 2;
lim_y = pi;
res = 80;
transf = @exp;

figure(2)
M_f = f_apply_transformation(M, transf, lim_x, lim_y, res);
Im = mat2gray(M_f);
imshow(Im);
title("Transformacion e^z");
drawnow;

%Transformacion i*sin(z)
lim_x = 1;
lim_y = 1;
res = 80;
transf = @f_rotated_sin;

figure(3)
M_f = f_apply_transformation(M, transf, lim_x, lim_y, res);
Im = mat2gray(M_f);
imshow(Im);
title("Transformacion i*sin(z)");
