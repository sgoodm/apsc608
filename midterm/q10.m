

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

S = sin(2*pi*50*t) + 2*sin(2*pi*120*t) + 3*sin(2*pi*150*t);

plot(1000*t(1:50),S(1:50))
title('Multi-Sine Signal')
xlabel('t (milliseconds)')
ylabel('S(t)')

Y = fft(S, length(S));

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
figure()
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')




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


