% compare dft

function out = compare_dft(x, q)

varnames = ["k" "q" "real_analytical" "imag_analytical" "real_dft" "imag_dft"];

N = length(x);
kvals = 1:N;

for i=kvals
    k = i - 1;
    re(i) = x(1) + x(2)*cos(pi*k/2) + x(3)*cos(pi*k) + x(4)*cos(pi*k*3/2);
    im(i) = x(2)*sin(pi*k/2) + x(3)*sin(pi*k) + x(4)*sin(pi*k*3/2);
end
re = round(re, 12);
im = round(im, 12);

d = dft(x);

out = [kvals; [q q q q]; re; im; round(real(d'), 12); round(imag(d'), 12)];
out = array2table(out', 'VariableNames', cellstr(varnames));
