fs = 10000;
t = 0:1/fs:0.055-1/fs;
FREQ1 = 4;
FREQ2 = 36;
AMP1 = 2;
AMP2 = 10;
x1 = AMP1*sin(2*pi*FREQ1*t);
x2 = AMP2*sin(2*pi*FREQ2*t);
x3= x1+x2;
 
partition = [-9.6:1.4:10]; % Length 4, to represent 5 intervals
codebook = [-10:1.4:11]; % Length 5, one entry for each interval
[index,quants] = quantiz(x3,partition,codebook); % Quantize.
figure
plot(t,x3,'x',t,quants,'.')
legend('Original signal','Quantized signal');
title('Quantized Signal');
