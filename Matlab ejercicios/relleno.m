function v=relleno(n)
v=[];
for i=1:n; 
    for j=1:n;
        v(i,j)= rand();        
end
end