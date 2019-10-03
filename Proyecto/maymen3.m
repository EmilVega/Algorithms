function [M,m]=maymen3(a,b,c)
%Devuelve el mayor y menor de tres numeros
[M,m]=mayor(a,b);
[M,~]=mayor(M,c);
[~,m]=mayor(m,c);