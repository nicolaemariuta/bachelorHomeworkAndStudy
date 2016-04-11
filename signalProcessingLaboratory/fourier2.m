clear all;
close all;
omega = sym('pi')/40;
N = 81;
t = 0:N-1;
s1 = sin(omega * t);
plot(t, s1);
s2 = sin(2 * omega * t);
plot(t, s2);
s3 = sin(3 * omega * t);
plot(t, s3);
s4 = sin(4 * omega * t);
plot(t, s4);
s5 = sin(5 * omega * t);
plot(t, s5);
s=0.5*s1+0.4*s2+0.1*s5;
plot(t,s);

ss1 = 0;
for i = 1 : N
ss1 = ss1 + s(i) * s1(i);
end
ss1 = double(ss1);
str = sprintf('<s, s1> = %f', ss1);
disp(str);

ss2 = 0;
for i = 1 : N
ss2 = ss2 + s(i) * s2(i);
end
ss2 = double(ss2);
str = sprintf('<s, s2> = %f', ss2);
disp(str);

ss3 = 0;
for i = 1 : N
ss3 = ss3 + s(i) * s3(i);
end
ss3 = double(ss3);
str = sprintf('<s, s3> = %f', ss3);
disp(str);

ss4 = 0;
for i = 1 : N
ss4 = ss4 + s(i) * s4(i);
end
ss4 = double(ss4);
str = sprintf('<s, s4> = %f', ss4);
disp(str);

ss5 = 0;
for i = 1 : N
ss5 = ss5+ s(i) * s5(i);
end
ss5 = double(ss5);
str = sprintf('<s, s5> = %f', ss5);
disp(str);


