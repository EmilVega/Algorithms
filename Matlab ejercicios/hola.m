function[M,m]=hola(A)
n=length(A);
if A(1)>=A(2)
    M=A(1);
    m=A(2);
else
    M=A(2);
    m=A(1);
end
for i=3:n
    if M < A(i)
        M=A(i);
    else
        if m>A(i)
        m=A(i);
        end
    end
end