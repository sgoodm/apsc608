
clear;
close all;

% Coleman 3.3 #1

figure(10)
plot([-1, 0, 0.00001, 1], [2, 2, 0, 0])
ylim([-1, 3])
xlabel('-1 : 1')
title('3.3 #1 - f(x)')

figure(11)
f1 = @(x) 1 - (4/pi) * (2*sin(pi*x)/1 + 2*sin(pi*x)/3 + 2*sin(pi*x)/3);
fplot(f1, [-1,1]);
title('3.3 #1 - F(x)')


% Coleman 3.3 #4
figure(20)
f1 = @(x) 2*x+1;
r1 = -pi:0.1:pi;
plot(r1, f1(r1))
xlabel('-pi : pi')
title('3.3 #4 - f(x)')

figure(21)

title('3.3 #4 - F(x)')


% Coleman 3.3 #6

figure(30)
plot([-2*pi, -pi, -0.00001, 0, pi, 2*pi], [(-2*pi)^2, (-pi)^2, -0.00001, 0, -(pi^2), -((2*pi)^2)])
xlabel('-2*pi : 2*pi')
title('3.3 #6 - f(x)')

figure(31)

title('3.3 #6 - F(x)')

