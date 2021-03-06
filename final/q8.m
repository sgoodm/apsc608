% q8

clear;
close all;

% continuous time system defined by ABCD

A = [-0.0558 -0.9968  0.0802  0.0415
      0.5980 -0.1150 -0.0318  0
     -3.0500  0.3880 -0.4650  0
      0       0.0805  1.0000  0];

B = [0.0073  0
    -0.4750  0.0077
     0.1530  0.1430
     0       0];

C = [0 1 0 0
     0 0 0 1];

D = [0 0
     0 0];

% input 

Fs = 1000;
N = 1;
Ts = 1/Fs;
t = 0:1/Fs:N-1/Fs;

u1 = sin(2*pi*30*t);
u2 = sin(2*pi*75*t);
u = [u1; u2];
 
% build system
sysc = ss(A ,B, C, D);

% discretize
sysd = c2d(sysc, Ts);

% output
y = lsim(sysd, u);

% data object
data = iddata(y, u', Ts);


figure()
impulse(sysd)
saveas(gcf, [pwd, '/outputs/q8_impulse.png'], 'png');

figure()
step(sysd)
saveas(gcf, [pwd, '/outputs/q8_step.png'], 'png');

% systemIdentification

