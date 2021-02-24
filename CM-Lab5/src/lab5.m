% Shendrikov Jack, IO-82
% Solution for the Lorenz equations in the time interval [0,100] with initial conditions [1,1,1].
clc

sigma=10;
beta=8/3;
rho=28;

%'f' is the set of differential equations and 'a' is an array containing values of x,y, and z variables.
%'t' is the time variable
f = @(t,a) [-sigma*a(1) + sigma*a(2); rho*a(1) - a(2) - a(1)*a(3); -beta*a(3) + a(1)*a(2)];

[t, a] = ode45(f,[0 100],[1 1 1]); %'ode45' uses adaptive Runge-Kutta method of 4th and 5th order to solve differential equations
plot3(a(:,1),a(:,2),a(:,3)) %'plot3' is the command to make 3D plot

% for this example, we use only x-direction data of the Lorenz Attractor
xdata = a(:,1); % x -uniformly sampled time-domain signal
dim = 3; % 'Dimension' set to 3 since the Lorenz Attractor is a three-dimensional system
minRadius = 0.07676; % minimum radius of similarity
maxRadius = 2.536; % maximum radius of similarity
[~,lag] = phaseSpaceReconstruction(xdata,[],dim); % since lag is unknown, we estimate the delay using phaseSpaceReconstruction
Np = 100; % num points

% value of correlation dimension is directly proportional to the level of chaos in the system, that is, 
% a higher value of corDim represents a high level of chaotic complexity in the system.
correlationDimension(xdata,'Dimension',dim,'MinRadius',minRadius,'MaxRadius',maxRadius,'NumPoints',Np,'Lag',lag);