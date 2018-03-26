% hw05

N = 4;
n = 2:N;
k = 1:N;

% 6.9A
x = [1 0 1 0];
for i=k
    ra(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    ia(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end
ta = dft(x);

% 6.9B
x = [1 0 -1 0];
for i=k
    rb(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    ib(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end
tb = fft(x);

% 6.9C
x = [1 1 -1 -1];
for i=k
    rc(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    ic(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end

% 6.9D
x = [-1 1 1 1];
for i=k
    rd(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    id(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end

% 6.9E
x = [-1 0 1 2];
for i=k
    re(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    ie(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end

% 6.9F
x = [1 -1 1 -1];
for i=k
    rrf(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    iif(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end

% -------------------------------------------------------------------------

% 6.10A
x = [ones(1, 11), zeros(1, 21)];

% 6.10B
x = [ones(1, 11), -1*ones(1, 10), zeros(1, 11)];

% 6.10C
x = [1:21, zeros(1, 11)];

% 6.10D
x = [1:11, 20-(12:21), zeros(1, 11)];

% 6.10E
x = [cos(10.*pi.*(1:11)/11), zeros(1,21)];

% 6.10F
x = [cos(9.*pi.*(1:11)/11), zeros(1,21)];



% -------------------------------------------------------------------------

% 6.11A
n = 1:31;
x = [1 n];

% 6.11B
n = 1:31;
x = [1 n.^2];

% 6.11C
n = 1:31;
x = [1 factorial(n)];


