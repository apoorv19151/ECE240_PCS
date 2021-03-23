% Apoorv Singh 2019151
% PCS Assignment-4 Problem-1 Part1 

Fs = 2000; %samples per second
dt = 1/Fs; %seconds per sample
st = 0.1; %defining stop time in seconds
t = 0:dt:st; %defining time axis

%Waveform to be sampled x_t = cos(2*pi*f*t + pi/3)

f1 = 60; %frequency of the waveform
x1_t = cos(2*pi*f1*t + pi/3); %sampled waveform with f = 60 Hz

f2 = 340;
x2_t = cos(2*pi*f2*t + pi/3);

f3 = 460;
x3_t = cos(2*pi*f3*t + pi/3);

p1 = x1_t-x2_t;
subplot(3,1,1);
stem(t, p1, 'red', 'b.-', 'LineWidth', 1, 'MarkerSize', 15);
title('Plot of x1[n]-x2[n]')

p2 = x1_t-x3_t;
subplot(3,1,2);
stem(t, p2, 'blue', 'b.-', 'LineWidth', 1, 'MarkerSize', 15);
title('Plot of x1[n]-x3[n]')

p3 = x3_t-x2_t;
subplot(3,1,3);
stem(t, p3, 'green', 'b.-', 'LineWidth', 1, 'MarkerSize', 15);
title('Plot of x2[n]-x3[n]')










