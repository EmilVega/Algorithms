function salida=primpar(N,P)
salida=ones(1,N);
if mod(P,2)==0
    P=P+2
    salida(1,1)=P;
else
    P=P+1;
    salida(1,1)=P;
end
contador=1;
while contador<N
    contador = contador+1;
     P=P+2;
    salida(1,contador)=P;
end
