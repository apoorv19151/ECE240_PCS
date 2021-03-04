% Apoorv Singh 2019151
% PCS Assignment-3 Problem-2 Part3

Ac = 1; %Amplitude
fm = 5000; %fm = 5kHz 
t = 0:1/50000:50*(1/fm); %Defining the x-axis
mt = cos(2*pi*fm*t); %m(t) signal
mt_h = hilbert(mt); %Hilbert transform of m(t) signal
subplot(2,1,1); %Using subplot to plot two plots on same window
plot(t, abs(Ac+mt),'b') %Plotting |Ac+mt|
title('Plot of |Ac+mt|')
ylim([-1 2.5]) %Defining the limits on y-axis
subplot(2,1,2) %Using subplot to plot second plot on the same window
plot(t, abs(mt_h), 'r') %Plotting |Hilbert transform of mt|
title('Plot of Hilbert(mt)')

% In the plot we can see |Ac+mt| > Hilbert(mt). Hence verified.