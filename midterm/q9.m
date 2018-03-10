

% midterm question 9
% coleman 11.3

clear;
close all;

L = 1;
xstep = 0.2;
x = 0:xstep:L;

% part b

tstep = 0.02;
tend = 0.16;
t = 0:tstep:tend;

results = zeros(length(x), length(t));

for tx = 1:length(t)
    j = tx - 1;
    tj = t(tx);
    for xx = 1:length(x)
        i = xx - 1;
        xi = x(xx);
        if xi == 0 || xi == L
            results(xx, tx) = 0;
        elseif tj == 0
            results(xx, tx) = sin(pi*xi);
        else
            results(xx, tx) = 0.5 * (results(xx-1, tx-1) + results(xx+1, tx-1));
        end
    end
end

out = array2table(results, 'RowNames', cellstr(string(x)), 'VariableNames', strcat('t', cellstr(string(0:length(t)-1))));


disp(t);
disp(out);





% part c

tstep = 0.08;
tend = 0.16;
t = 0:tstep:tend;


results = zeros(length(x), length(t));

for tx = 1:length(t)
    j = tx - 1;
    tj = t(tx);
    for xx = 1:length(x)
        i = xx - 1;
        xi = x(xx);
        if xi == 0 || xi == L
            results(xx, tx) = 0;
        elseif tj == 0
            results(xx, tx) = sin(pi*xi);
        else
            results(xx, tx) = 0.5 * (results(xx-1, tx-1) + results(xx+1, tx-1));
        end
    end
end

out = array2table(results, 'RowNames', cellstr(string(x)), 'VariableNames', strcat('t', cellstr(string(0:length(t)-1))));

disp(t);
disp(out);


% larger tstep size of 0.8 is less effective andgoing to be unstable since:
% xstep / tstep^2 should be <= 0.5
% 0.2 / 0.08^2 = 31.25






