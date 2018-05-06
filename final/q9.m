
% q9

% https://www.mathworks.com/help/ident/gs/about-system-identification.html
% http://ctms.engin.umich.edu/CTMS/index.php?example=Introduction&section=SystemModeling#5

% clear;
close all;

m = 0.2;
k = 2;
c = 1.2;
f = @(t) 5 .* cos(4.*t);

A = [0 1; -k/m -c/m];
B = [0 1/m]';
C = [1 0];
D = [0];


sysc = ss(A, B, C, D);

% define time step
Ts = 0.01;
t = 0:Ts:1;

% input
u = f(t);

% discretize system
sysd = c2d(sysc, Ts);

% output
y = lsim(sysd, u);

data = iddata(y, u', Ts);


figure()
impulse(sysd)
saveas(gcf, [pwd, '/outputs/q9_impulse.png'], 'png');

figure()
step(sysd)
saveas(gcf, [pwd, '/outputs/q9_step.png'], 'png');

figure()
lsim(sysd, u)
saveas(gcf, [pwd, '/outputs/q9_func.png'], 'png');


% ---------------------------------------------


[h, tc] = impulse(sysd, length(u)-1);


yci = conv(h', [1 0 0 0 0 0 0]);

figure()
stairs(tc(1:300), yci(1:300))
ylabel("Amplitude")
xlabel("Time (seconds)")
title("Convolution Impulse Response")
saveas(gcf, [pwd, '/outputs/q9_conv_impulse.png'], 'png');


ycs = conv(h', ones([length(h) 1])) * Ts;

figure()
stairs(tc(1:300), ycs(1:300))
ylabel("Amplitude")
xlabel("Time (seconds)")
title("Convolution Step Response")
saveas(gcf, [pwd, '/outputs/q9_conv_step.png'], 'png');


ycf = conv(h', u);

figure()
plot(tc(1:101), u, 'r-')
hold on
stairs(tc(1:101), ycf(1:101)*Ts)
ylabel("Amplitude")
xlabel("Time (seconds)")
title("Convolution Results")
saveas(gcf, [pwd, '/outputs/q9_conv_func.png'], 'png');


% ---------------------------------------------


ug = normrnd(10, 3, [1, 3000]);

figure()
lsim(sysd, ug)
saveas(gcf, [pwd, '/outputs/q9_gauss_func.png'], 'png');

 
% figure()
% sim(nlarx1, ug')
% saveas(gcf, [pwd, '/outputs/q9_nonlinear.png'], 'png');


