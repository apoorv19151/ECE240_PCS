% Apoorv Singh 2019151
% PCS Assignment-3 Problem-1 Part2

A = 1; 
Ac = 2; 
fm = 5000;
fc = 500000;
t = 0:1/5000000:200*(1/fc); %Defining the x-axis
m_t = cos(2*pi*fm*t); %Defining m(t) signal
v_DSB_AM = Ac*cos(2*pi*fc*t)+A*m_t.*cos(2*pi*fc*t); %v_DSB_AM signal
subplot(3,1,1); %subplot used for adding multiple plots on same window
plot(t, v_DSB_AM, 'b')
title('Plot for Ac = 2')
Ac = 1; %plotting v_DSB_AM for different values of Ac.
v_DSB_AM = Ac*cos(2*pi*fc*t)+A*m_t.*cos(2*pi*fc*t);
subplot(3,1,2);
plot(t, v_DSB_AM, 'g')
title('Plot for Ac = 1')
Ac = 0.5;
v_DSB_AM = Ac*cos(2*pi*fc*t)+A*m_t.*cos(2*pi*fc*t);
subplot(3,1,3);
plot(t, v_DSB_AM, 'r')
title('Plot for Ac = 0.5')

% Envelope of the transmit signal will follow the message signal when
% A/Ac <= 1. So for Ac = 1,2 envelope of the transmit signal will 
% follow the message signal.

