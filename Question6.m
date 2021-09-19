%Question 6

figure (1)
plot(xa) %Period is at 17
figure (2)
stem(xa)
figure (3)
plot (xb) %Period is 31
figure (4)
stem (xb)

n = [1:1:65];
N1 = 16;
w = (2*pi)/N1; %frequency of system, 2pi/17
k = [1:1:17];
t = w.*n; %w*n of the system

a = (xa.*exp(-1i.*t))/N1; %synthesis equation for x_a

x = a.*exp(1i.*t); %analysis of equation for x_a
x_m = abs(x); %magnitude of x_a
x_p = angle(x); %phase of x_a

figure (5)
stem(n(:,1:17), x_m(:,1:17))
xlabel('n');
ylabel('Real(x_a(n))');
title("Real Values of x_a(n)");
figure (6)
stem(n(:,1:17), x_p(:,1:17))
xlabel('n');
ylabel('Imag(x_a(n))');
title("Imaginary Values of x_a(n)");

n2 = [1:1:91];
N2 = 30;
w2 = (2*pi)/N2; %frequency of x_b 2pi/31
k2 = [1:1:31];
t2 = w2.*n2; %2pin/30

a2 = (xb.*exp(-1i.*t2))/N2; %synthesis equation for x_b

x2 = a2.*exp(1i.*t2); %analysis equation for x_b
x2_m = abs(x2); %magnitude of x_b
x2_p = angle(x2); %phase of x_b

figure (7)
stem(n2(:,1:31),x2_m(:,1:31));
xlabel('n');
ylabel('Real(x_b(n))')
title("Real Values of x_b(n)");
figure (8)
stem(n2(:,1:31), x2_p(:,1:31));
xlabel('n');
ylabel('Imag(x_b(n))');
title("Imaginary Values of x_b(n)");


