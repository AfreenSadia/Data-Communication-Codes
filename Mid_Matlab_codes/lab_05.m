A1=20;
A2=62;
j1=36*(pi/180);
j2=66*(pi/180);
t=0:pi/100:2*pi;
x1=A1*cos((2*pi*4366*t)+j1);
plot(t,x1,'r','linewidth',2);
hold on;
x2=A2*cos((2*pi*4366*t)+j2);
plot(t,x2,'b','linewidth',2);
hold on;
title('Plotting a graph');
xlabel('time');
ylabel("amp");

A1=20;
A2=62;
j1=36*(pi/180);
j2=66*(pi/180);
t= -2*pi:pi/20:2*pi-pi/20;
x1=A1*cos((2*pi*4366*t)+j1);
x2=A2*cos((2*pi*4366*t)+j2);
plot(t,x1,t,x2)
title('b')
xlabel('time(sec)')
ylabel('Amplitude')


A1=20;
A2=63;
j1=36*(pi/180);
j2=66*(pi/180);
t=-2*pi:pi/40:2*pi-pi/40;
x1=A1*cos((2*pi*4366*t)+j1);
x2=A2*cos((2*pi*4366*t)+j2);
subplot(3,1,1)
plot(t,x1,'b')
xlabel('time (sec)')
ylabel('Amplitude')
title('x1(t)')
subplot(3,1,2)
plot(t,x2,'r')
xlabel('time (sec)')
ylabel('Amplitude')
title('x2(t)')

A1=20;
A2=63;
j1=36*(pi/180);
j2=66*(pi/180);
t=-2*pi:pi/40:2*pi-pi/40;
x1=A1*cos((2*pi*4366*t)+j1);
x2=A2*cos((2*pi*4366*t)+j2);
x3=x1+x2;
subplot(3,1,1)
plot(t,x1,'b')
xlabel('time (sec)')
ylabel('Amplitude')
title('x2(t)')
subplot(3,1,2)
title('x1(t)')
subplot(3,1,2)
plot(t,x2,'r')
xlabel('time (sec)')
ylabel('Amplitude')
title('x2(t)')
subplot(3,1,3)
plot(t,x3,'g')
ylabel('Amplitude')
xlabel('time (sec)')
ylabel('Amplitude')
title('x3(t)=x1(t)+x2(t)')
