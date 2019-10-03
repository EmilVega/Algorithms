function fila = mv(A,i)
%devuelve la fila i de A
[m,n]=size(A);
if 1<=i && i<=m
    fila=ones(1,n);
    j=1;
    while j<=n
        fila (1,j)=A(i,j);
        j=j+1;
    end
else
    fila=[];
    %disp('error')
end
    