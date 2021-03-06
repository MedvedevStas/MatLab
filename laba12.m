function z = laba12(Yo,a,b,h,f)

n = (b-a)/h;
z(1,1) = a;
z(1,2) = Yo;

for(i=2:n+1)
    k1 = f(z(i-1,1),z(i-1,2));
    c = z(i-1,1)+h/2;
    d = z(i-1,2)+h/2*k1;
    k2 = f(c,d);
    d = z(i-1,2)+h/2*k2;
    k3 = f(c,d);
    z(i,1)= z(i-1,1)+h;
    k4 = f(z(i,1),z(i-1,2)+h*k3);
    c = 1/6*(k1+2*(k2+k3)+k4);
    z(i,2)=z(i-1,2)+h*c;
end
z;