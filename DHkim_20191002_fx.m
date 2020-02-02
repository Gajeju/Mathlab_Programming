x = 9;
a = 1;
b = 3;
c = 5;

poly = a * x^2 + b * x + c;
denom = 4 * pi* x^2 + cos(x-2) * poly;
f = (log(poly) - sin(poly))/denom
