clear
clc


F=@(x)((x^3)-(x^2)+(2*x)-3);

Xl=1;
Xr=3;

tol=0.001;
Yl=F(Xl);
Yr=F(Xr);
if Yl*Yr>0 
 disp('Belirtilen aralýkta kök yok')
else
    
 while true
 Xm=(Xr+Xl)/2;
 Ym=F(Xm);
 tole=abs(Ym);
 Yl=F(Xl);
 Yr=F(Xr);
 
 if Ym==0

 break
 end
 if tole<tol 
 break 
 end

 if Yl*Ym <0
 Xr=Xm;
 else
 Xl=Xm;
 end
 end
end

clear, clc
F=@(x)((x^3)-(x^2)+(2*x)-3);;
x0=[1 3]; 
x=fzero(F,x0)
