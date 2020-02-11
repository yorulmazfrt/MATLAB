clc
clear

x = [66 85 70 140 95 125];
y=[1.5 2.6 0.6 1.3 2.7 1.6];
f=[5.3 7.8 7.6 9.7 10.5 12.6];

[~,n]=size(x); 


A=[n,sum(x),sum(y);sum(x),sum(x.^2),sum(x.*y);sum(y),sum(x.*y),sum(y.^2)]
C=[sum(f);sum(x.*f);sum(y.*f)]


B=[A C];


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


a=B(10)
b=B(11)
c=B(12)

T=@(x)(a+b.*x+c.*y);

t=T(x)
rmse=sqrt((sum((y-t).^2))/n)



