function[m2]=impartire()
c1=[2;1;1];
c2=[1;3;-1];
c3=[-1;1;2];
r=[1;10;5];
m1=[c1,c2,c3]
%m2=[x,y,z]
 m2=inv(m1)*r;
