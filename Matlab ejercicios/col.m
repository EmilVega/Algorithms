function columna = col(A,j)
%devuelve la fila i de A
[m,n]=size(A);
if 1<=j && j<=n
    columna=ones(m,1);
    i=1;
    while i<=m
        columna (i,1)=A(i,j);
        i=i+1;
    end
else
    columna=[];
    %disp('error')
end
