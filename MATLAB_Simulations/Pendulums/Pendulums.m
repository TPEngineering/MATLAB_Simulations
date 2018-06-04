% Simple pendulum
% A simple pendulum is one which can be considered to be a point mass 
% suspended from a string or rod of negligible mass. 
% It is a resonant system with a single resonant frequency. 

% Declare variables
clf;
fps=30;
simtime=10;
totalframes=fps*simtime;

L = 2;                                      % Length of pendulum
g = 9.81;                                   % Acceleration due to gravity
theta_max = 10;                             % Angle at which pendulum is released
t = linspace (0,simtime,(fps*simtime));     % Time vector
t = transpose(t);
theta = zeros(length(t),1);

T = 2*pi*sqrt(L/g);                         % Time period of oscillation

an = animatedline;
axis([0 simtime -10 10]);

for i=1:length(t)
    theta(i,1) = theta_max*cos((2*pi*t(i,1))/T);
    addpoints(an,t(i,1),theta(i,1));
    drawnow
end