function R=IndentificarM(A)
[f,c]=size(A);
cont=0;
ceros=[];
for i=1:f
    for j=1:c
        if A(i,j)==0
          cont=cont+1;
        end
    end
    ceros=[ceros,cont];
    cont=0;
end
t=length(ceros);
cont=0;
for i=1:t
    if ceros(i)== (t-(t-(i-1)))
        cont= cont+1;
    end
end
if cont==t
    R = 'Es una matriz trianglar superior';
else
    for i=1:t        
        if ceros(i)== (t-1-(i-1))
            cont= cont+1;
        end
    end
    if cont==t
        R='Es una matriz trianglar inferior';
    else
        R='Ni matriz inferior ni superior';
    end
end
