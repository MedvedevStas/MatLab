function Xv=laba11(f1,f2,Xo)
syms x;
syms y;
e = 1e-4;
A = [diff(f1,x) diff(f1,y); diff(f2,x) diff(f2,y)];
A = double(subs(subs(A,x,Xo(1)),y,Xo(2)));
Xv = Xo';
Xo = Xo';
A = inv(A);
[f1(Xv(1),Xv(2)),f2(Xv(1),Xv(2))]';
norm = sqrt(sqrt(sum(Xo.^2)));

while norm > e
    for(i=1:2)
        Xv = Xo -A*[f1(Xv(1),Xv(2)),f2(Xv(1),Xv(2))]';
        tmp = Xv;
    end
    norm = sqrt(sqrt(sum(([f1(Xv(1),Xv(2)),f2(Xv(1),Xv(2))]').^2)));
    Xo =Xv;
end