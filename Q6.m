% clc;
% clear all;
% num = [0 0 0 1 0];
% den = [1 -8 21 -22 8];
% [r,p,k] = residue (num,den)
syms z
Yz = (z/(3*(z-1)^2)) + (4*z/(9*(z-1))) - 0.5*(z/(z-2)) + (z / (18*(z-4)));
yk = (iztrans(Yz))
for k = 0:1:20
    yk = (k/3) - ((2^k)/2) + ((4^k)/18) + 4/9
end