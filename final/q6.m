% q6

% colemen chapter 11.1 #13

clear;
close all;

% format long;

n = 10;

tmin = 0;
tmax = 1;

h = (tmax - tmin) / n;
tsteps = tmin+h:h:tmax;

y0 = 5;

actual = 3 + 2 .* exp(-tsteps);
actual = [y0 actual];

% Table 11.1 Results from Example 1
y1(1) = y0;
for t=1:length(tsteps)
    y1(t+1) =  h * (3 - y1(t)) + y1(t);
end


% Heun's method
y2(1) = y0;
for t=1:length(tsteps)
    y2a = y2(t) + h * (3-y2(t));
    y2(t+1) =  y2(t) + (h/2) * (3-y2(t) + 3-y2a);
end

% modified Euler's method
y3(1) = y0;
for t=1:length(tsteps)
    y3a = y3(t) + 0.5 * h * (3-y3(t));
    y3b = 3-y3a;
    y3(t+1) =  y3(t) + h * y3b;
end

out = [[0 tsteps]; y1; y2; y3; actual]';

output = array2table(out, 'VariableNames',{'t', 'Original', 'Heun', ' Euler', 'Actual'});
writetable(output, [pwd, '/outputs/q6_', num2str(n), '.csv']);