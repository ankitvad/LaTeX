function [t, z] = imaginarysolve

%Start and end times:
t0 = 0;
tf = 4;

%Initial Condition:
z0 = 1 + 1i;

%Solve
[t, z] = ode45(@dzdt, [t0, tf], z0, []);
end

function z = dzdt(t, z)
z = (-1 + 10i)*z;
end