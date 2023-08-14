n = -10:1:10;

f1 = figure;
n0 = 0;
x1 = impulseSignal(n0 , n);
figure(f1);
stem(n , x1);
title("x1: Impulse Signal")

f2 = figure;
n1 = 5;
x2 = unitStepSignal(n1 , n);
n2 = -1;
x3 = unitStepSignal(n2 , n);
n3 = 3;
x4 = impulseSignal(n3 , n);
y = x2 - x3 + 8*x4;
figure(f2);
stem(n , y);
title("y: Sum of 3 signals")

f3 = figure;
n4 = 0;
r1 = rampsignal(n4 , -n);
r2 = rampsignal(n4 , n);
x = 3*(r1 + r2);
figure(f3);
stem( n , x);
title("x: Sum of Ramp signals")

f4 = figure;
n5 = 0;
r_1 = rampsignal(n5 , n);
r_2 = rampsignal(n5 , -n);
X = 5 - r_1 - r_2;
figure(f4);
stem(n , X);
title("X: Sum of Ramp signals and digit")

f5 = figure;
X1 = 2.5*cos(((n*pi)/3)+2.5);
figure(f5);
stem(n , X1);
title("X1: cos signal")

f6 = figure;
X2 = 3*sin((4*n/5)-1)+3;
figure(f6);
stem(n,X2);
title("X2: sin signals")


















