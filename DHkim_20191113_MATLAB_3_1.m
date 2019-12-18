ti = -4;
tf = 4;
dt = 0.01;
t = ti:dt:tf;

xa = (-1<=t) & (t<=1);
xb = (t+1).*(t>=-1)-2*t.*(t>=0)+(t-1).*(t>=1);
j = find(t,1)-1;

for i=1:length(t)
    if i == j
        xc(i) = 1;
    else
        xc(i) = sin(2*pi*t(i))/(2*pi*t(i));
    end
end

xd = exp(-0.5*t).*cos(2*pi*t).*(t>=0);
xde = exp(-0.5*t).*(t>=0);

subplot(2,2,1); plot(t,xa);
axis([ti tf -0.5 1.5]); grid on;
title('»ç°¢ ÆÞ½º rect(1/2)');

subplot(2,2,2); plot(t,xb);
axis([ti tf -0.5 1.5]); grid on;
title('»ï°¢ ÆÞ½º tri(t/2)');

subplot(2,2,3); plot(t,xc);
axis([ti tf -0.5 1.5]); grid on;
title('½ÌÅ© ÇÔ¼ö sinc(t/0.5)'); xlabel('t');

subplot(2,2,4); plot(t,xd,t,xde,'--r',t,-xde,'--r');
axis([ti tf -1 1]); grid on;
title('Áö¼ö °¨¼è Á¤ÇöÆÄ'); xlabel('t');
