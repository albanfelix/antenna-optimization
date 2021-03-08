function [g, h] = constraints(X)
    %Coordinates of existing antenna
    antenna1 = [-5 10];
    antenna2 = [5 0];
    
    %Inequality contraints X=[x(1) x(2)]
    g(1) = 10 - norm(antenna1-X); %Constaint on existing antenna1
    g(2) = 10 - norm(antenna2-X); %Constaint on existing antenna2
    
    h = []; %No equality constraint
    
end