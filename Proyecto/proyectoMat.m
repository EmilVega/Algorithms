function [matrizR, vectorSum, Cuantos, Cuales, Donde] = proyectoMat (n)
%Devuelve la matriz resultado, el vector de la suma de sus lados al cuadrado, cuantos, cuales y donde estan los triangulos de iguales lados 
matrizR = matrizResultado (n);
[filas,~] = size(matrizR);
x =[];
y =[];
x1 = [];
y1  = [];
x2 = [];
y2 = [];
figure, plot(0,0);
hold on
% Se recorre todas las filas de la matriz graficandolas en el plot
for i=1:filas
    x = [0,matrizR(i,2),matrizR(i,3),0];
    y = [0,matrizR(i,5),matrizR(i,6),0];
    plot(x,y)
end
title('TRIANGULOS RECTÁNGULOS')
hold off
print ('-dpdf','Matriz Completa.pdf')
vectorSum = sumLad (matrizR);
[Cuantos, Cuales, Donde] = CuanYCual(vectorSum);
Cuales = matOrden(Cuales);
[p,~] = size(Cuales);
if p>36
    p=36;
end
%Se imprime solo el triangulo en la posicion indicada en el vector cuales
figure, subplot (6,6,1)
x1 = [0,matrizR(Cuales(1,3),2),matrizR(Cuales(1,3),3),0];
y1 = [0,matrizR(Cuales(1,3),5),matrizR(Cuales(1,3),6),0];
plot (x1,y1)
for i=2:1:p
    subplot (6,6,i)
    x1 = [0,matrizR(Cuales(i,3),2),matrizR(Cuales(i,3),3),0];
    y1 = [0,matrizR(Cuales(i,3),5),matrizR(Cuales(i,3),6),0];
    plot (x1,y1)
end
print ('-dpdf','Triangulos Diferentes.pdf')
[fil,~] = size(Cuales);
[M,m]= MayMenVect(Cuales(:,1));
[M1,m1]= MayMenVect(Cuales(:,2));

for i=1:fil
    x2 = [x2,Cuales(i,1)];
    y2 = [y2,Cuales(i,2)];
end
figure, plot(x2,y2)
hold on
axis ([(m-1) (M+1) (m1-1) (M1+1)])
title('Cuántos vs Cuáles')
xlabel('Cuántos')
ylabel('Cuáles')
hold off
print ('-dpdf','Cuantos vs Cuales.pdf')
