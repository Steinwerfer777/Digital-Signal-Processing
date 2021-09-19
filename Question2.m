%Question 2

n = [-5:1:60];

z = [1 0 0]; %Old Difference Equation Output
y = [1 -1 1]; %Old Difference Equation Input
h = impz(z,y,n); %h_a
y3 = [1 0 0 0 0]; % New Difference equation output
x3 = [1 1 0 -1 -1]; %New Difference equation input
h1 = [x3, y3, n]; %Impulse for new difference equation


x(1:66,1) = [zeros(1,10) ones(1,56)];%u(n-5)
x(1:66,2) = [zeros(1,5) ones(1,61)]; %u(n)
x(1:66,3) = x(1:66,2) - x(1:66,1); %u(n)-u(n-5)
x(1:66,4) = h.*x(1:66,3); %h_b
x(1:66,5) = cos((2*pi*n)/6).*[zeros(1,5) ones(1,61)];% cos(2pin/6)*u(n)
x(1:66,6) = x(1:66,5).*x(1:66,4); %x(n)*h_b
x(1:66,7) = h1(:,1:66).*([zeros(1,5) ones(1,61)]-[zeros(1,10) ones(1,56)]); %new transfer equation*[u(n)-u(n-5)]
x(1:66,8) = x(1:66,5).*x(1:66,7); %x(n)*new transfer*[u(n)-u(n-5)]

%Part a

figure (1) 
stem(n,x(:,4),'filled');
xlabel('n');
ylabel('h_b(n)');
title("Question 2a");

%Part c

figure(2)
subplot(1,1,1)
plot(n,x(:,5),n,x(:,8));
xlabel('n');
title('Question 2c')
legend('x(n)','y(n)');

%Part e: 
i = [1:1:60]; %limit all values between 0 and 60
y2 = [1 0 0 0 0];
y1 = [1 1 0 -1 -1]; %Difference equation coefficients
b = impz(y2, y1,i);%New impulse function

w(1:60,1) = ones(1,60); %u(n)
w(1:60,2) = [zeros(1,5) ones(1,55)]; %u(n-5)
w(1:60,3) = w(1:60,1) - w(1:60,2); %u(n)-u(n-5)
w(1:60,4) = b.*w(1:60,3); %h_b
w(1:60,5) = cos(pi*i/3).*ones(1,60); %x(n)

c = conv(w(1:60,5),w(1:60,4), 'same'); %convolved response

figure(3)
stem(i, w(1:60,4));

figure(4)
subplot(1,1,1)
plot(i,w(1:60,5),i,c);
xlabel('n');
title('Question e');
legend('x(n)','y(n)');