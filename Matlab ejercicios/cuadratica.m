function [x1,x2]=cuadratica(a,b,c)
%devuelve los valores de x1 y x2 de una ecuacion cuadratica
d = b^2-(4*a*c);
x1 = (-b+sqrt(d))/(2*a);
x2 = (-b-sqrt(d))/(2*a);
