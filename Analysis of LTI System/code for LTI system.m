%% 
clc;
clear all;
close all;
N=0:2;
x = cos(N);
h = [3 -1 -2 3 1]
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
subplot(3,1,1)
stem(0:length(x)-1,x);
title('INPuT SIGNAL x(n)');
xlabel('n');
ylabel('x[n]');
grid on;
subplot(3,1,2);
stem(0:length(h)-1,h)
xlabel('n');
ylabel('h[n]');
title('OVERALL IMPULSE RESPONSE');
grid on;
subplot(3,1,3);
stem(0:length(Y)-1,Y);
title('RESPONSE OF LTI SYSTEM');
xlabel('n');
ylabel('Y[n]');
grid on;
dim = [0.2 0.3 0.2 0.3];
str = {'Sahil Tripathi','18070123103'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');

%%
h1=[3 -1 -2 0]
h2=[0 0 0 3 1]
ht=conv(h1,h2);
y=conv(x,ht);
subplot(3,1,1)
stem(0:length(x)-1,x)
title('INPT SIGNAL x(n)');
xlabel('n');
ylabel('x[n]');
grid on;
subplot(3,1,2);
stem(0:length(ht)-1,ht)
title('OVERALL IMPULSE RESPONSE');
xlabel('n');
ylabel('h[n]');
grid on;
subplot(3,1,3);
stem(0:length(y)-1,y)
grid on;
title('RESPONSE OF LTI SYSTEM ');
xlabel('n');
ylabel('Y[n]');
dim = [0.2 0.3 0.2 0.3];
str = {'Sahil Tripathi','18070123103'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');

%%
h3=[3 -1 -2 0 0]
h4=[0 0 0 3 1]
h5=h3+h4;
y1=conv(x,h5);
subplot(3,1,1)
stem(0:length(x)-1,x)
xlabel('n');
ylabel('x(n)');
title('INPUT SEQUENCE');
grid on;
subplot(3,1,2)
stem(0:length(h5)-1,h5)
xlabel('n');
ylabel('h(n)');
title('IMPULSE RESPONSE');
grid on;
subplot(3,1,3)
stem(0:length(y1)-1,y1)
xlabel('n');
ylabel('y(n)');
title('RESPONSE OF LTI SYSTEM');
grid on
dim = [0.2 0.3 0.2 0.3];
str = {'Sahil Tripathi','18070123103'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');
