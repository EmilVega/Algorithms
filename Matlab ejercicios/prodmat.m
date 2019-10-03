function c = prodmat (A,B)
[n,m]  = size(A);
[p,q] = size (B);
if m==p
    i=1;
    while i<=m
        j=1;
        while j<=q
            s=0;
            k=1;
            while k<=n
                s =s+(A(i,k)*B(k,j));
                k=k+1;
            end
            c(i,j)=s;
            j=j+1;
        end
        i=i+1;
    end
else
    c = 'no esta definido el producto';
end
                
                