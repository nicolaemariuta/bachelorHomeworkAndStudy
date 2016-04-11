close all
clear all
N = 10;
omega = 0.1;
t = 1 : 500;
x=sawtooth(omega*t)
%x=zeros(1,N);
%x(N/2)=1;
%x(N/5)=1;
x(400:300)=1;
x(700:200)=1;
figure;
plot(x);
x=x + rand(1, 500);
figure;
plot(x);

h = zeros (1 ,300);
t=0:2*pi/omega;
h=sawtooth(-omega*t)
figure;
plot(h);
y=conv(x,h);
figure;
plot(y);
