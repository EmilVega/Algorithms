function [matCompX,matCompY] = coordenadas (n)
matCompX = [];
matCompY = [];
for i=1:1:n
    [matX, matY] = matriz(i);
    matCompX = [matCompX;matX];
    matCompY = [matCompY;matY];
end