clc
clear all;
close all;
x=[1 1 1 1]; % for unit step signal
n=0:3; % 0<_n<_3
a1=[1]
b1=[0.5 1 2];
y1=filter(b1,a1,x)
figure
stem(n,y1)
xlabel('x')
ylabel('y1')
title('y[n] = 0.5x[n]+x[n-1]+2x[n-2]')
axis([-1 4 0 7])
grid on
dim = [.2 .5 .3 .3];
str = 'Sahil Tripathi 18070123103';
annotation('textbox',dim,'String',str,'FitBoxToText','on');

%%
a2 = [1 -0.8];
b2 = [2];
y2 = filter(b2,a2,x)
figure
stem(n,y2)
xlabel('x');
ylabel('y2');
title('[n] = 0.8y[n-1]+2x[n]')
axis([-1 4 0 7])
grid on
dim = [.2 .5 .3 .3];
str = 'Sahil Tripathi 18070123103';
annotation('textbox',dim,'String',str,'FitBoxToText','on');

%%
a3 = [1 -0.8];
b3 = [0 2];
y3 = filter(b3,a3,x)
figure
stem(n,y3)
xlabel('x');
ylabel('y3');
title('Y[n]-0.8y[n-1]=2x[n-1]')
axis([-1 4 0 7])
grid on
dim = [.2 .5 .3 .3];
str = 'Sahil Tripathi 18070123103';
annotation('textbox',dim,'String',str,'FitBoxToText','on');
