clear all;
close all;
xi = randn (1, 1000);
figure;
plot(xi);

x_n(1) = min(xi);
x_n(L+1) = max(xi);
[x_n(2:L), y_n] = lloyds(xi, y);

for j = 1 : length (xi)
    for i = 1 : L
        if xi(j) >= x_n(i) && xi(j) <= x_n(i+1)
            eta_n(j) = y_n(i);
        end
    end
end
figure;
plot(eta_n);
figure;
plot(xi, eta_n, '*');