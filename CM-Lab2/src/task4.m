f1=@(t,a) [exp(-(t^2+a(2)^2))+2*t; 2*a(1)^2+a(2);];  
[t,xa] = ode45(f1, [0 0.3], [0.5 1]);
plot(t,xa(:,2))
hold on

f2=@(t,a) [2*a(2)^2+a(1); exp(-(t^2+a(1)^2))+2*t;];
[t,xa] = ode45(f2, [0 0.3], [1 0.5]);
plot(t,xa(:,2))
grid on