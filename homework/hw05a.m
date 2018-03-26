% hw05

clear;
close all;

% -------------------------------------------------------------------------

N = 4;
n = 2:N;
k = 1:N;

varnames = ["k" "q" "ra" "ia" "reala" "imaga"];
results = [];

% 6.9A
x = [1 0 1 0];
for i=k
    ra(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    ia(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end
ta = dft(x);
q = "a";
out = [k; [q q q q]; ra; ia; real(ta'); imag(ta')];
out = array2table(out', 'VariableNames', cellstr(varnames));
results = [results; out];

% 6.9B
x = [1 0 -1 0];
for i=k
    rb(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    ib(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end
tb = dft(x);
q = "b";
out = [k; [q q q q]; rb; ib; real(tb'); imag(tb')];
out = array2table(out', 'VariableNames', cellstr(varnames));
results = [results; out];

% 6.9C
x = [1 1 -1 -1];
for i=k
    rc(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    ic(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end
tc = dft(x);
q = "c";
out = [k; [q q q q]; rc; ic; real(tc'); imag(tc')];
out = array2table(out', 'VariableNames', cellstr(varnames));
results = [results; out];

% 6.9D
x = [-1 1 1 1];
for i=k
    rd(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    id(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end
td = dft(x);
q = "d";
out = [k; [q q q q]; rd; id; real(td'); imag(td')];
out = array2table(out', 'VariableNames', cellstr(varnames));
results = [results; out];

% 6.9E
x = [-1 0 1 2];
for i=k
    re(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    ie(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end
te = dft(x);
q = "e";
out = [k; [q q q q]; re; ie; real(te'); imag(te')];
out = array2table(out', 'VariableNames', cellstr(varnames));
results = [results; out];

% 6.9F
x = [1 -1 1 -1];
for i=k
    rrf(i) = x(1) + sum(x(n).*cos(2.*pi.*i.*n./N));
    iif(i) = sum(x(n).*sin(2.*pi.*i.*n./N));
end
tf = dft(x);
q = "f";
out = [k; [q q q q]; rrf; iif; real(tf'); imag(tf')];
out = array2table(out', 'VariableNames', cellstr(varnames));
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
x = [1 n];
d = dft(x);
m = abs(d);
figure();
plot(xval, m);
title('6.11 A Magnitude')
saveas(gcf, [pwd, '/hw05out/6_11_a.png'], 'png');

% 6.11B
n = 1:31;
x = [1 n.^2];
d = dft(x);
m = abs(d);
figure();
plot(xval, m);
title('6.11 B Magnitude')
saveas(gcf, [pwd, '/hw05out/6_11_b.png'], 'png');

% 6.11C
n = 1:31;
x = [1 factorial(n)];
d = dft(x);
m = abs(d);
figure();
plot(xval, m);
title('6.11 C Magnitude')
saveas(gcf, [pwd, '/hw05out/6_11_c.png'], 'png');

