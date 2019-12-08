close all;
clear all;
clc;

ti = -1;
tf = 8;
t = ti:0.01:tf;
f0 = 0.5;
A = 5;
phi = -0.4*pi;

x1 = A * cos(2 * pi * f0 * t +phi(1));

plot(t, x1);
axis([ti tf -1.2*A 1.2*A]);
hold
plot(t,0);
grid on
xlabel('t')
ylabel('cos()')
title('¿¹Á¦ 1-2')