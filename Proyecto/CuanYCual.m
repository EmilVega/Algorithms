function [cuan, cual, dond] = CuanYCual (vector)
% Devuelve cuantos numeros estan repetidos, cuales son, y en que que posición se encuentra
n = length (vector);
cuan =0;
cual = [];
dond = [];
cuanCada = [];
indi = [];
%El primer for toma un valor del vector para recorrerlo mediante el segundo for
for i=1:n
    b=1;
    if (i>=2)
% Este for recorre los numeros anteriores comparando que sea diferente        
        for k=i-1:-1:1 
% Para comparar si son iguales se debe estimar un error de 0.01 debido a los resultados estan en decimales            
            if abs(vector(i) - vector(k))<0.01
                b=0;
                %EL break rompe el bucle for
                break
            end
        end
    end
% b controla que no se repita la posición del mismo numero varias veces
    if (b~=0)
        c=1;
        for j=i+1:1:n
 % Se debe hacer lo misma comparacion de la anterior con el mismo error
            if abs(vector(i)-vector(j))<0.01 
                if c==1
                    dond = [dond,i];
                    cual = [cual;vector(i)];
                    indi = [indi;i];
                    cuan = cuan+1;
                end
                dond = [dond,j];
                c=c+1;
            end
        end
        cuanCada = [cuanCada;c];
    end
    
end
cuanCada = [cuanCada,indi];
cual = [cual,cuanCada];
