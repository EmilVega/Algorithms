function [M,m]=mayor(a,b)
% El Maximo entre a y b es M
% El Minimo entre a y b es m
% Cuando a sea igual a b el maximo puede ser cualquiera
if a>=b 
    M=a;
    m=b;
else
    M=b;
    m=a;
end
    