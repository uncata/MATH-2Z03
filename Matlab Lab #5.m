%Problem #1:
f = @(t,x) [10*(x(2) - x(1)); x(1)*(28 - x(3)) - x(2); x(1)*x(2) - (8/3)*x(3)];
tDomain = [0:.01:20];
x0 = [10;10;23];

[t,x] = ode45(f,tDomain,x0);

plot3(x(:,1),x(:,2),x(:,3))
title('Saon Pal, 400131159')
xlabel('x');
ylabel('y');
zlabel('z');
grid on

plot(t,x(:,2))
title('Saon Pal, 400131159')
xlabel('t')
ylabel('x')
grid on

plot(t,x(:,2),'-.r', t,x(:,3),'b')
title('Saon Pal, 400131159');
legend('y', 'z');
xlabel('t');
ylabel('y and z');
grid on

%Problem #2:
f = @(t,x) [10*(x(2) - x(1)); x(1)*(28 - x(3)) - x(2); x(1)*x(2) - (8/3)*x(3)];
tDomain = [0:.01:20];
x0 = [10;10;23]; 
[t x1] = ode45(@spiralSink,tDomain,x0);
xb = [10 + 0.01 ;10 + 0.01 ;23 + 0.01];          
[t x2] = ode45(@spiralSink,tDomain,xb);
a = size(tDomain);

for n = 1:a(2)
    distance(n) = sqrt(sum((x1(n,:) -x2(n,:)).^2));
end

for n = 1:a(2)
    if distance(n) > 20                     
        row = n;
        break
    end
end

disp(row);                                
disp(tDomain(row));

%Problem #3:
tDomain = [0:.01:20];

plot(tDomain,distance)               
title('Saon Pal, 400131159')
xlabel('t')
ylabel('distance')
                                                                
plot3(x1(row-200:row+200,1),x1(row-200:row+200,2),x1(row-200:row+200,3),x2(row-200:row+200,1),x2(row-200:row+200,2),x2(row-200:row+200,3),'r')
title('Saon Pal, 400131159')
grid on

function yPrime = spiralSink(t,x)
  yPrime = [10*(x(2)-x(1)); x(1)*(28-x(3))-x(2); x(1)*x(2)-(8/3)*x(3)];
end