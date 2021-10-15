%Transformaciones para la imagen del mapa
M = imread('map.pgm');

%Muestro la imagen
figure(1);

I = mat2gray(M);
imshow(I);
title("Imagen original");
drawnow;

%Transformacion e^z
lim_x = 2;
lim_y = pi;
res = 512;
transf = @exp;

figure(2)
M_f = f_apply_transformation(M, transf, lim_x, lim_y, res);
filt = fspecial('average', 5);
M_f = filter2(filt, M_f);
Im = mat2gray(M_f);
imshow(Im);
title("Transformacion e^z");
drawnow;

%Transformacion i*sin(z)
lim_x = 1;
lim_y = 1;
res = 512;
transf = @f_rotated_sin_cos;

figure(3)
M_f = f_apply_transformation(M, transf, lim_x, lim_y, res);
Im = mat2gray(M_f);
imshow(Im);
title("Transformacion sin(z)*cos(z)");
