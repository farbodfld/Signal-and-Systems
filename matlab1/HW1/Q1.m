x = [4,3,2,1,0,1,2,3,4];

f1 = figure;
shifted_x = zeros(size(x));
shift = 2;
shifted_x(shift+1 : end) = x(1 : end-shift);
y = 2*x + 4*shifted_x;
figure(f1);
stem(y);
title("x1: sum of x[n] and x[n-2]")

f2 = figure;
n = -4:4; 
y1 = abs(-n);  %x[-n]

y2 = zeros(size(x));
y2(2:2:end) = x(2:2:end); %x[2n]

y3 = zeros(size(y1));
shift_counter = -4;
y3(1:end+shift_counter) = y1(-shift_counter+1:end); %x[4-n]
y3 = abs(-n);

y = 2*y1 + (y2.*y3);
figure(f2);
stem(n,y);
title("y: Question1.b")