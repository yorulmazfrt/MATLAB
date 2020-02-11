clc
clear

x = [1 2 3 4 5 6 7 8 9 10]
y=[1.3 3.5 4.2 5.0 7.0 8.8 10.1 12.5 13.0 15.6]

[~,n]=size(x); 

a=(n*sum(x.*y)-sum(x)*sum(y))/(n*sum(x.^2)-(sum(x))^2);
b=(sum(x.^2)*sum(y)-sum(x)*sum(x.*y))/(n*sum(x.^2)-(sum(x))^2);

f=@(x)(a*x+b);

t=f(x)

rmse=sqrt((sum((y-t).^2))/n)

plot(x,y,x,t)

    



