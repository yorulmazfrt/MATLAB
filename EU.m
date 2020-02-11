clc
clear

x = [1 2 3 4 5];
y=[4 19.7 50.05 97.0 162.06];

[~,n]=size(x); 


A=[n,sum(x);sum(x),sum(x.^2)]
C=transpose([sum(y),sum(x.*y)])

B=[A C]


[m,n]=size(B);
for j=1:m-1

for i=j+1:m
    B(i,:)=B(i,:)-B(j,:)*(B(i,j)/B(j,j));
end
end

for j=m:-1:2
for i=j-1:-1:1
    B(i,:)=B(i,:)-B(j,:)*(B(i,j)/B(j,j));
end
end

for s=1:m
B(s,:)=B(s,:)/B(s,s);
x(s)=B(s,n);
end




a=B(5)
b=B(6)

f=@(x)(a*x.^b);

t=f(x)
rmse=sqrt((sum((y-t).^2))/n)

    


plot(x,y,x,t)





