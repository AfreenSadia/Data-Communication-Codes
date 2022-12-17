A1=20;
A2=26;
s=22;
fs=4000;
t = 0:1/fs:1-1/fs;
C=4;
G=6;
signal = A1*sin(2*pi*(C*100)*t) + A2*cos(2*pi*(G*100)*t);
noise= s*randn(size(t));
noisySignal=signal+noise;
SNR=snr(noisySignal)

A1=20;
A2=26;
s=22;
fs=4000;
t = 0:1/fs:1-1/fs;
C=4;
G=6;
signal = A1*sin(2*pi*(C*100)*t) + A2*cos(2*pi*(G*100)*t);
noise= s*randn(size(t));
noisySignal=signal+noise;
SNR=snr ( noisySignal)
bandwidth = obw(signal,fs)
capacity=bandwidth*log2(1+SNR)


A1=20;
A2=26;
s=22;
fs=4000;
t = 0:1/fs:1-1/fs;
C=4;
G=6;
signal = A1*sin(2*pi*(C*100)*t) +A2*cos(2*pi*(G*100)*t);
noise= s*randn(size(t));
noisySignal=signal+noise;
SNR=snr ( noisySignal )
bandwidth = obw(signal,fs)
capacity=bandwidth*log2(1+SNR);
apdr=floor(bandwidth*log2(1+SNR));
level=floor(2^( apdr/(2*bandwidth)))

