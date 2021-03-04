% Apoorv Singh 2019151
% PCS Assignment-3 Problem-2 Part2

A = 1;
Ac = 0.5;
fm = 5000; %fm = 5kHz
fc = 500000; %fc = 500kHz
t = 0:1/5000000:200*(1/fc); %Defining the x-axis
v_LSB_t = cos(2*pi*fm*t).*cos(2*pi*fc*t) + sin(2*pi*fm*t).*sin(2*pi*fc*t);
v_LSB_AM = Ac*cos(2*pi*fc*t)+A*v_LSB_t; %v_LSB_AM signal
subplot(3,1,1)
plot(t, v_LSB_AM, 'b')
title('Plot for Ac = 0.5')
Ac = 1; %Plotting v_LSB_AM for different values of Ac
v_LSB_AM = Ac*cos(2*pi*fc*t)+A*v_LSB_t;
subplot(3,1,2);
plot(t, v_LSB_AM, 'r')
title('Plot for Ac = 1');
Ac = 2;
v_LSB_AM = Ac*cos(2*pi*fc*t)+A*v_LSB_t;
subplot(3,1,3);
plot(t, v_LSB_AM, 'g')
title('Plot for Ac = 2');

% Envelope of the transmit signal will follow the message signal when
% A/Ac <= 1. So for Ac = 1,2 envelope of the transmit signal will 
% follow the message signal.