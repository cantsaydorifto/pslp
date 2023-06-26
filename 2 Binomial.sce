clc;
clear;
disp("Enter no. of observation:");
m=input('\');
n=m-1;
disp("Enter the value of x:");
for i=1:m
    X(1,i)=input('\');
end

disp("Enter no of frequency:");
for j=1:m
    F(1,j)=input('\')
end

disp("Mean of the distribution is:");
MEA=sum(F.*X)/sum(F);
disp(MEA);
p=MEA/n;
disp(p);
q=1-p;
var=sqrt(n*p*q);
disp("The variance of the distribution is:");
disp(var);
EF=sum(F)*binomial(p,n);
disp("Given frequencies:");
disp(F);
disp("Expected frequencies:");
disp(EF);
plot2d3(0:n,F);
plot2d(0:n,EF);
