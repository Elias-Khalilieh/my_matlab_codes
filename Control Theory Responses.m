clc ;
close all;
num = [10] ;
den = [1 2 10];
G = tf (num,den);
s = tf('s');
figure
step(G);
hold on
figure
step(G / s);
figure
impulse(G);
