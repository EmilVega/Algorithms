function matriz = matOrden (matriz)
[fil,~] = size(matriz);
aux = [];
for i=1:1:fil-1
	for j=i+1:1:fil
        if matriz(i,1)>matriz(j,1)
            aux = matriz(i,:);
            matriz(i,:) = matriz(j,:);
            matriz(j,:) = aux;
        end
    end
end