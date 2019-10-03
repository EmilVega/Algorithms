function raiz = biseccion (def, a, b, tol)
%ENCUENTRA N CERO DE LA FUNCI�N F DEFINIDA EN DEF
f = inline (def);b
if (f(a)*f(b))<0
    x=a;
    while abs (f(x))>tol
        x = (a+b)/2;
        if (f(a)*f(x))<0
            b=x;
        else
            a=x;
        end
    end
    raiz = x;
else
    raiz ='no satisface las hipotesis del T.B.';
end