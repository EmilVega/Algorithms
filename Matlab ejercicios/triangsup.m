function [U,y]=triangsup(A,b)
[n,m]=size(A);
%Cálculo de la matriz ampliada Aum=[A b]
Aum=[A b];
q=1;
%C=zeros(1,n+1);
while q<=n-1
    %pivote parcial en la q-ésima columna
    [Y,j]=max(abs(Aum(q:n,q)));
    %intercambiamos las filas q-ésima y (j+q-1)-ésima
    C=Aum(q,:);
    Aum(q,:)=Aum(j+q-1,:);
    Aum(j+q-1,:)=C;
    if Aum(q,q)==0
        'A no es invertible'
        break
    end
    % proceso de eliminación en la columna q-ésima
    k=q+1;
    while k<=n
        c=Aum(k,q)/Aum(q,q);
        Aum(k,q:n+1)=Aum(k,q:n+1)-c*Aum(q,q:n+1);
        k=k+1;
    end
    q=q+1;
end
U=Aum(1:n,1:n);
y=Aum(1:n,n+1);