A1=63;
A2=26;
fs=80000;
t=0:1/fs:0.005;
x1=63*cos(2*pi*(436*100)*t);
x=3.2;
n=4;
L=(2^n)-1;
delta= (max(x1)-min(x1))/L;
xq=min(x1)+(round((x1-min(x1))/delta)).*delta;
subplot(3,1,1)
plot(t,x1,'r');
subplot(3,1,2);
stem(t,x1,'p');
xlabel('time(s)')
ylabel('X[n]')
subplot(3,1,3);
stairs(t,xq,'b');
title('Quantized Signal')
xlabel('time')
ylabel('amplitude')
