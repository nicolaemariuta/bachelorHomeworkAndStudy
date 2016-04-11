clear all;
close all;
H = zeros(1,N);
P = 20;
H(N/2 + 1 - P : N/2 +1 + P) = 1;
h = fftshift(ifft(fftshift(H)));
h = real(h);
figure;
plot(t, h);

H = zeros(1,N);
P = 20;
H(N/2 + 1 - P : N/2 +1 + P) = 1;
h = fftshift(ifft(fftshift(H)));
h = real(h);
figure;
plot(t, h);