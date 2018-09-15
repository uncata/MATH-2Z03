:
%Problem #1(a):
h = .001;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

f = @(x,y) 7*x+y;

for i = 1:N 
  c1 = f(x(i),y(i));
  p  = y(i) + h*c1;
  x(i+1) = x(i) + h;
  c2 = f(x(i+1),p);
  y(i+1) = y(i) + h*(c1 + c2)/2;
end

disp(y(1,length(y)));

%Problem #1(b):
h = .01;
X = 2;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 8; 

f = @(x,y) 7*x+y;

for i = 1:N 
  c1 = f(x(i),y(i));
  p  = y(i) + h*c1;
  x(i+1) = x(i) + h;
  c2 = f(x(i+1),p);
  y(i+1) = y(i) + h*(c1 + c2)/2;
end

yExact = -7*x - 7 + 15*exp(x);

error = abs(y-yExact);

max(error)

%Problem #2:
Harvest = @(t) (26)*(1/2)*((nthroot(sin(((2*pi*t)/12)),15)) + 1);

I_o = 0; I_f = 36; 
h = 0.005;
x = I_o:h:I_f;
num = (I_f-I_o)/h;
y = zeros(1,num+1);

for i = 1:num
    y(i)= Harvest(x(i));
end

plot(x,y,'b'); 
ylim([0,26]); xlim([0,36]);
title('Saon Pal, 400131159'); 
xlabel('t'); ylabel('Harvest');

%Problem #3:
h = 0.1;
X = 36;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1); 
x(1) = 0; y(1) = 80;
k = 0.013; Pc = 100;

f = @(t,P) ((k*P)*(Pc - P)) - ((26)*(1/2)*((nthroot(sin(((2*pi)/12)*t),15)) + 1));

for i = 1:N 
  c1 = f(x(i),y(i));
  p  = y(i) + h*c1;
  x(i+1) = x(i) + h;
  c2 = f(x(i+1),p);
  y(i+1) = y(i) + h*(c1 + c2)/2;
  if y(i+1)<0
      y(i+1)=0;
  end
end

plot(x,y,'b'); 
xlim([0,36]);
title('Saon Pal, 400131159'); 
xlabel('t'); ylabel('P');

%Problem #4:
h = 0.1;
k = 0.013; Pc = 100;

a = 1; b = 100;

while b-a > 0.5
H = (a+b)/2;
    
    f = @(t,P) ((k*P)*(Pc - P)) - ((H)*(1/2)*((nthroot(sin(((2*pi)/12)*t),15)) + 1));
    
    for i = 1:N 
      c1 = f(x(i),y(i));
      p  = y(i) + h*c1;
      x(i+1) = x(i) + h;
      c2 = f(x(i+1),p);
      y(i+1) = y(i) + h*(c1 + c2)/2;
      if y(i+1)<0
          y(i+1)=0;
      end
    end
    
    fin = y(length(y));
    
if fin==0
    b = H;
else
    a = H;
end
end

disp(['The root is between ' num2str(a) ' and ' num2str(b) '.'])