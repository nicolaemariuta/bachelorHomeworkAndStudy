function[s]=unda(A,f)
t=1:1:1000;
s=A*sin(2*pi*f*t);
figure;
plot(t,s);
end
