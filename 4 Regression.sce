clc;
clear;
n=input("Enter no of terms :")
for i=1:n
    x(i)=input("Enter X : ")
    y(i)=input("Enter Y : ")
end
x0=0
y0=0
x2=0
y2=0
xy=0
for i=1:n
    x0=x0+x(i)
    y0=y0+y(i)
    x2=x2+x(i)^2
    y2=y2+y(i)^2
    xy=xy+x(i)*y(i)
end
bxy=(n*xy-x0*y0)/(n*y2-y0^2)
byx=(n*xy-x0*y0)/(n*x2-x0^2)
mprintf("bxy=%f\nbyx=%f\n",bxy,byx)

disp('Regression of y on x')
mprintf("y=%fx+%f",byx,(sum(y)-(byx*sum(x)))/n)
disp('Regression of x on y')
mprintf("x=%fy+%f",bxy,(sum(x)-(bxy*sum(y)))/n)
