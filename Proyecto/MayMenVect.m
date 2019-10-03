function [M,m] = MayMenVect (vector)
n = length (vector);
if vector(1)>=vector(2)
    M=vector(1);
    m=vector(2);
else
    M=vector(2);
    m=vector(1);
end
for i=3:n
    if vector(i)>=M
        M=vector(i);
    else
        if vector(i)<m
            m=vector(i);
        end
    end
end