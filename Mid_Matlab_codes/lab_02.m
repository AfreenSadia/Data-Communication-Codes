%20-43649-2
A1=63;
A2=26;
t=0:pi/100:2*pi;
x1=A1*cos(2*pi*(4*100)*t);
x2=A2*cos(2*pi*(6*100)*t);
plot(t,x1,'k','linewidth',2);
hold on;
plot(t,x2,'b','linewidth',2);
hold on;
xlabel('time in seconds')
ylabel('Amplitude in volts')
title('Signals of different Frequencies')

A1=63;
A2=26;
t=-2*pi:pi/20:2*pi-pi/20;
x1=A1*cos(2*pi*(4*100)*t);
x2=A2*cos(2*pi*(6*100)*t);
x3=x1+x2;
plot(t,x3,'b','linewidth',1.5);
hold on;
xlabel('time in seconds')
ylabel('Amplitude in volts')


fs = 1000;
t = 0:1/fs:1-1/fs;
f1 = 300;
f2 = 100;
A1 = 63;
A2 = 26;
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);
x3= x1+x2;
fx3 = fft(x3);
fx3 = fftshift(fx3)/(fs/2);
f = fs/2*linspace(-1,1,fs);
figure;
plot(f,abs(fx3),'LineWidth',1.5);
title('magnitude FFT of sine');
axis([-500 500 0 90])
xlabel('Frequency (Hz)');
ylabel('magnitude');
bandwidth = obw(x3,fs)

fs = 10000;
t = 0:1/fs:1-1/fs;
f = 10; % Times at which to sample the sine function
sig = 2*sin(2*pi*f*t); % Original signal, a sine wave
partition = [-1.5, -0.5, 0.5, 1.5]; % Length 4, to represent 5 intervals
codebook = [-2:2]; 
[index,quants] = quantiz(sig,partition,codebook); % Quantize.
figure
plot(t,sig,'x',t,quants,'.')
legend('Original signal','Quantized signal');


