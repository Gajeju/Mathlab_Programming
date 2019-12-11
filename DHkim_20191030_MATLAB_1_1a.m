close all;
clear all;
clc;

ti = -1;
tf = 3;
t = ti:0.01:tf;
f0 = 1;
A = 1;
phi = [0 -(pi/2) pi/2];

x1 = A * cos(2 * pi * f0 * t +phi(1));
x2 = A * cos(2 * pi * f0 * t +phi(2));
x3 = A * cos(2 * pi * f0 * t +phi(3));

plot(t, x1, 'k');
axis([ti tf -1.2*A 1.2*A]);
hold on
plot(t, x2, '-.b');
plot(t, x3, '--r');
legend('x1', 'x2', 'x3', 'Location', 'NorthEast');