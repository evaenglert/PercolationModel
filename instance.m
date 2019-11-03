function [Z] = instance(n)
%INSTANCE makes an instance of the Percolation model 
% and outputs the values Z(y) for y in Q_n

Z = [0];

for i  = 1 : n
    %generating the numbers on edges going between Q_i and Q_{i+1}
    %they are stored in a 2 by i array R, first row representing vertical edges 
    %second row representing horizontal edges
    R = zeros(2,i);
    
    for j = 1: i
        R(1,j) = rand;
        R(2,j) = rand;
    end
    
    %generating the new values of Z(y) for y in Qi
    Z_new = [];
    
    firstpoint = max(Z(1), R(1,1));
    Z_new = [firstpoint];
    if i>1
        for j = 2 : i
            A1 = max(Z(j-1), R(2,j-1));
            A2 = max(Z(j), R(1, j));
            newpoint = min(A1,A2);
            Z_new = [Z_new, newpoint];
        end
    end
    lastpoint = max(Z(i), R(2,i));
    Z_new = [Z_new, lastpoint];
    Z = Z_new;
        
    
end

    
end

