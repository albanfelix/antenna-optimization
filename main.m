% Alban-Félix Barreteau, M1 CORO SIP
% Mail : alban-felix.barreteau@eleves.ec-nantes.fr
% Matlab R2020b Update 5 (9.9.0.1538559), Student license
% Labwork 1 : Optimization techniques (session 1) - OPTEC

% Professor : fouad.bennis@ec-nantes.fr

%----------------------------------------------------------------%

clear all
close all
clc

% Definition of the screen :
hpixels=1440;
vpixels=900;



%% Optimisation Function

x0 = [30, 30]; %Beginning point
Lb = [-30; -30]; %Lower band for x1 and x2 (X=(x1, x2))
Ub = [30; 30]; %Upper band

options = optimset('Display', 'iter', 'TolX', 1*exp(-6), 'TolFun', 1*exp(-6), 'MaxIter', 100, 'MaxFunEvals', 300);
X = fmincon(@objective, x0, [], [], [], [], Lb, Ub, @constraints, options); %Find the minimum of the objective function with respect to the constraints

x1 = -30:1:30;
x2 = x1;

[X1, Y1] = meshgrid(x1, x2);
Z = (3*X1-3).^2 + (4*Y1-2).^2 + X1.*Y1; % The objective function 

figure(10);
clf; surf(X1, Y1, Z); hold on;
contourf(X1, Y1, Z, [0,200,500,1000,2000,3000,4000,5000,7000,9000,12000,20000]); hold on;
set(figure(10),'name','3D surface with contour plot','position',[hpixels/2 vpixels/2 hpixels/2 vpixels/2])

figure(20);
clf; contourf(X1, Y1, Z, [0,200,500,1000,2000,3000,4000,5000,7000,9000,12000,20000]); hold on;
viscircles([-5 10], 10); %Constraint with antenna 1
viscircles([5 0], 10); %Constraint with antenna 2
set(figure(20),'name','3D surface with contour plot','position',[hpixels/2 vpixels/2 hpixels/2 vpixels/2])


