f1=@(t,a) [(a(2)-a(1))*t; (a(2)+a(1))*t;];   
[t,xa] = ode45(f1, [0 1], [1 1]);
plot(t,xa(:,2))
hold on

f2=@(t,a) [(a(1)+a(2))*t; (a(1)-a(2))*t;];
[t,xa] = ode45(f2, [0 1], [1 1]);
plot(t,xa(:,2))
grid on