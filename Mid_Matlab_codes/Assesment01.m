fs = 1000;
t = 0:1/fs:1-1/fs;
FREQ1 = 4;
FREQ2 = 66;
AMP1 = 2;
AMP2 = 12;
x1 = AMP1*sin(2*pi*FREQ1*t);
x2 = AMP2*sin(2*pi*FREQ2*t);
x3= x1+x2;
subplot(3,1,1)
plot(t,x3,'b','linewidth',1.5);
xlabel('time in seconds')
ylabel('Amplitude in volts')
title('Composite Signal');
subplot(3,1,2)
fx3 = fft(x3);
fx3 = fftshift(fx3)/(fs/2);
f = fs/2*linspace(-1,1,fs);
plot(f,abs(fx3),'LineWidth',1.5);
axis([-500 500 0 15])
xlabel('Frequency (Hz)');
ylabel('magnitude');
