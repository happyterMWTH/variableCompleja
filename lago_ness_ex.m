M = zeros(256, 256);
for i=1:1:256
   M(:,i) = i; 
end

M = imread('lago_ness.pgm');
figure(1);
I = mat2gray(M);
imshow(I);

val_x = 1;
val_y = 1;
res = 80;
fil = size(M, 1)
col = size(M, 2)
salto_x = 2*val_x/col;
salto_y = 2*val_y/fil;
M_f = zeros(res, res);

for i=1:1:fil
   for j=1:1:col
       z = -val_x+(j*salto_x) + (val_y-i*salto_y)*1i;
       w = sin(z);
       x_n = ceil((real(w) + 1.01)*(res/2));
       y_n = ceil((1.01-imag(w))*(res/2));
       if 0 < x_n && x_n <= res && 0 < y_n && y_n <= res
           M_f(y_n, x_n) = M(i,j);
       end
   end
end

figure(2)
Im = mat2gray(M_f);
imshow(Im);
