clc;
clear;
disp("Aryan Gupta 001");
n=input("Enter number of observations:");
for i=1:n
    X(1,i) = input("Enter x:");
    F(1,i) =input("Enter frequency:");
end

m = F*X'/sum(F);
disp(m);

for i=1:n
    EXF(1,i) = (exp(-m)*(m^X(1,i))*sum(F))/factorial(X(1,i));
end

disp("Expected frequencies:");
disp(EXF);

plot2d3(X,F);
plot2d(X,EXF);
