clc;
clear all;
t0 = 0;
tf = 2;
A = [1 t0 t0^2 t0^3;0 1 2*t0 3*t0^2;1 tf tf^2 tf^3;0 1 2*tf 3*tf^2];
B = [35;0;26.5;0];
a = inv(A)*B

i = 1;
for t = 0:0.01:2
    qt(i) = a(1,1) + a(2,1)*t+ a(3,1)*t^2+a(4,1)*t^3;
    qtdt(i) = a(2,1)+ 2*a(3,1)*t+ 3*a(4,1)*t^2; 
    qtddt(i) = 2*a(3,1)+ 6*a(4,1)*t;
    i = i+1;
end 
figure(1)
    plot([0:0.01:2],qt)
    title('Qt vs time');
figure(2)
    plot([0:0.01:2],qtdt)
    title('Qdt vs time');
figure(3)
    plot([0:0.01:2],qtddt)
    title('Qddt vs time');