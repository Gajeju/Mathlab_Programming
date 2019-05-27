R = 3;  L = 1;  C = 1;
t = 0:0.02:30;
num1 = [1];
den1 = [L*C R*C 1];
num2 = [C 0];
den2 = [L*C R*C 1];
G1 = tf(num1, den1);
G2 = tf(num2, den2);
y1 = step (G1, t);
y2 = step (G2, t);
plot(t, y1);
hold on
plot(t, y2, '--');
ylabel('Output')
title("Over damping")