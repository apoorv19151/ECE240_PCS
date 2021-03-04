% Apoorv Singh 2019151
% PCS Assignment-3 Problem-2 Part1

fm = 5000; %fm = 5kHz
fc = 500000; %fc = 500kHz
t = 0:1/5000000:100*(1/fc); %Defining the x-axis
v_LSB_t = cos(2*pi*fm*t).*cos(2*pi*fc*t) + sin(2*pi*fm*t).*sin(2*pi*fc*t);
plot(t, v_LSB_t)
ylim([-1.5 1.5]); %Defining the limits on the y-axis
