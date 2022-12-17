fs=8000;
f=400;
t=0:1/fs:1-1/fs;
AMP1=2;
powfund=AMP1^2/2;
AMP2=12;
powharm = AMP2^2/2;
S1=0.25;
S2=0.5;
FREQ1=04; FREQ2=66;
x1 = AMP1*cos(2*pi*FREQ1*t) + AMP2*sin(2*pi*FREQ2*t) + S1*randn(size(t));
THD1 = thd(x1)
BW1=obw(x1,fs)
Capacity1=BW1*log2(1+THD1)
x2 = AMP1*cos(2*pi*FREQ1*t) + AMP2*sin(2*pi*FREQ2*t) + S2*randn(size(t));
THD2 = thd(x2)
BW2=obw(x2,fs)
Capacity2=BW2*log2(1+THD2)

