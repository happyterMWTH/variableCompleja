x = [-2 2];
y = [-2 2];



for n=2:1:8
    for i=1:1:24
        figure(1);
        theta = i*pi/12;
        c = cos(theta) + 1i*sin(theta);
        fprintf("n = %d, c = %f%+fi\n", n, real(c), imag(c))
        m = f_hacer_matriz_julia(2000, c, n);       
        I = imagesc(x, y, m);
        pause(1/120);
        
        figure(2);
        th = 0:pi/50:2*pi;
        xunit = cos(th);
        yunit = sin(th);
        plot(xunit, yunit);
        hold on 
        plot(cos(theta), sin(theta), 'r*');
        hold off
        xlim([-2 2]);
        ylim([-2 2]);
    end
end