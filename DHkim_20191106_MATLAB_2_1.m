T = 4;
ti = (-2) * T;
tf = 3 * T;
dt = 0.01;
t = ti:dt:tf;

x = ((0 <= t) & (t <= 2)) + (-1) * (2 <= t & t < 4);
xp0 = x((0 - ti)/ dt+1:(T-ti)/dt);

M = T/dt;
L = (tf - ti)/T;

for k = 0:L-1
    for j = 1:M
        xp(k*M+j) = xp0(j);
    end
end

N = 8;
ni = -2*N;
nf = 3*N;
n = ni:nf;
y = (0<n & n<2)+(-n+4).*(2<=n & n<6).*(6<=n & n<8);
yp0 = y((0-ni)+1:(N-ni));

L = (nf-ni)/N;
for k=0:L-1
    for j=1:N
        yp(k*N+j) = yp0(j);
    end
end

figure;
subplot(2,2,1);
plot(t,x);
axis([ti tf -1.5 1.5]);
title('신호 x(t)');

subplot(2,2,3);
plot(t,[xp 0]);
axis([ti tf -1.5 1.5]);
title('주기 신호 x(t)');

subplot(2,2,2);
stem(n,y);
axis([ni nf -2.5 2.5]);
title('신호 y[n]');

subplot(2,2,4);
stem(n,[yp 0]);
axis([ni nf -2.5 2.5]);
title('주기 신호 yp[n]');