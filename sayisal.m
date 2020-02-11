clc
clear

f=@(x)((3*(x^2))-(4*x));

n=100;


a=0;
b=1;
k=0;



h=(b-a)/n;
toplam=0;
top=0;
ka=0;
kat=h;

%dikdörtgen

for i=1:n
    
    dik=f(a+k)*h;
    k=k+h;
    toplam=toplam+dik;
end

toplam

    

%yamuk
for j=1:n
    
    yam=((f(a+ka)+f(a+kat))/2)*h;
    ka=ka+h;
    kat=kat+h;
    
    top=top+yam;
end

top
    
    
    
   
