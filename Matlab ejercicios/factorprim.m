function salida=factorprim(N)
c=0;
i=1;
while c~=1
    x=2;
    m = mod(N,x);
    while m~=0
       x=x+1;
       m = mod(N,x);
    end
    c=N/x;
    salida(1,i)=x;
    N=c;
    i=i+1;
end


4 - 3 = 1
5 - 3 = 2
6 - 3 = 3
7 - 3 = 4
