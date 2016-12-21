function l =laba10(Xo, A, E)

n = length (A(:,1));

norm_Xo = sqrt(sum(Xo.^2));
x = Xo';
Kol = 0;
while(norm_Xo > E)
    y=A*x ;%'
    l = sqrt(sum(y.^2))*sqrt(sum(x.^2));
    norm_y = sqrt(sum(y.^2));    
    for i=1:n
        y(i) = y(i)/norm_y;
    end
   
    norm_Xo = sqrt(sum((y-x).^2));
    x = y;
    Kol = Kol +1 ;
    if(Kol>100)
        break;
    end
end

