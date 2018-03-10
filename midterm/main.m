clear;
close all;

% Midterm

% 3A
figure(10)
a = [-pi, -0.000001]; 
b = 0:0.1:pi;
x = [a b];
y = [a*0 b.^2];
plot(x, y)
ylim([-1, 10])
xlabel('-pi : pi')
title('3A - f(x)')

figure(11)
part = @(n, x) 2 .* (-1).^n .* 1./n.^2 .* cos(n.*x) + 1./(pi.*n.^3) .* ((2-n.^2.*pi.^2) .* (-1).^n - 2) .* sin(n.*x);

nmax = 2;
f1 = @(x) (pi^2)/6 + sum(part(1:nmax, x));
fplot(f1, [-pi,pi]);
hold on

nmax = 10;
f2 = @(x) (pi^2)/6 + sum(part(1:nmax, x));
fplot(f2, [-pi,pi]);

nmax = 100;
f3 = @(x) (pi^2)/6 + sum(part(1:nmax, x));
fplot(f3, [-pi,pi]);

title('3A - F(x)')
legend(["n=2" "n=10" "n=100"], 'Location', 'Best')




% 3B
figure(20)
a = [-5, -0.000001]; 
b = 0:0.1:5;
x = [a b];
y = [a*0+1 1+b];
plot(x, y)
ylim([0, 7])
xlabel('-5 : 5')
title('3B - f(x)')

figure(21)
part = @(n, x) (5.*(-1).^n-5)/(n.^2.*pi.^2) .* cos(n.*pi.*x./5) + ((-1).^n./(pi.*n) - (6*pi*n.*(-1).^n)/(pi^2.*n.^2)) .* sin(n.*pi.*x./5);

nmax = 2;
f1 = @(x) 2.25 + sum(part(1:nmax, x));
fplot(f1, [-5,5]);
hold on

nmax = 10;
f2 = @(x) 2.25 + sum(part(1:nmax, x));
fplot(f2, [-5,5]);

nmax = 100;
f3 = @(x) 2.25 + sum(part(1:nmax, x));
fplot(f3, [-5,5]);

title('3B - F(x)')
legend(["n=2" "n=10" "n=100"], 'Location', 'Best')





% 3C
figure(30)
a = [-pi -0.000001]; 
b = [0 pi];
x = [a b];
y = [a*0-1 b*0+2];
plot(x, y)
ylim([-2, 3])
xlabel('-pi : pi')
title('3C - f(x)')

figure(31)
part = @(n, x) (3-3*(-1).^n)./n .* sin(n.*x);

nmax = 2;
f1 = @(x) 0.5 + sum(part(1:nmax, x));
fplot(f1, [-pi,pi]);
hold on

nmax = 10;
f2 = @(x) 0.5 + sum(part(1:nmax, x));
fplot(f2, [-pi,pi]);

nmax = 100;
f3 = @(x) 0.5 + sum(part(1:nmax, x));
fplot(f3, [-pi,pi]);

title('3C - F(x)')
legend(["n=2" "n=10" "n=100"], 'Location', 'Best')







