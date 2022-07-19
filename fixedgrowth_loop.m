w=[0 0];
for i=1:1000
x1=randi([50000 3900000],1,2)
x1=x1/1000;
a=x1;
b=abs(a-w)
c=sqrt(sum((b.^2),2))
d=nnz(c<400)
if d>0
   continue;
end
if i==1
    w=[];
end
w=[x1;w];
if length(w)==50
    break;
end
end
addon=["x" "y"];
w=[addon;w];
w=double(w);
writematrix(w,"tryx1.csv")
