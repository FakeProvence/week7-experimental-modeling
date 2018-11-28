function p = lagrange(x, y)
% p = lagrange(x, y)
% 其中x和y是向量，p是返回的多项式向量

n = length(x);

% pa = (x-x1)(x-x2)...(x-xn)
pa = poly(x);

p = zeros(1, n);

for i = 1:n
    % q = (x-xi)
    q = poly(x(i));
    % pi = (x-x1)...(x-xi-1)(x-xi+1)...(x-xn)
    [pi, ~] = deconv(pa, q);
    % ci = yi / (xi-x1)(xi-x2)...(xi-xi-1)(xi-xi+1)...(xi-xn)
    ci = y(i) / polyval(pi, x(i));
    p = p + pi * ci;
end