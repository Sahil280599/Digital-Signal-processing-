clc;
clear all;
t=0:0.0001:0.06
x1=cos(2*pi*50*t)+cos(2*pi*100*t)+cos(2*pi*150*t);
subplot(2,2,1)
plot(t,x1);
xlabel('t');
ylabel('x(t)');
title('Original CT signal');

fn=150;
fs1= 1.5*fn;
fs2=2*fn;
fs3=5*fn;

n1=0:1:27;
xn1= cos(2*pi*50*(n1/fs1))+cos(2*pi*100*(n1/fs1))+cos(2*pi*150*(n1/fs1));
subplot(2,2,2)
stem(n1,xn1);
hold on;
plot(n1,xn1,'r')
xlabel('n1');
ylabel('xn1');
title('DT signal for fs<2fn');

n2=0:1:18;
xn2= cos(2*pi*50*(n2/fs2))+cos(2*pi*100*(n2/fs2))+cos(2*pi*150*(n2/fs2));
subplot(2,2,3)
stem(n2,xn2);
hold on;
plot(n2,xn2,'g')
xlabel('n2');
ylabel('xn2');
title('DT signal for fs=2fn');

n3=0:1:45;
xn3= cos(2*pi*50*(n3/fs3))+cos(2*pi*100*(n3/fs3))+cos(2*pi*150*(n3/fs3));
subplot(2,2,4)
%stem(n3,xn3);
%hold on;
plot(n3,xn3,'y')
xlabel('n3');
ylabel('xn3');
title('DT signal for fs<2fn');
