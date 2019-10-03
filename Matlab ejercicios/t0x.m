function r=t0x(n)
%En encuentra la cantidad de tri�ngulos con v�rtice
%en el punto (0,0) en una malla cuadrada de lado x 
%igualmente espaciada cuya partici�n genera cuadrados
%de lado 1 y la almacena en la variable T.
%P1=(0,0);%v�rtice fijo

r=n^2*3;
R=[];
A=[];
B=[];
for x=1:n
    for y=1:n
        mcd=MCD(x,y);
        r=r+min(floor(y*mcd/x),floor((n-x)*mcd/y))*2;
    end
end