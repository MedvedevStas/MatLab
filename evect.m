function Xo = evect(l, A)

n = length(diag(A));
e = 1e-3;
Xo = ones(n,1);
E = eye(n);

A1 = A-l*E;
norm = sqrt(sum(Xo.^2));

while (norm > e)
    y = inv(A1)*Xo;
    norm = sqrt(sum(y.^2));
    for (i=1:1:n)
        y(i) = y(i)/norm;
        Xo(i) = sqrt(sum(y(i).^2)) - sqrt(sum(Xo(i).^2));
    end
    norm = sqrt(sqrt(sum(Xo.^2)));
    Xo=y;
end