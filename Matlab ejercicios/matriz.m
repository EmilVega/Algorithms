function [matX, matY] = matriz (n)
matX=[];
matY=[];
x1=0;
x2=0;
y1=n;
y2=1;

while y1<=n
    while (x1~=y1 || x2~=y2 || x1~=x2 || y1~=y2)
        if (x1==x2 && y1==y2)
            if x1<y1
                x1=x1+1;
                if x1==y1
                    y1=0;
                end
                x2=0;
                y2=1;
                matX = [matX;0,x1,x2];
                matY = [matY;0,y1,y2];
            else
                y1=y1+1;
                x2=0;
                y2=1;
                matX = [matX;0,x1,x2];
                matY = [matY;0,y1,y2];
            end
        else
            matX = [matX;0,x1,x2];
            matY = [matY;0,y1,y2];
        end
        if x2<y2
            x2=x2+1;
            if x2==y2;
                y2=0;
            end
        else
            if x2==y2
                x2=0;
                y2=y2+1;
            else
                y2=y2+1;
            end
        end
    end
    x1=0;
    y1=y1+1;
    x2=0;
    y2=1;
 end

