%Question 1 of Assignment 1
%1b for difference equation x(n) = y(n) - y(n-1) + y(n+2)

n = [-5:1:60];

figure(1)
x = [1 0 0]; %x(n)
y = [1 -1 1]; %y(n) - y(n-1) + y(n+2)
h = impz(x, y, n); %Impulse function for h(n)
stem(h);
xlabel('n'); 
ylabel('h_a(n)');
title('Question 1b');

%1c for filter response
figure (2)
h_a = filter(x,y, h); %h_a(n)
stem(n,h_a);
xlabel('n');
ylabel('h_a(n)');
title('Question 1c');

%1e Changing x(n) = cos(2pi*n/6)u(n)
figure(3)
x(1:66,1) = cos((2*pi*n)/6);
x(1:66,2) = [zeros(1,5) ones(1,61)]; %u(n)
x(1:66,3) = x(:,1).*x(:,2); %x(n) = cos(2pin/6)*u(n)
for i = 1:60
    stem(n, x(1:66,3),"filled",'k');
    xlabel('n');
    ylabel('x(n)');
    title('Question 1e');
end

k = impz(x(1:66,3),y,n); %y(n) = x(n)*h_a(n)
figure(4) 
subplot(1,1,1)
plot(n, x(1:66,3), n, k);
xlabel('n');
legend('x(n)','y(n)');
title("Question 1e.ii");