function d = ddiff(X, Y, N)
% Compute n-th differences

n = length(X);
d1 = zeros(1, n-1);

for i = 1:n-1
    d1(i) = (Y(i+1) - Y(i)) / (X(i+1) - X(i));
end

if N == 1
    d = d1;
else
    d = ddiff(X(1:n-1), d1, N-1);
end