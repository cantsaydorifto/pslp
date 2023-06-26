clc
m=input("Enter observations")
for i=m
    X(1,i)=input("Enter x")
    F(1,i)=input("Enter f")
end
M=sum(F.*X)/sum(F)
N=sum(F)
for r=1:4
    Sum=0
    for i=1:m
        Sum=Sum+(F(1,i)*((X(1,i)-M)^r))
    end
    A(1,r)=Sum/N
    disp(A(1,r))
end
