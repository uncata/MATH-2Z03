%Problem #1(a):

h = 0.4;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(7*x(n) + y(n));
end

disp(y(N+1));

%Problem #1(b):

h = 0.1;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(7*x(n) + y(n));
end

disp(y(N+1));

%Problem #3:

h = 0.4;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(7*x(n) + y(n));
end

x2 = x;
y2 = y;

h = 0.2;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(7*x(n) + y(n));
end

x1 = x;
y1 = y;

h = 0.1;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(7*x(n) + y(n));
end

yExact = -7*x - 7 + 15*exp(x);

plot(x,yExact,'r',x,y,'b',x1,y1,'g',x2,y2,'k');
title('Saon Pal, 400131159');
legend('exact solution','h=0.1','h=0.2','h=0.4',...
       'Location','NorthWest');
xlabel('x'); ylabel('y');

%Problem #4(a):

h = .01;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(7*x(n) + y(n));
end

yExact = -7*x - 7 + 15*exp(x);

error = abs(y-yExact);

max(error)

%Problem #4(b):

h = .001;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(7*x(n) + y(n));
end

yExact = -7*x - 7 + 15*exp(x);

error = abs(y-yExact);

max(error)

%Problem #4(c):

N = 200;

while true
    N = N+1;
    h = 2/N;
    x = zeros(1,N+1); y = zeros(1,N+1);
    x(1) = 0; y(1) = 8;
    
    for i = 1:N
        x(i+1) = x(i) + h;
        y(i+1) = y(i) + h*(7*x(i)+y(i));
    end
    
    yExact = -7 - 7*x +15*exp(x);
    
    error = abs(y(N+1)-yExact(N+1));
    
    if error < 0.5
        break
    end
end

disp(N)