clear all;
close all;
omega=0.5;
t=1:20;
s=sin(omega*t);
subplot(3,1,1),stem(s);

x=zeros(1,80);
x(1:4:80)=s;
subplot(3,1,2),stem(x);

[b a]=cheby1(5,0.5,1/4);
xout=filter(b,a,x);
subplot(3,1,3),plot(xout);