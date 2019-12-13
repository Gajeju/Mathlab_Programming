close all;
clear all;
clc;

ti = -1;
tf = 3;
t = ti:0.01:tf;
f0 = [1 2 3];
A = 1;

x1 = A * cos(2 * pi * f0(1) * t);
x2 = A * cos(2 * pi * f0(2) * t);
x3 = A * cos(2 * pi * f0(3) * t);

subplot(3, 1, 1);
plot(t, x1);
axis([ti tf -1.2*A 1.2*A]);
subplot(3, 1, 2);
plot(t, x2);
axis([ti tf -1.2*A 1.2*A]);
subplot(3, 1, 3);
plot(t, x3);