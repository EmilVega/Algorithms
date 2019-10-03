function [quienes,cuantos,donde,vector] = CCD (v)
 
%NO funciona

vector = [];
 aux = v;
 donde =[];
 quienes = [];
 n = length (v);
 cuantos = [];
 d = zeros(1,n);

 for i=1:n
     c=1;
     for j=i+1:n-1
        if aux(i)==aux(j)
             aux = [aux(1:j-1);aux(j+1:n)];
             quienes =[quienes;aux(i)]; 
             n=n-1;
             if c==1
                 d(i)=i;
             end
             c = c+1;
             d(j)=j;
        end
     end
     donde = [donde;d];
     cuantos =[cuantos;c];
 end
 %vector=[quienes,cuantos,donde];