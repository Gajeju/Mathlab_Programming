n = [-10:1:10];
xa = (n==-1) - (n==0) + stepfun(n,-1) - stepfun(n,2);
xb = (n+2).*stepfun(n, -2) - n.*stepfun(n, 4) - 2.*stepfun(n, 6);


subplot(2, 1, 1);
stem(n, xa);
axis([-10 10 -0.5 2.5]);
grid on;
title('연습문제 3.14 a');

subplot(2, 1, 2);
stem(n, xb);
axis([-10 10 -0.5 6]);
grid on;
title('연습문제 3.14 b');




