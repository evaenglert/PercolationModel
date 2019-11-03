function [probs, listoftheta] = thetaValues2(m,n, pmin, pmax, numberofpoints)
%THETAVALUES calculates theta_{m,n}(p) for points p in [pmin, pmax]

listoftheta = cell(1,n+1);
probs = linspace(pmin, pmax, numberofpoints);

for i = 1: n+1
    listoftheta{i} = zeros(1,numberofpoints);
end

for i = 1 : m 
    Y = instance2(n);
    for indexing = 1 : n+1
        value = zeros(1,numberofpoints);
        myinstance = Y{indexing};
        for j = 1:numberofpoints
            value(j) = hasElement(myinstance, probs(j));    
        end
        listoftheta{indexing} = listoftheta{indexing} + value;
    end
end

for i = 1 : n+1
    listoftheta{i} = listoftheta{i} ./ m;
end

    function[answer] = hasElement(array, probability)
    %isempty desides whether an array has any entry < 'probability'
    answer = 0;
    for index = 1 : length(array)
        if array(index)<probability
            answer = 1;
            break;
        end
    end
   
    end

end
