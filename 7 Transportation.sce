clc
clear
F = input("Enter number of factories and workshops: ");
W = F;

f = zeros(1, F);
w = zeros(1, W);
arr1 = zeros(F, W);
arr2 = zeros(F, W);

disp("Enter quantity produced from each factory:");
for i = 1:F
    f(i) = input("");
end

disp("Enter quantity required in each workshop:");
for i = 1:W
    w(i) = input("");
end

// Commented out as the input is not used in the program
/*
disp("Enter cost for each factory to workshop:");
for i = 1:F
    for j = 1:W
        disp(["Factory ", string(i), " to workshop ", string(j)]);
        arr1(i, j) = input("");
    end
end
*/

for i = 1:F
    while f(i) == 0
        i = i + 1;
    end
    for j = 1:W
        while w(j) == 0
            j = j + 1;
        end
        if f(i) == 0
            j = j + 1;
        end
        if f(i) < w(j)
            arr2(i, j) = f(i);
            f(i) = 0;
            w(j) = w(j) - arr2(i, j);
        else
            arr2(i, j) = w(i);
            f(i) = f(i) - arr2(i, j);
            w(j) = 0;
        end
    end
end

disp("");
for i = 1:F
    for j = 1:W
        disp(arr2(i, j), "\t");
    end
    disp("");
end
