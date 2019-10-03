function [r]=vectoalea(n)
r=[];
i=1;
while i<=n;
    r(i,1)=rand()*20;
    i=i+1;
end
