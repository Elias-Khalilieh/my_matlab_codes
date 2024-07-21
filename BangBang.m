%%Bang Bang
clc;
clear all;
t0 = 1;
q0 = 30;
qf = 70;
sdmaxstar = 0.3;
sddmaxplus = 3;
sddmaxminus = 2;

sdotstar = sqrt (2*(sddmaxplus*sddmaxminus)/(sddmaxplus+sddmaxminus))
tf = sqrt (2*(sddmaxplus+sddmaxminus)/(sddmaxplus*sddmaxminus)) + t0
tstar = (sdotstar/sddmaxplus) + t0
sstar = 0.5 * sddmaxplus *(tstar - t0)^2

% interval_1 = [t0:0.001:tstar];
% interval_2 = [tstar:0.001:tf];
%%
%st
time1 = t0:0.001:tstar;
st1 = 0.5*sddmaxplus*(time1 - t0).^2;
figure(1)
plot([t0:0.001:tstar],st1)
title('s(t) vs time');
hold on
time2 = tstar:0.001:tf;
st2 = -0.5*sddmaxminus*(time2 - tstar).^2 + sdotstar.*(time2 -tstar) + sstar;
plot([tstar:0.001:tf],st2)

% %sdt
% sdt1 = sddmaxplus.*(time1 - t0);
% figure(2)
% plot([t0:0.001:tstar],sdt1);
% hold on
% sdt2 = sdmaxstar - sddmaxminus.*(time2 - tstar);
% plot([tstar:0.001:tf],sdt2);
% 
% %%sddt
% sddt1 = sddmaxplus*time1.^0;
% figure(3)
% plot([t0:0.001:tstar],sddt1);
% hold on
% sddt2 = -sddmaxminus*time2.^0;
% plot([tstar:0.001:tf],sddt2);

%%
%Qt
qt1 = (0.5*sddmaxplus*(time1 - t0).^2)*(qf-q0) + q0;
figure(4)
plot([t0:0.001:tstar],qt1)
title('q(t) vs time');
hold on
qt2 = ((-0.5*sddmaxminus.*(time2 - tstar).^2) + sdotstar.*(time2 -tstar) + sstar).*(qf-q0) + q0;
plot([tstar:0.001:tf],qt2)

% %qdt
% qdt1 = (sddmaxplus.*(time1 - t0))*(qf-q0);
% figure(5)
% plot([t0:0.001:tstar],qdt1);
% hold on
% qdt2 = (sdmaxstar - sddmaxminus.*(time2 - tstar))*(qf-q0);
% plot([tstar:0.001:tf],qdt2);
% 
% %qddt
% qddt1 = (sddt1)*(qf-q0);
% figure(6)
% plot([t0:0.001:tstar],qddt1);
% hold on
% qddt2 = (sddt2)*(qf-q0);
% plot([tstar:0.001:tf],qddt2);

