%Problem #1:
A = [-0.47 -8.3; 4.6 -0.53]
[P D] = eig(A)

first_eigenvalue = D(1,1)
real_part = real(D(1,1));
imaginary_part = imag(D(1,1));

B1 = real(P(:,1)); B2 = imag(P(:,1))
X_0 = [1; 12]
c = [B1,B2]\X_0 

%Problem #2:
t=0:0.01:10;

a = -0.5000; b = 6.1789

c1= 1.2467; c2= -20.0896

B1_1= 0.8021; B1_2= 0.0029

B21= 0; B22= -0.5971

X1(1)= 1; X2(1)= 12

X1= c1*exp(a*t).*(B1_1*cos(b*t) - B21*sin(b*t)) + c2*exp(a*t).*(B21*cos(b*t)+B1_1*sin(b*t));
X2= c1*exp(a*t).*(B1_2*cos(b*t) - B22*sin(b*t)) + c2*exp(a*t).*(B22*cos(b*t)+B1_2*sin(b*t));

plot(X1,X2,'b');
title('Saon Pal, 400131159'); 
xlabel('x1');
ylabel('x2');

%Problem #3:
A = [ 12.1 -2.7; 5.2 -3.0];
[P D] = eig(A);

diag(D)

first_eigenvector = P(:,1); second_eigenvector = P(:,2)
X_0 = [1;4.1];         

[first_eigenvector, second_eigenvector]\X_0

%Problem #4:
A = [12.1 -2.7; 5.2 -3.0];
[P D] = eig(A);

eigenvalues = diag(D)                        

first_eigenvector = P(:,1); second_eigenvector = P(:,2)

X_0 = [1;4.1];               

c = [first_eigenvector,second_eigenvector]\X_0 

t=0:0.001:0.3;              

x1=c(1)*first_eigenvector(1)*exp(eigenvalues(1)*t) + c(2)*second_eigenvector(1)*exp(eigenvalues(2)*t);
x2=c(1)*first_eigenvector(2)*exp(eigenvalues(1)*t) + c(2)*second_eigenvector(2)*exp(eigenvalues(2)*t);

a=9;                        
b=5;

quiver(0,0,a*P(1,1),a*P(2,1), 'b')
hold on
quiver(0,0,b*P(1,2),b*P(2,2),'b')
plot(x1,x2,'b');
axis equal;
title('Saon Pal, 400131159');
hold off