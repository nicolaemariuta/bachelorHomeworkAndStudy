function[x,y,z]=cramer()
c1=[2;1;1];
c2=[1;3;-1];
c3=[-1;1;2];
r=[1;10;5];
m=[c1,c2,c3]
mx=[r,c2,c3];
x=det(mx)/det(m)

my=[c1,r,c3];
y=det(my)/det(m)

mz=[c1,c2,r];
z=det(mz)/det(m)
end







