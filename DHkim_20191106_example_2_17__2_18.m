clc
clear

T = 3;
ti = (-2) * T;
tf = 3 * T;
dt = 0.01;
t = ti:dt:tf;

x = t.*(0 <= t & t <= 1) + (1 < t & t <= 3);
xp0 = x((0 - ti)/ dt+1:(T-ti)/dt);

M = T/dt;
L = (tf - ti)/T;

for k = 0:L-1
    for j = 1:M
        xp(k*M+j) = xp0(j);
    end
end

N = 7;
ni = -17;
nf = 24;
n = ni:nf;
y = (-1).*(-3<=n & n<=-1) + (1<=n & n<=3);
yp0 = y((0-ni)-2:(N-ni)-3);

L = (nf-ni)/N;
for k=0:L
    for j=1:N
        yp(k*N+j) = yp0(j);
    end
end

figure;
subplot(2,2,1);
plot(t,x);
axis([ti tf -1.5 1.5]);
title('신호 2.17 (b)');
grid on;

subplot(2,2,3);
plot(t,[xp 0]);
axis([ti tf -1.5 1.5]);
title('주기 신호 2.17 (b)');
grid on;

subplot(2,2,2);
stem(n,y);
axis([ni nf -2.5 2.5]);
title('신호 2.18 (b)');
grid on;

subplot(2,2,4);
stem(n,yp);
axis([ni nf -2.5 2.5]);
title('주기 신호 2.18 (b)');
grid on;