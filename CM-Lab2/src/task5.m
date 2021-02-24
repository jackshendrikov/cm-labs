f=@(t,a) [a(2);-(a(2)/t)+(a(1)/t^2)+1;];
[t,ya] = ode45(f, [1 40], [3 6]);
plot(t,ya(:,1))
grid on