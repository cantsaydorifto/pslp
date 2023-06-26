clc 
clear

f = [-3; 1; 1]; 
A = [1, -1, 1; 2, 1, 1; -1, 1, 2];
b = [2; 10; 5]; 
lb = zeros(3, 1);
ub = [];
[x, fval, exitflag] = fot_linprog(f, A, b, [], [], lb, ub);
disp('x1=') 
disp (x(1))

disp('x2=')
disp (x(2)) 

disp('x3=')
disp (x(3)) 
disp('optimal value of Z is') 
disp(-fval)
