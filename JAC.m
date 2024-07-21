clc;
syms AT u1 u2 cd A0 g x1 Tc x2 Th 
f1 = (1/AT)*(u1 + u2 - cd*A0*sqrt(2*g*x1));
f2 = (1/(x1*AT))*(u1*(Tc-x2)+u2*(Th-x2));
A = simplify(jacobian([f1,f2],[x1,x2]))
B = simplify(jacobian([f1,f2],[u1,u2]))
pretty (A)
pretty (B)
% u11 = 0.126;
% u22 = 0.029;
% A00 = 0.05;
% cd0 = 0.7;
% g0 = 9.81;
% AT0 = 3 ;
% Tc0 = 10;
% x10 = 1;
% x20 = 75;
% Th0 = 90;
% AA = simplify(subs(A,[u1 u2 A0 cd g AT Tc x1 x2 Th],[u11 u22 A00 cd0 g0 AT0 Tc0 x10 x20 Th0]))
