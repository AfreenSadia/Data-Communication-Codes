close all;
clc;
fs = 8000; % Sampling frequency
f = 400; 
t = 0:1/fs:1-1/fs;
A1=63;
A2=26;
s = 22;
C=4;
G=6;
x = 63*sin(2*pi*(4*100)*t) +26*cos(2*pi*(6*100)*t);
SNR = snr(x)
bandwidth = obw(x,fs)
Capacity = bandwidth*log2(1+SNR) 
z= round(Capacity/(2*bandwidth));
Level = 2*z;