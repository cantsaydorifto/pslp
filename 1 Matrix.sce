disp("Aryan Gupta 001")
disp("Matrix 1")
n = input("Enter number of rows:")
m = input("Enter number of columns:")
for i=1:n
    for j=1:m
        A(i,j) = input("Enter element : ")
    end
end

disp("Matrix 2")
k = input("Enter number of rows:")
l = input("Enter number of columns:")

for i=1:k
    for j=1:l
        B(i,j) = input("Enter element : ")
    end
end
//
//if(n==k && m ==l) then
//    disp("Addition of Matrix");
//    disp(A+B);
//    disp("Subtraction of Matrix");
//    disp(A-B);
//else
//    disp("!! Matrix Addition and Subtraction not possible !!");
//end
//
//if(m == k) then
//    disp("Multiplication of Matrix");
//    disp(A*B);
//else
//    disp("!! Matrix multiplication not possible !!");
//end

disp("Transpose of Matrix A")
for i=1:n
    for j=1:m
        M(j,i) = A(i,j)
    end
end
disp(M)

disp("Transpose of Matrix B")
for i=1:k
    for j=1:l
        N(j,i) = B(i,j)
    end
end
disp(N)

