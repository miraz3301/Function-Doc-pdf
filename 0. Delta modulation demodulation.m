clc;
clear;
close all;
fs = 50;
fm = 2;
t = 0:1/fs:1; 
x = 5*sin(2*pi*fm*t);
y = zeros(1,length(x));
xr = zeros(1,length(x));
del = 1;
for i = 1:length(x)-1
    if xr(i) <= x(i)
        y(i+1) = 1;
        xr(i+1) = xr(i) + del;
    else
        y(i+1) = 0;
        xr(i+1) = xr(i) - del;
    end
end

figure
subplot(3,1,1)
plot(t,x)
title('Original Signal')
grid on
subplot(3,1,2)
plot(t,x,'--')
hold on
stairs(t,xr)
title('Staircase Approximation')
legend('Original','Staircase')
grid on
subplot(3,1,3)
stairs(t,y)
title('Binary Signal')
ylim([-0.2 1.2])
grid on
sgtitle('Delta Modulation')
MSE = mean((x-xr).^2);
disp('Mean Squared Error:')
disp(MSE)


y_demod = zeros(1,length(y));
for i = 2:length(y)
    if y(i) == 1
        y_demod(i) = y_demod(i-1) + del;
    else
        y_demod(i) = y_demod(i-1) - del;
    end
end
filter_order = 20;
lowpass_filter = fir1(filter_order,fm/(fs/2),'low');
filtered_demod_signal = filter(lowpass_filter,1,y_demod);
figure
subplot(2,1,1)
stairs(t,y)
title('Received Binary Signal')
ylim([-0.2 1.2])
grid on
subplot(2,1,2)
plot(t,y_demod)
hold on
plot(t,filtered_demod_signal)
plot(t,x,'--')
title('Demodulated Signal')
legend('Before Filter','After Filter','Original')
grid on
sgtitle('Delta Demodulation')
