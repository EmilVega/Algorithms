function [a,b]=contarfactprim(N)
x=factorprim(N);
a=ones(1,1);
[m,n]=size(x);
i=1
while i<=n
    if a(1,i)==x(1,i)
        i=i+1;
    else
        a(1,i)=x(1,i);
        j=1;
        while j<=n
            if a(1,i)==x(1,j)
        
%No funciona .. falta terminar
