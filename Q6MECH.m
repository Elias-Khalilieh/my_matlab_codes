clc;
syms s k c L m 
A = [0 1 0 0;(-4.6875*k)/m (-3*c)/(8*m*L) (6*k)/(8*m*L) (3*c)/(8*m*L);0 0 0 1;(k*L)/(4*m) (c*L)/(8*m) -k/m -c/(2*m)]
B = [0 0;(3/(2*m*L^2)) 0;0 0;0 (1/(2*m))]
C = [1 0 0 0]
sia = ((s*eye(4)) - A)
isia = inv (sia)

csia = C * isia
csiab = csia * B
pretty(csiab)