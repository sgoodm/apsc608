
clear
close all

Fs = 1000;
N = 100;
t = 0:1/Fs:N-1/Fs;

x1a = 2 * sin(2*pi*4*t);     
x1b = 3 * sin(2*pi*6*t);
x1c = 5 * sin(2*pi*8*t);
x1d = 4 * sin(2*pi*12*t);

x1 = x1a + x1b + x1c + x1d;

% normally distributed random signal
x2 = normrnd(0, 10, [1, length(t)]);

% sine waves combined with normal random signal
x3 = x1 + x2;

figure
plot(t, x1)
title('Signal 1')
xlim([0 1])
saveas(gcf, [pwd, '/outputs/q1_s1.png'], 'png');

figure
plot(t, x2)
title('Signal 2')
xlim([0 1])
saveas(gcf, [pwd, '/outputs/q1_s2.png'], 'png');

figure
plot(t, x3)
title('Signal 3')
xlim([0 1])
saveas(gcf, [pwd, '/outputs/q1_s3.png'], 'png');




x = x1;

n = 2^10;
y = fft(x, n);                               
m = abs(y) / (n/2);                               
f = (0:length(y)-1)*Fs/length(y);        

figure
plot(f,m)
title('Signal 1 FFT - Non Zero Padded')
xlim([0 30])
saveas(gcf, [pwd, '/outputs/q1_s1a.png'], 'png');


n = 2^15;
y = fft(x,n);
m = abs(y) / (n/2);
f = (0:length(y)-1)*Fs/length(y);

figure
plot(f,m)
title('Signal 1 FFT - Zero Padded')
xlim([0 30])
saveas(gcf, [pwd, '/outputs/q1_s1b.png'], 'png');


x = x2;

n = 2^10;
y = fft(x, n);                               
m = abs(y) / (n/2);                               
f = (0:length(y)-1)*Fs/length(y);        

figure
plot(f,m)
title('Signal 2 FFT - Non Zero Padded')
xlim([0 30])
saveas(gcf, [pwd, '/outputs/q1_s2a.png'], 'png');


n = 2^15;
y = fft(x,n);
m = abs(y) / (n/2);
f = (0:length(y)-1)*Fs/length(y);

figure
plot(f,m)
title('Signal 2 FFT - Zero Padded')
xlim([0 30])
saveas(gcf, [pwd, '/outputs/q1_s2b.png'], 'png');


x = x3;

n = 2^10;
y = fft(x, n);                               
m = abs(y) / (n/2);                               
f = (0:length(y)-1)*Fs/length(y);       

figure
plot(f,m)
title('Signal 3 FFT - Non Zero Padded')
xlim([0 30])
saveas(gcf, [pwd, '/outputs/q1_s3a.png'], 'png');


n = 2^15;
y = fft(x,n);
m = abs(y) / (n/2);
f = (0:length(y)-1)*Fs/length(y);

figure
plot(f,m)
title('Signal 3 FFT - Zero Padded ')
xlim([0 30])
saveas(gcf, [pwd, '/outputs/q1_s3b.png'], 'png');



N = 1.5;
t = 0:1/Fs:N-1/Fs;

x1a = 2 * sin(2*pi*4*t);     
x1b = 3 * sin(2*pi*6*t);
x1c = 5 * sin(2*pi*8*t);
x1d = 4 * sin(2*pi*12*t);

x1 = x1a + x1b + x1c + x1d;

% normally distributed random signal
x2 = normrnd(0, 10, [1, length(t)]);

% sine waves combined with normal random signal
x3 = x1 + x2;


x = x1;

n = 2^15;
y = fft(x,n);
m = abs(y) / (n/2);
f = (0:length(y)-1)*Fs/length(y);

figure
plot(f,m)
title('Signal 1 FFT - Frequency Leakage')
xlim([0 30])
saveas(gcf, [pwd, '/outputs/q1_s1c.png'], 'png');



x = x3;

n = 2^15;
y = fft(x,n);
m = abs(y) / (n/2);
f = (0:length(y)-1)*Fs/length(y);

figure
plot(f,m)
title('Signal 3 FFT - Frequency Leakage')
xlim([0 30])
saveas(gcf, [pwd, '/outputs/q1_s3c.png'], 'png');



