function [w,y]=CC(sol2)
n = length(sol2);
i=1;
v=sol2;
while i<=n-1
    j=i+1;
    while j<=n
        if v(i)==v(j)
            v(j)=0;
        end
        j=j+1;
    end
    i=i+1;
end
w=[];
cont =0;
for i=1:n
    if v(i)~=0
        w=[w;v(i)];
    end
end
m = length (w);
y = zeros(m,1);
for i=1:m
    cont=0;
    for j=1:n
        if w(i)==sol2(j)
            cont = cont+1;
        end
    end
    y(i)=cont;
end