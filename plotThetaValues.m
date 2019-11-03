function [] = plotTheta(n,m)
%PLOTTHETA plots the function theta_{m,n} between 0.5 and 0.75
%
numberofpoints = 10000;
pmin = 0.5;
pmax = 0.75;

[probs, theta] = thetaValues(m,n,pmin,pmax, numberofpoints);

plot(probs, theta);
axis([0.5 0.75 0 1])
title('Theta function');
xlabel('p');
grid on;

end

