function [probs, theta] = thetaValues(m,n, pmin, pmax, numberofpoints)
%THETAVALUES calculates theta_{m,n}(p) for points p in [pmin, pmax]
    
    probs = linspace(pmin, pmax, numberofpoints);
    theta = zeros(1,numberofpoints);

for i = 1 : m 
    value = zeros(1,numberofpoints);
    myinstance = instance(n);
    for j = 1:numberofpoints
        value(j) = hasElement(myinstance, probs(j));    
    end   
    theta = theta + value;
end

theta = theta./m;

    function[answer] = hasElement(array, probability)
    %HASELEMENT decides whether an array has any entry < 'probability'
    answer = 0;
    for index = 1 : length(array)
        if array(index)<probability
            answer = 1;
            break;
        end
    end
   
    end

end

