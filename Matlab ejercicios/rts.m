function x =rts (A,b)
%A sea una matriz triangular y cuadrada
[m,N] = size(A);
k=N;
while k>=1;
    s=0;
    j=k+1;
    while j<=N
        s=s+(A(k,j)*x(j));
        j=j+1;
        
    end
    x(k)=(b(k)-s)/A(k,k);
    k=k-1;
end
        