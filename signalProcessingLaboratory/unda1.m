function[s1,s2,s3]=unda1(A,f)
t=1:1:1000;
s1=A*sin(2*pi*f*t);
figure;
subplot(3,1,1),plot(t,s1);

s2=A*square(2*pi*f*t);
%figure;
subplot(3,1,2),plot(t,s2);

s3=A*sawtooth(2*pi*f*t);
%figure;
subplot(3,1,3),plot(t,s3);



