% dft

function xk = dft(x)

[N, M] = size(x);

if M ~= 1
    x = x';
    N = M;
end

xk = zeros(N, 1);
n = 0:N-1;

for k = 0:N-1
    xk(k+1) = exp(-j*2*pi*k*n/N) * x;
end

