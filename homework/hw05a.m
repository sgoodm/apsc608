% hw05

clear;
close all;

% -------------------------------------------------------------------------

results = [];

% 6.9A
x = [1 0 1 0];
out = compare_dft(x, "A");
results = [results; out];

% 6.9B
x = [1 0 -1 0];
out = compare_dft(x, "B");
results = [results; out];

% 6.9C
x = [1 1 -1 -1];
out = compare_dft(x, "C");
results = [results; out];

% 6.9D
x = [-1 1 1 1];
out = compare_dft(x, "D");
results = [results; out];

% 6.9E
x = [-1 0 1 2];
out = compare_dft(x, "E");
results = [results; out];

% 6.9F
x = [1 -1 1 -1];
out = compare_dft(x, "F");
results = [results; out];


writetable(results, [pwd, '/hw05out/6_9.csv']);


% -------------------------------------------------------------------------

xval = 1:32;

% 6.10A
q = 'A';
x = [ones(1, 11), zeros(1, 21)];
d = dft(x);
m = abs(d);
p = angle(d);
figure();
plot(xval, m);
title(['6.10 ', q, ' - Magnitude'])
saveas(gcf, [pwd, '/hw05out/6_10_a_magnitude.png'], 'png');

figure();
plot(xval, p);
title(['6.10 ', q, ' - Phase'])
saveas(gcf, [pwd, '/hw05out/6_10_a_phase.png'], 'png');

% 6.10B
q = 'B';
x = [ones(1, 11), -1*ones(1, 10), zeros(1, 11)];
d = dft(x);
m = abs(d);
p = angle(d);
figure();
plot(xval, m);
title(['6.10 ', q, ' - Magnitude'])
saveas(gcf, [pwd, '/hw05out/6_10_b_magnitude.png'], 'png');

figure();
plot(xval, p);
title(['6.10 ', q, ' - Phase'])
saveas(gcf, [pwd, '/hw05out/6_10_b_phase.png'], 'png');

% 6.10C
q = 'C';
x = [1:21, zeros(1, 11)];
d = dft(x);
m = abs(d);
p = angle(d);
figure();
plot(xval, m);
title(['6.10 ', q, ' - Magnitude'])
saveas(gcf, [pwd, '/hw05out/6_10_c_magnitude.png'], 'png');

figure();
plot(xval, p);
title(['6.10 ', q, ' - Phase'])
saveas(gcf, [pwd, '/hw05out/6_10_c_phase.png'], 'png');

% 6.10D
q = 'D';
x = [1:11, 20-(12:21), zeros(1, 11)];
d = dft(x);
m = abs(d);
p = angle(d);
figure();
plot(xval, m);
title(['6.10 ', q, ' - Magnitude'])
saveas(gcf, [pwd, '/hw05out/6_10_d_magnitude.png'], 'png');

figure();
plot(xval, p);
title(['6.10 ', q, ' - Phase'])
saveas(gcf, [pwd, '/hw05out/6_10_d_phase.png'], 'png');

% 6.10E
q = 'E';
x = [cos(10.*pi.*(1:11)/11), zeros(1,21)];
d = dft(x);
m = abs(d);
p = angle(d);
figure();
plot(xval, m);
title(['6.10 ', q, ' - Magnitude'])
saveas(gcf, [pwd, '/hw05out/6_10_e_magnitude.png'], 'png');

figure();
plot(xval, p);
title(['6.10 ', q, ' - Phase'])
saveas(gcf, [pwd, '/hw05out/6_10_e_phase.png'], 'png');

% 6.10F
q = 'F';
x = [cos(9.*pi.*(1:11)/11), zeros(1,21)];
d = dft(x);
m = abs(d);
p = angle(d);
figure();
plot(xval, m);
title(['6.10 ', q, ' - Magnitude'])
saveas(gcf, [pwd, '/hw05out/6_10_f_magnitude.png'], 'png');

figure();
plot(xval, p);
title(['6.10 ', q, ' - Phase'])
saveas(gcf, [pwd, '/hw05out/6_10_f_phase.png'], 'png');


% -------------------------------------------------------------------------

xval = 1:32;

% 6.11A
n = 1:31;
x = 1 ./ [1 n];
d = dft(x);
m = abs(d);
figure();
plot(xval, m);
title('6.11 A Magnitude')
saveas(gcf, [pwd, '/hw05out/6_11_a.png'], 'png');

% 6.11B
n = 1:31;
x = 1 ./ [1 n.^2];
d = dft(x);
m = abs(d);
figure();
plot(xval, m);
title('6.11 B Magnitude')
saveas(gcf, [pwd, '/hw05out/6_11_b.png'], 'png');

% 6.11C
n = 1:31;
x = 1 ./ [1 factorial(n)];
d = dft(x);
m = abs(d);
figure();
plot(xval, m);
title('6.11 C Magnitude')
saveas(gcf, [pwd, '/hw05out/6_11_c.png'], 'png');

