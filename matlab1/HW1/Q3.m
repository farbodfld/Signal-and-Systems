z = -12:1:12;
f1 = figure;
x1 = [-2 , -1 , 0 , 1 , 2];
X1 = repmat(x1 , 1 , 5);
figure(f1);
stem(X1);
title("X1: Plot 5 periods")

n = -12:1:12;
f2 = figure;
n0 = 0;
u1 = unitStepSignal(n0 , n);
n1 = 20;
u2 = unitStepSignal(n1 , n);
u = u1 - u2;
e = exp(0.1.*n);
x2 = e.*u;
X2 = repmat(x2 , 1 , 3);
figure(f2);
stem(X2);
title("X2: Multiplication of exp() and unitStep signal")

f3 = figure;
m = -12:1:12;
m0 = 10;
U1 = unitStepSignal(m0 , m);
U2 = unitStepSignal(n0 , m);
U = U2 - U1;
s = sin(0.1 * pi * m);
x3 = s.*U;
X3 = repmat(x3 , 1 , 4);
figure(f3);
stem(X3);
title("X3: multiplication of sin() and unitStep signal")