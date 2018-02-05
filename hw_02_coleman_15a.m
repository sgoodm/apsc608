

% The following line makes all of the plots different: solid, dash, dot, etc
set(0, 'DefaultAxesColorOrder', [0 0 0], 'DefaultAxesLineStyleOrder', '-|-.|--|:')

for n = 1:5
    % This code generates all five graphs of figure 1.3, but each will be solid
    
    % In order to differentiate graphs using dashes and/or dots,
    % each graph must be done individually, then overlaid.
    % Here we provide an initial guess for the eigenvalue:
    lambda = (((2*n-1)^2)*(pi)^2)/4;
    solinit = bvpinit(linspace(0,1,10),@guess,lambda);
    sol = bvp4c(@odes,@bcs,solinit);
    xint = linspace(0,1,100);
    Sxint = deval(sol,xint);
    axis([0 1 -.3 .6]);
    plot(xint,Sxint(1,:));
    hold all;
end

% The subroutine bvpinit needs an initial guess and its derivative:
function v = guess(x)
    v = [ sin(5*pi*x); 5*pi*cos(5*pi*x) ];
end

% The eigenvalue differential equation:
function dydx = odes(x,y,lambda)
    dydx = [y(2); -(lambda)*y(1) ];
end

% The boundary conditions:
function res = bcs(ya,yb,lambda)
    res = [ ya(1); yb(1)+yb(2); ya(2)-1];
end

% We compute the eigenvalues in Table 1.1 individually, rather
% than in the for loop. (The eigenvalue will appear in the
% command window.)

