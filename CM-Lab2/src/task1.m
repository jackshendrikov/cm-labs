f1=@(t,a) [a(2)/t; ((2*a(2)^2)/(t*(a(1)-1))) + a(2)/t];
[t,xa] = ode45(f1, [1 2], [0 1/3]);
plot(t,xa(:,2))
hold on

f2=@(t,a) [((2*a(1)^2)/(t*(a(2)-1))) + a(1)/t; a(1)/t];
[t,xb] = ode45(f2, [1 2], [1/3 0]);
plot(t,xb(:,2))
grid on