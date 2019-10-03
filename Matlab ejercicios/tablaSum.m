function matriz = tablaSum (n)
matriz=ones(12,3);
i=1;
while i<=12
    j = 1;
    while j<=3
        if j ==1
            matriz (i,j) = n;
        end
        if j ==2
            matriz (i,j) = i;
        end
        if j == 3
            matriz (i,j) = n + i;
        end
        j = j +1;
    end
    i = i +1;
end
