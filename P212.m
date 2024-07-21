%% Initializing
clc;
clear all;
t0 = 0;
q0 = 0;
qf = 45;
sdmax = 2;
sddmaxplus = 6;
sddmaxminus = 8;
tf = 1/sdmax + (1/2) * ((sdmax/sddmaxminus) + (sdmax/sddmaxplus)) + t0
t1 = (sdmax/sddmaxplus) + t0
t2 = tf - sdmax/sddmaxminus
s1 = 0.5 * sddmaxplus *(t1-t0)^2
s2 = sdmax*(t2-t1) + s1

%% S
figure
time1 = t0:0.001:t1;
st1 = 0.5*sddmaxplus*(time1 - t0).^2;
plot([t0:0.001:t1],st1)
title('St vs time');
hold on

time2 = t1:0.001:t2;
st2 = (sdmax.*(time2 - t1)) + s1;
plot([t1:0.001:t2],st2);
hold on

time3= t2:0.001:tf;
st3 = -0.5*sddmaxminus*(time3 - t2).^2 + sdmax.*(time3 - t2) + s2;
plot([t2:0.001:tf],st3);

%%Sdt
sdt1 = sddmaxplus.*(time1 - t0);
figure(2)
plot([t0:0.001:t1],sdt1)
title('Sdt vs time');
hold on
sdt2 = sdmax*time2.^0;
plot([t1:0.001:t2],sdt2);
hold on
sdt3 = sdmax - sddmaxminus.*(time3-t2);
plot([t2:0.001:tf],sdt3);


%% Q
figure(3)
q1 = q0 + (0.5*sddmaxplus*(time1 - t0).^2).*(qf-q0);
plot([t0:0.001:t1],q1)
title('Q vs time');
hold on

q2 = q0 + ((sdmax.*(time2 - t1)) + s1).*(qf-q0);
plot([t1:0.001:t2],q2);
hold on

q3 = q0 + ( -0.5*sddmaxminus*(time3 - t2).^2 + sdmax.*(time3 - t2) + s2).*(qf-q0);
plot([t2:0.001:tf],q3);


