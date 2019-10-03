function A=mInferior(A)
[q,m]=size(A);
if q==m
    while q>=2
        [~,j]=max(abs(A(1:q,q)));
        C=A(q,:);
        A(q,:)=A(j,:);
        A(j,:)=C;
        if A(q,q)==0
            'A no es invertible'
            break
        end
        k=q-1;
        while k>=1
            C=A(k,q)/A(q,q);
            A(k,1:q)=A(k,1:q)-C*A(q,1:q);
            k=k-1;
        end
        q=q-1;
    end
end