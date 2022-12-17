a1 = 02;
a2 = 12;
f1 = 66;
f2 = 04;
P1 = 0;
P2 = 30*pi/180;
T1 = 1/f1;
T2 = 1/f2;
t1 = linspace(0,2*T1,1000);
t2 = linspace(0,2*T2,1000);
x1 = a1*sin(2*pi*f1*t1+P1);
x2 = a2*sin(2*pi*f2*t2+P2);
plot(t1,x1);
hold on
plot(t2,x2);
xlabel("t");
title("Input Signals");
quatization_levels1 = linspace(-a1,a1,16);
quatization_levels2 = linspace(-a2,a2,16);
quatised_x1 = zeros(1,length(x1));
quatised_x2 = zeros(1,length(x2));
for i = 1:length(x1)
[~,index] = min(abs(quatization_levels1-x1(i)));
quatised_x1(i) = quatization_levels1(index);
end
for i = 1:length(x2)
[~,index] = min(abs(quatization_levels2-x2(i)));
quatised_x2(i) = quatization_levels2(index);
end
figure;
plot(t1,quatised_x1);
hold on
plot(t2,quatised_x2);
xlabel("t");
title("Quantized Signals");

