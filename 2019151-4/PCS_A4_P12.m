% Apoorv Singh 2019151
% PCS Assignment-4 Problem-1 Part2

Fs = 50; %samples per second
dt = 1/Fs; %seconds per sample
st = 3; %defining stop time
n = 0:dt:st; %defining the x-axis

x1_n = 5*cos(7.3*pi*n + pi/4);
x2_n = 5*cos(0.7*pi*n + pi/4);
x3_n = 5*cos(0.7*pi*n - pi/4);

p1 = x1_n-x2_n;
subplot(3,1,1);
stem(n, p1, 'red', 'b.-', 'LineWidth', 1, 'MarkerSize', 15);
title('Plot of x1[n]-x2[n]')

p2 = x1_n-x3_n;
subplot(3,1,2);
stem(n, p2, 'blue', 'b.-', 'LineWidth', 1, 'MarkerSize', 15);
title('Plot of x1[n]-x3[n]')

p3 = x3_n-x2_n;
subplot(3,1,3);
stem(n, p3, 'green', 'b.-', 'LineWidth', 1, 'MarkerSize', 15);
title('Plot of x2[n]-x3[n]')



