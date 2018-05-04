% q1

clear;
close all;

% Fs = 200;              % samples per second
% dt = 1/Fs;              % seconds per sample
% stop = 0.5;             % seconds
% t = (0:dt:stop-dt);        % seconds


Fs = 10;
t = 0:0.001:1-0.001;

% sine waves
x1a = 2 * sin(2*pi*4*t);     
x1b = 3 * sin(2*pi*6*t);
x1c = 5 * sin(2*pi*8*t);
x1d = 4 * sin(2*pi*12*t);

x1 = x1a + x1b + x1c + x1d;

% normally distributed random signal
x2 = normrnd(0, 3.5, [1, length(t)]);

% sine waves combined with normal random signal
x3 = x1 + x2;

x = x1;


% 
% figure;
% plot(t, x1);
% 
% 
% xdft = fft(x1);
% xdft = xdft(1:length(x1)/2+1);
% xdft = xdft/length(x1);
% xdft(2:end-1) = 2 * xdft(2:end-1);
% freq = 0:Fs/length(x1):Fs/2;
% 
% figure
% stem(freq, abs(xdft))
% 
% 
% 
% figure;
% plot(t, x2);
% 
% xdft = fft(x2);
% xdft = xdft(1:length(x2)/2+1);
% xdft = xdft/length(x2);
% xdft(2:end-1) = 2 * xdft(2:end-1);
% freq = 0:Fs/length(x2):Fs/2;
% 
% figure
% stem(freq, abs(xdft))



% figure;
% plot(t, x3);
% 
% xdft = fft(x3);
% xdft = xdft(1:length(x3)/2+1);
% xdft = xdft/length(x3);
% xdft(2:end-1) = 2 * xdft(2:end-1);
% freq = 0:Fs/length(x3):Fs/2;
% 
% figure
% stem(freq, abs(xdft))
% 
% 
% lpad = 2*length(x3);
% xdft = fft(x3,lpad);
% xdft = xdft(1:lpad/2+1);
% xdft = xdft/length(x3);
% xdft(2:end-1) = 2*xdft(2:end-1);
% freq = 0:Fs/lpad:Fs/2;
% 
% figure
% stem(freq,abs(xdft))
% 




xdft = fft(x);
xdft = xdft(1:length(x)/2+1);
xdft = xdft/length(x);
xdft(2:end-1) = 2*xdft(2:end-1);
freq = 0:Fs/length(x):Fs/2;

plot(freq,abs(xdft))
hold on
plot(freq,ones(length(x)/2+1,1),'LineWidth',2)
xlabel('Hz')
ylabel('Amplitude')
hold off

lpad = 2*length(x);
xdft = fft(x,lpad);
xdft = xdft(1:lpad/2+1);
xdft = xdft/length(x);
xdft(2:end-1) = 2*xdft(2:end-1);
freq = 0:Fs/lpad:Fs/2;

figure
plot(freq,abs(xdft))
hold on
plot(freq,ones(2*length(x)/2+1,1),'LineWidth',2)
xlabel('Hz')
ylabel('Amplitude')
hold off

