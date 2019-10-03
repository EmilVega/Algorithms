function mcd=MCD(a,b)
[D,d]=mayor(a,b);
r=mod(D,d);
while r~=0
    D=d;
    d=r;
    r=mod(D,d);
end
mcd=d;
    