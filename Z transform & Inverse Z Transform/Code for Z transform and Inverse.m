clc;
clear all;
close all;
syms n % where n is a symbolic variable
x(n) = ((1/4)^n)*heaviside(n); % heavidide u(n) step signal
a=ztrans(x(n))

%%
x1(n)=(2^(n+1)+ 2^(-n+2))*heaviside(n);
b=ztrans(x1(n))

%%
syms z % definng z for symbolic variable
x(n) = (4*z)/((4*z)-1);
c = iztrans(x(z))

%%
x1(z)=((2*z)/(z+2)) + ((4*z)/(z-0.5));
d =iztrans(x1(z))

%% 
n=[1 0];
d=[1 -0.25 -0.375];
h=tf(n,d,1)
figure(1);
zplane(n,d);
title('Pole-Zero Plot')
figure(2);
impz(n,d);
title('Impulse Response')
figure(3);
freqz(n,d);
title('Frequency Response')
