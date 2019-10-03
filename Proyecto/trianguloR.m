function bandera = trianguloR (x1,x2,y1,y2)
%Devuelve 0 que es falso y 1 que es verdadero, dependiendo si es un triangulo rectangulo o no
%Calculamos las distancias de los puntos
AB = sqrt(((-x1)^2)+((-y1)^2));
AC = sqrt(((-x2)^2)+((-y2)^2));
BC = sqrt((x1-x2)^2+(y1-y2)^2);
[M,~] = maymen3(AB,AC,BC);
%Seleccionamos cual es la hipotenusa y sus catetos
if (M ==AB)
    c = (AC^2) + (BC^2);
else
    if (M==BC)
        c = (AB^2) + (AC^2);
    else
        c = (AB^2) + (BC^2);
    end
end
hip = M^2;
%Se compara hip y catetos, con un error del 0.01 debido a que son decimales
if abs(hip-c)<0.01
    bandera=1;
else
    bandera=0;
end