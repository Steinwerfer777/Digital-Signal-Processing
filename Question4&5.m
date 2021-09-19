%question 4
%Using analysis equation for a square wave function

N = 32;

k = [1:1:32];
b = 9*pi.*k; %2pik + (4+N1) where N1 = 4
c = pi.*k; 
d = sind(b/N); %sin((2pik+[4.5])/32)
e = sind(c/N); %sin(pik/32)
f = d./e; %Periodic function for a square wave*N
a(1,1) = (9/32); %co-efficient at k=0
a(1,2:33) = f./N;

figure (1)
stem(a);
xlabel('k');
ylabel('a_k');
title("Question 4");

%Question 5
%Using synthesis equation for selective points of x

k1 = [0:1:8];
x_8 = exp(1i*k1*pi/16).*a(1,1:9);
figure (2)
stem(k1, x_8)

k2 = [0:1:16];
x_16 = exp(1i.*k2*pi/16).*a(1,1:17);
figure (3)
stem(k2, x_16)

k3 = [0:1:24];
x_24 = exp(1i.*k3*pi/16).*a(1,1:25);
figure (4)
stem(k3, x_24)

k4 = [0:1:33];
x_32 = exp(1i.*k4*pi/16).*a;
figure (5)
stem(k4, x_32)
