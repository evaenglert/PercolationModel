function [value] = criticalPointCalculator(m,n,pmin, pmax, numberofpoints)
%CRITICALPOINTCALCULATOR estimates the value of p_c= sup{p, theta(p) = 0}
[probs, theta] = thetavalues(m,n, pmin, pmax, numberofpoints);


for i = 1 : length(theta)
    if theta(i)~=0
        break;
    end
    value = probs(i);

end





end

