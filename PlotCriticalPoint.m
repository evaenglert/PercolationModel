function [] = plotCriticalPoint(m, nmin, nmax, pmin, pmax, numberofpoints)
%PLOTCRITICALPOINT plots the value p_c for different n between nmin and nmax and  for fixed m. 

criticalpoints = zeros(1,nmax+1-nmin);

numbers = [];
for i = nmin:nmax
    numbers = [numbers, i];
end

[probs, listoftheta] = thetaValues2(m,nmax, pmin, pmax, numberofpoints);



for j = nmin:nmax
    value = 0;
    theta = listoftheta{j+1};
    for i = 1 : length(theta)
        if theta(i)~=0
            break;
        end
        value = probs(i);

    end
    criticalpoints(j+1-nmin) = value;
end




plot(numbers, criticalpoints);
axis([nmin nmax 0.3 0.65]);
title('Value of critical point');
grid on;


end

