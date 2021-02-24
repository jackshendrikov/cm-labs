syms x;
f = 4*x*(1-x);
y = diff(f);
k = vpa(subs(y, x, 0)) / 2;
 
xi = 0.1;
xn = [];
xnn = [];
j = 0;

while (j < 1000)
    xn = [xn, xi];
    xnn = [xnn, 4*xi*(1-xi)];
    j = j + 1;
    xi = 4*xi*(1-xi);
end

plot(xn, k*xn, 'g');
hold on;
plot(xn, xnn, 'b.');

x0 = 0.05;
y0 = 0;

for i = 0:1:20
    y1 = 4*x0*(1-x0);
    tempx = [];
    tempy = [];
    
    if y0 < y1
        for j = y0:0.001:y1
            tempx = [tempx, x0];
            tempy = [tempy, j];
        end
    else
        for j = y1:0.001:y0
            tempx = [tempx, x0];
            tempy = [tempy, j];
        end
    end
    
    plot(tempx, tempy, 'r');
    y0 = y1;
    
    x1 = y1/k;
    tempx = [];
    tempy = [];
    
    if x0 < x1     
        for l = x0:0.001:x1
            tempx = [tempx, l];
            tempy = [tempy, y0];
        end
    else
        for l = x1:0.001:x0
            tempx = [tempx, l];
            tempy = [tempy, y0];
        end
    end
    
    plot(tempx, tempy, 'r');
    x0 = x1;
end
hold off;
