AMP1=2;
AMP2= 12;
fs=4000;
t = 0:1/fs:1-1/fs;
signal = AMP1*sin(2*pi*1000*t) + AMP2*cos(2*pi*1000*t);
noise= 0.1*randn(size(t));
noisySignal=signal+noise;
SNR=snr ( noisySignal)
bandwidth = obw(signal,fs)
maxCapacity=bandwidth*log2(1+SNR)