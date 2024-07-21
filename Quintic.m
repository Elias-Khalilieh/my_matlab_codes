clc;
clear all;
t0 = 0;
tf = 2;
A = [1 t0 t0^2 t0^3 t0^4 t0^5;0 1 2*t0 3*t0^2 4*t0^3 5*t0^4;0 0 2 6*t0 12*t0^2 20*t0^3;1 tf tf^2 tf^3 tf^4 tf^5;0 1 2*tf 3*tf^2 4*tf^3 5*tf^4;0 0 2 6*tf 12*tf^2 20*tf^3];
B = [35;0;0;26.5;0;0];
a = inv(A)*B

i = 1;
for t = 0:0.01:2
    qt(i) = a(1,1) + a(2,1)*t+ a(3,1)*t^2+a(4,1)*t^3+a(5,1)*t^4+a(6,1)*t^5;
    qtdt(i) = a(2,1)+ 2*a(3,1)*t+ 3*a(4,1)*t^2+ 4*a(5,1)*t^3+ 5*a(6,1)*t^4; 
    qtddt(i) = 2*a(3,1)+ 6*a(4,1)*t+ 12*a(5,1)*t^2+ 20*a(6,1)*t^3;

    i = i+1;
end 
figure(1)
    plot([0:0.01:2],qt)
figure(2)
    plot([0:0.01:2],qtdt)
figure(3)
    plot([0:0.01:2],qtddt)

    
    