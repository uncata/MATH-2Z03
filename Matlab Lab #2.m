% Problem #1
[x y] = meshgrid(-5:0.2:5,-5:0.2:5);

a = ones(size(x));
b = x.*(exp(-x.^2/10) + y - 3/2).*sin(x.^2/10 + 7);

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

quiver(x,y,ascaled,bscaled)
axis equal;
title('Direction Field Example for y'' = x*(exp(-x^2/10) + y - 3/2)*sin(x^2/10 + 7)');
xlabel('x');
ylabel('y');

% Problem #2
[x y] = meshgrid(-4:0.1:4,-4:0.1:4);

b = (sin(3.*x.*y))./(x.^2 + y.^2 +4.*x -4.*y + 9);

mMax=0;
[Nx ,Ny] = size(b);

for i = 1:Nx 
    for j = 1:Ny
        if b(i,j)> mMax
            mMax = b(i,j);
            xindex = i;
            yindex = j;
        end
    end
end 
for k = 1:Nx
    for l = 1:Ny
        if (b(k,l)==mMax) && (k~=xindex) && (l~=yindex)
        end
    end
end
Check = max(b);

if Check ~= mMax
    disp('checkcode')
else
    xvalue = x(xindex,yindex);
    yvalue = y(xindex,yindex);
    disp([num2str(xvalue),',', num2str(yvalue)])
end

% Problem #4
[x y] = meshgrid(-2:0.2:2,0:0.2:4);

a = ones(size(x));
b = (1/5).*y - (1./exp(x));

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

xExact = -2:0.005:2; 
yExact = exp(-xExact)/6.*(7.*exp((6.*xExact)/5) + 5);

quiver(x,y,ascaled,bscaled)
hold on; 
plot(xExact,yExact,'LineWidth',2,'color','r');
hold off;
ylim([0 4]);
xlim([-2 2]);
title('Saon Pal, 400131159');
xlabel('x');
ylabel('y');