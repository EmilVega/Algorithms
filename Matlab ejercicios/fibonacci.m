function b = fibonacci (n)
b=0;
x =1;
y=0;
if n ==1
    b=1;
else 
    for i=2:n
        x = b + x;       
        y = x + b;
        b = x + y;
    end
end
        