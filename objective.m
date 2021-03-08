function f = objective(X)
    %Coordinates of costumers
    A = [5 10]; A_consummation = 200;
    B = [10 5]; B_consummation = 150;
    C = [0 12]; C_consummation = 200;
    D = [12 0]; D_consummation = 300;
    
    %Objective function f(X) with X=[x1, x2]
    f = A_consummation*norm(A-X) + B_consummation*norm(B-X) + C_consummation*norm(C-X) + D_consummation*norm(D-X);
end