x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);

[X, Y] = meshgrid(x, y);
Z = sin((X.^2 + Y.^2)/20) .* exp(-(X.^2 + Y.^2));

figure(1);
surf(X, Y, Z);

colormap summer;
shading interp;
zlim('auto');
view(45, 45);

xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('Trimatis funkcijos grafikas');
grid on;




x = linspace(-1, 1, 20);
y = linspace(-1, 1, 20);

[X, Y] = meshgrid(x, y);
R = sqrt(X.^2 + Y.^2);
Z = exp(R.^2);

figure (2);
surf(X, Y, Z);

colormap summer;
shading interp;
view(70, 70);

xlabel('x');
ylabel('y');
zlabel('z');
title('Paviršius z = e^{r^2}');
grid on;





x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);
[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure(3);
surf(X, Y, Z);
shading flat;
title('shading flat');
xlabel('x'); ylabel('y'); zlabel('z');

figure(4);
surf(X, Y, Z);
shading faceted;
title('shading faceted');
xlabel('x'); ylabel('y'); zlabel('z');

figure(5);
surf(X, Y, Z);
shading interp;
title('shading interp');
xlabel('x'); ylabel('y'); zlabel('z');