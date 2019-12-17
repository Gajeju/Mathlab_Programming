ti = -4;
tf = 4;
dt = 0.01;
t = ti:dt:tf;

xa = (-2<=t) + -2.*(0<=t) +(1<=t);
xb = t.*(t>=-1) - t.*(t>=2);

subplot(1,2,1); plot(t,xa);
axis([ti tf -2 2]); grid on;
title('3.12 (a)');

subplot(1,2,2); plot(t,xb);
axis([ti tf -2 2]); grid on;
title('3.12 (b)');

