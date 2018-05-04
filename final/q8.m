

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

 
systemIdentification

 
% sysc = ss(A ,B, C, D);
% 
% % define time step
% Ts = 1;
% 
% % discretize system
% sysd = c2d(sysc, Ts);
% 
% 
% % Is the system stable?
% bool_stable = isstable(sysd);
% % Yes, system is stable
% 
% % For the discrete-time system, compute all of the system's impulse
% % responses
% % How many inputs and outputs does this system have?
% impulse(sysd)
% % 4 impulse responses (2 input x 2 output)
% saveas(gcf, [pwd, '/impulse.png'], 'png');
% 
% 
% % Using both convolution and dlsim, demonstrate that you get the same
% %response due to two sets of arbitrary inputs.
% 
% % define input vector
% u = [
%     2 1 6 5 3
%     3 9 5 2 1
% ];
% 
% % lsim
% figure()
% lsim(sysd, u)
% 
% saveas(gcf, [pwd, '/system.png'], 'png');
% 
% % ---------------------------------------------
% 
% [h, t] = impulse(sysd, length(u)-1);
% 
% % conv
% y1 = conv(h(:,1,1)', u(1,:)) + conv(h(:,1,2)', u(2,:));
% y2 = conv(h(:,2,1)', u(1,:)) + conv(h(:,2,2)', u(2,:));
% 
% figure()
% 
% subplot(2,1,1);
% stairs(y1(1:5))
% ylabel("Out(1)")
% title("Convolution Results")
% hold on
% plot(u(1,:), 'r-')
% plot(u(2,:), 'r--')
% 
% subplot(2,1,2);
% stairs(y2(1:5))
% ylabel("Out(2)")
% xlabel("Time (seconds)")
% hold on
% plot(u(1,:), 'r-')
% plot(u(2,:), 'r--')
% 
% saveas(gcf, [pwd, '/convolution.png'], 'png');
% 





