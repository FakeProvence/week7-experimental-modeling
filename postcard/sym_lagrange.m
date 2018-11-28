function f = sym_lagrange(X, Y)
% f = sym_lagrange(X, Y)
% 其中X和Y是向量，f是返回的多项式

n = length(X);

syms x;

% fa = (x-x1)(x-x2)...(x-xn)
fa = 1;
for i = 1:n
  fa = fa * (x - X(i));  
end

f = 0;
for i = 1:n
    fi = fa / (x - X(i));
    f = f + fi * Y(i) / subs(fi, X(i));
end