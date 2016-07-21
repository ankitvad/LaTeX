function [t, x] = freefall
%function [t, v] = freefall

%Start and end times:
t0 = 0;
tf = 791.42;

%Initial Condition:
%v0 = 0; %accel -> velocity
x0 = 0; %velocity -> position
g = 9.8;
A = 0.5;
p = 1.2;
CC = 1.2;
m = 90;

%Solve
%[t, v] = ode45(@fallaccel, [t0, tf], v0, [], 
[t, x] = ode45(@fallspeed, [t0, tf], x0, [], g, A, p, CC, m);
end

function x = fallspeed(t, x, g, A, p, CC, m)
x = (2*g*m/(A*CC*p))^0.5*tanh(t*(A*CC*p*g/(2*m))^0.5);
end

%function v = fallaccel(t, v)
%v = 
%end