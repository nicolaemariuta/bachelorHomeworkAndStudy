clear all;
close all;
omega = sym('pi')/40;
N = 81;
t = 0:N-1;
s1 = sin(omega * t);
subplot(3, 1, 1), plot(t, s1);
s2 = sin(2 * omega * t);
subplot(3, 1, 2), plot(t, s2);
s3 = sin(3 * omega * t);
subplot(3, 1, 3), plot(t, s3);
s1s1 = 0;
for i = 1 : N
s1s1 = s1s1 + s1(i) * s1(i);
end
s1s1 = double(s1s1);
str = sprintf('<s1, s1> = %f', s1s1);
disp(str);
s1s2 = 0;
for i = 1 : N
s1s2 = s1s2 + s1(i) * s2(i);
end
s1s2 = double(s1s2);
str = sprintf('<s1, s2> = %f', s1s2);
disp(str);
s1s3 = 0;
for i = 1 : N
s1s3 = s1s3 + s1(i) * s3(i);
end
s1s3 = double(s1s3);
str = sprintf('<s1, s3> = %f', s1s3);
disp(str);

s2s3 = 0;
for i = 1 : N
s2s3 = s2s3 + s2(i) * s3(i);
end
s2s3 = double(s2s3);
str = sprintf('<s2, s3> = %f', s2s3);
disp(str);