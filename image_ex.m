M = zeros(256, 256);
for i=1:1:256
   M(:,i) = i; 
end
figure 1
I = mat2gray(M);
imshow(I);
%salto_x = 4/256;
%salto_y = 8/256;


M_f = zeros(256, 256);
x_n = [];
y_n = [];
for i=1:1:256
   for j=1:1:256
       %z = -2+(j*salto_x) + (4-i*salto_y)*1i;
       z = -256+(j) + (4-i)*1i;
       w = exp(z);
       
       x_n = [x_n real(w)];
       y_n = [y_n imag(w)];
   end
end
x_lim_min = min(x_n);
y_lim_min = min(y_n);
x_lim_max = max(x_n);
y_lim_max = max(x_n);

range_x = x_lim_max - x_lim_min;
range_y = y_lim_max - y_lim_min;

M_f = zeros(256, 256);

for i=1:1:256
   for j=1:1:256
       z = -4+(j*salto_x) + (4-i*salto_y)*1i;
       w = exp(z);
       x_n = round((real(w)+abs(x_lim_min)+1)*(256/range_x));
       y_n = round((imag(w)+abs(y_lim_min)+1)*(256/range_y));
       M_f(x_n, y_n) = M(i,j);
   end
end
Im = mat2gray(M_f);
imshow(Im);
