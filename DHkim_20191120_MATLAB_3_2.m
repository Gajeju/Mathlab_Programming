n = [-10:1:10];
xa = (n==0);
xb = stepfun(n, -5);
xc = rectpuls(n/10);
xd = 0.2*(n-3) .* (n>=3);
xe= sign(n);
xf = sinc(n/3);

subplot(3, 2, 1);
stem(n, xa);
axis([-10 10 -0.5 1.5]);
grid on;
title('임펄스 신호 \delta[n]');

subplot(3, 2, 2);
stem(n, xb);
axis([-10 10 -0.5 1.5]);
grid on;
title('계단신호 u[n+5]');

subplot(3, 2, 3);
stem(n, xc);
axis([-10 10 -0.5 1.5]);
grid on;
title('사각 펄스 rect[n/10]');

subplot(3, 2, 4);
stem(n, xd);
axis([-10 10 -0.5 1.5]);
grid on;
title('램프 신호 0.2r[n-3]');

subplot(3, 2, 5);
stem(n, xe);
axis([-10 10 -1.5 1.5]);
grid on;
title('부호 함수 sgn[n]');

subplot(3, 2, 6);
stem(n, xf);
axis([-10 10 -0.5 1.5]);
grid on;
title('싱크 함수 sinc[n/3]');




