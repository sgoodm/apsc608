% hw06

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

sysc = ss(A ,B, C, D);

% define time step
Ts = 0.1;

% discretize system
sysd = c2d(sysc, Ts);

% define input vector
% u = [2 3 5 9; 1 5 7 2;];
u = [2 3 1; 1 5 1];

% ???
dlsim(A, B, C, D, u)

% Is the system stable?  
% How many inputs and outputs does this system have?

% For the discrete-time system, compute all of the system's impulse responses
figure()
impulse(sysd)

% Using both convolution and dlsim, demonstrate that you get the same response due to two sets of arbitrary inputs.








