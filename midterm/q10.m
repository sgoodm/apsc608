

% midterm question 10

% Code sources / references
% https://www.utdallas.edu/~dlm/3350%20comm%20sys/FFTandMatLab-wanjun%20huang.pdf
% https://www.mathworks.com/help/matlab/ref/fft.html?requestedDomain=true
% https://blogs.mathworks.com/steve/2010/03/03/aliasing-and-a-sampled-cosine-signal/

clear;
close all;



Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

S1 = sin(2*pi*50*t);
S2 = 2*sin(2*pi*120*t);
S3 = 3*sin(2*pi*150*t);

plot(1000*t(1:50),S1(1:50))
hold on
plot(1000*t(1:50),S2(1:50))
plot(1000*t(1:50),S3(1:50))
title('Individual Sine Signals (f=50,120,150)')
xlabel('t (milliseconds)')
ylabel('Sine Signals')

saveas(gcf, [pwd, '/outputs/q10_1.png'], 'png');


% ----------------------------

figure()

Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

S = sin(2*pi*50*t) + 2*sin(2*pi*120*t) + 3*sin(2*pi*150*t);

plot(1000*t(1:50),S(1:50))
title('Multi-Sine Signal (Fs=1000)')
xlabel('t (milliseconds)')
ylabel('S(t)')
saveas(gcf, [pwd, '/outputs/q10_2.png'], 'png');

Y = fft(S, length(S));

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
figure()
plot(f,P1) 
title('Amplitude Spectrum  (Fs=1000)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
saveas(gcf, [pwd, '/outputs/q10_3.png'], 'png');


% ----------------------------


figure()

Fs = 100;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

S = sin(2*pi*50*t) + 2*sin(2*pi*120*t) + 3*sin(2*pi*150*t);

plot(1000*t(1:50),S(1:50))
title('Multi-Sine Signal (Fs=100)')
xlabel('t (milliseconds)')
ylabel('S(t)')
saveas(gcf, [pwd, '/outputs/q10_4.png'], 'png');

Y = fft(S, length(S));

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
figure()
plot(f,P1) 
title('Amplitude Spectrum (Fs=100)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
saveas(gcf, [pwd, '/outputs/q10_5.png'], 'png');


% ----------------------------


figure()

f = 60;  % Hz
tmin = -0.05;
tmax = 0.05;
t = linspace(tmin, tmax, 400);
x_c = cos(2*pi*f * t);

T = 1/800;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
hold on
plot(n*T,x1,'.')

T = 1/70;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
plot(n*T, x1, 'o')

T = 1/70;
x_c = cos(2*pi*10 * t);
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
plot(n*T, x1, 'o')

saveas(gcf, [pwd, '/outputs/q10_6.png'], 'png');

