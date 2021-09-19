%Question 3

figure (1)
plot(xn);

n = [1:1:500];
x2 = ones(5,1)/5;
x3 = ones(14,1)/14;
x4 = ones(23,1)/23;
x5 = ones(32,1)/32;
x6 = ones(41,1)/41;
x7 = ones(50,1)/50;
%Using filter function based on average means above.
y2 = filter(x2,1,xn);
y3 = filter(x3,1,xn);
y4 = filter(x4,1,xn);
y5 = filter(x5,1,xn);
y6 = filter(x6,1,xn);
y7 = filter(x7,1,xn);

%Using squarewave form with comparison to N = 50

figure(2)
subplot(1,1,1);
plot(n,xn,n,y7);
xlabel('n');
ylabel('y(n)');
title("Question 3");
legend("xn","N=50")

%Comparison for the other signals from varying N with each other

figure (3)
subplot(1,1,1);
plot(n, y2, n,y3,n,y4,n,y5,n,y6);
xlabel('n');
ylabel("y(n)");
legend("5","14","23","32","41");
title("Question 3.ii");
