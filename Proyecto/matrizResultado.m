function matriz = matrizResultado (n)
%Devuelve la matriz completa con las coordenadas corespondientes
matriz = [];
%El primer for recorre la segunda columna de la matriz
for x1=0:1:n
%El segundo for recorre la tercera columna de la matriz
    for y1=0:1:n
        x2=x1;
%
        for y2= y1+1:1:n
                if(x1~=0 || y1~=0)&& (x2~=0 || y2~=0) && (x1~=x2 || y1~=y2)
                    bandera = trianguloR (x1,x2,y1,y2);
                    if bandera == 1
                        matriz = [matriz;0,x1,x2,0,y1,y2];
                    end
                end
        end
%Este for recorre la quinta columa de la matriz
        for x2=x1+1:1:n
% El ultimo for recorre la sexta columna del vector
            for y2=0:1:n
                if(x1~=0 || y1~=0)&& (x2~=0 || y2~=0) && (x1~=x2 || y1~=y2)
                    bandera = trianguloR (x1,x2,y1,y2);
                    if bandera == 1
                        matriz = [matriz;0,x1,x2,0,y1,y2];
                    end
                end
            end
        end
    end
end

