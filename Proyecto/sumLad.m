function vector = sumLad (matriz)
% Devuelve un vector con la suma de todos los lados de la matriz
vector = [];
[m,~]=size (matriz);
%Recorremos toda la matriz sumando sus lados al cuadrado para guardarlo en un vector
for i=1:m
    AB = sqrt(((-matriz(i,2))^2)+((-matriz(i,5))^2));
    AC = sqrt(((-matriz(i,3))^2)+((-matriz(i,6))^2));
    BC = sqrt(((matriz(i,2)-matriz(i,3))^2)+((matriz(i,5)-matriz(i,6))^2));
    vector = [vector;(AB^2)+(AC^2)+(BC^2)];
end

