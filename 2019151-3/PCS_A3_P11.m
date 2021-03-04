% Apoorv Singh 2019151
% PCS Assignment-3 Problem-1 Part1

A = 1; %Amplitude of DSB signal v_DSB(t)
fm = 5000; %fm = 5kHz
fc = 500000; %fc = 500kHz
t = 0:1/5000000:200*(1/fc); %Defining the x-axis
m_t = cos(2*pi*fm*t); %m(t) signal
v_DSB = A*m_t.*cos(2*pi*fc*t); %v_DSB(t) signal
plot(t, v_DSB)
title('Plot of vDSB(t)')
