function [c, d] = lista1 (x,z)
n = length (x);
c =0;
d = [];
for i=1:n
    if x(i) == z
        c = c +1;
        d(c) = i;
    end
end

