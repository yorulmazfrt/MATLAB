clear
clc


F=@(x)((x^3)-(5*(x^2))-(x*2)+10);

a=1;
Xr=3;


tol=0.02;
Yl=F(a);
Yr=F(Xr);
sayac = 0;
if Yl*Yr>0 
 disp('Belirtilen aralýkta kök yok')
else
    
    
 while true
    sayac = sayac +1;

 Xi=(a*F(Xr))-(Xr*F(a));
 Xm=Xi/(F(Xr)-F(a));
 
 Ym=F(Xm);
 tole=abs(Ym);
 Yl=F(a);
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
 a=Xm;
 
 end
 end
end


F=@(x)((x^3)-(5*(x^2))-(x*2)+10);
x0=[1 3]; 
x=fzero(F,x0)

sayac
