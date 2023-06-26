clc 
clear
n = input("how many workers and jobs do you have: ");
t = zeros(n, n);

disp("Enter time of:");
for i = 1:n
    for j = 1:n
        disp(["worker ", string(i), " job ", string(j)]);
        t(i, j) = input("");
    end
end

disp("\nDATA YOU ENTERED IS:");
disp("      job", 1:n);
for i = 1:n
    disp(["worker", string(i)], "\t", t(i, :));
end

min = ones(1, n) * 1000;
for i = 1:n
    for j = 1:n
        if t(i, j) <= min(i)
            min(i) = t(i, j);
        end
    end
end

disp("");

for i = 1:n
    for j = 1:n
        t(i, j) = t(i, j) - min(i);
    end
end

disp("\n\n******data after row minimum decrement is******");
disp("      job", 1:n);
for i = 1:n
    disp(["worker", string(i)], "\t", t(i, :));
end

zerr = ones(1, n) * 1000;
zerc = ones(1, n) * 1000;
for i = 1:n
    for j = 1:n
        if t(i, j) == 0
            zerr(i) = 0;
            zerc(j) = 0;
        end
    end
end

f = 0;
y = 0;
for i = 1:n
    if zerr(i) ~= 0
        f = 1;
    end
end
for i = 1:n
    if zerc(i) ~= 0
        y = 1;
    end
end

if f == 1 || y == 1
    mn = ones(1, n) * 1000;
    for j = 1:n
        for i = 1:n
            if t(i, j) <= mn(j)
                mn(j) = t(i, j);
            end
        end
    end

    for j = 1:n
        for i = 1:n
            t(i, j) = t(i, j) - mn(j);
        end
    end

    disp("\n\n******data after column minimum decrement is******");
    disp("      job", 1:n);
    for i = 1:n
        disp(["worker", string(i)], "\t", t(i, :));
    end
end

disp("\n\n\n*****Final job assignment is*****");
for i = 1:n
    for j = 1:n
        if t(i, j) == 0
            disp(["assign job ", string(j), " to worker ", string(i)]);
            for z = 1:n
                if z ~= i
                    if t(z, j) == 0
                        t(z, j) = 1000;
                    end
                end
            end

            for l = 1:n
                if l ~= j
                    if t(i, l) == 0
                        t(i, l) = 1000;
                    end
                end
            end
        end
    end
end
