clear all;
close all;
t = 1 : 1000;
omega = 0.01;
xi = sawtooth(omega*t);
figure;
plot(xi);

L = 8;
Delta = (max(xi) - min (xi))/ L;
x(1) = min(xi);
x(L+1) = max(xi);
i = 2:L;
x(2:L) = min(xi) + (i-1) * Delta;
for i=1:L
    y(i) = (x(i) + x(i+1))/2;
end

for j = 1 : length (xi)
    for i = 1 : L
        if xi(j) >= x(i) && xi(j) <= x(i+1)
            eta(j) = y(i);
        end
    end
end

figure;
plot(eta);
figure;
plot (xi, eta, 'm-');


xi = raylrnd(1,[1,1000]);
figure;
plot(xi);
L=8;
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
plot(xi, eta_n, 'ro');

