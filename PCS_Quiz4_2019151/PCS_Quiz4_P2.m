% Apoorv Singh 2019151
% PCS Quiz-4 Problem-2

T_b = 2; 
R_b = 1/T_b;
r1 = 0.5; %roll-off factor
f_x1 = r1/(2*T_b); %excess bandwidth
f = -2:0.01:2; %defining frequency axis
p_f1 = rand(1,401); 
%p_f1 is the raised cosine characteristic. Here a matrix is defined and it
%stores the values according to the defination of raised cosine characteristic.
for i = 1:401
    f_i = (i-201)/100;
    if(abs(f_i)<(R_b/2)-f_x1)
        p_f1(i) = 1;
    elseif(abs(f_i-(R_b/2))<f_x1)
        p_f1(i) = 0.5*(1-sin(pi*((f_i-R_b/2)/(2*f_x1))));
    else
        p_f1(i) = 0;
    end
end
subplot(2,1,1)
plot(f, p_f1, 'b', 'Linewidth', 3);
hold

p_f2 = rand(1,401);
r2 = 0.75; %Now plotting raised cosine characteristic for r = 0.75
f_x2 = r/(2*T_b);
for i = 1:401
    f_i = (i-201)/100;
    if(abs(f_i)<(R_b/2)-f_x2)
        p_f2(i) = 1;
    elseif(abs(f_i-(R_b/2))<f_x2)
        p_f2(i) = 0.5*(1-sin(pi*((f_i-R_b/2)/(2*f_x2))));
    else
        p_f2(i) = 0;
    end
end

plot(f, p_f2, 'r', 'Linewidth', 3)

sinc_f = (2/pi)^(1/2)*rectangularPulse(f/pi);
plot(f, sinc_f, 'g', 'Linewidth', 3)
xlabel('f (frequency)','FontSize',10,'FontWeight','bold','Color','black')
title('raised cosine characteristic & sinc function in f domain')

% Blue-plot is the raised cosine characteristic for r = 0.5
% Red-plot is the raised cosine characteristic for r = 0.75
% Green-plot is the sinc function in frequency domain.

t = -2:0.01:2; %defining time axis for plotting signals in time domain
y1 = ifft(sinc_f); %taking inverse fourier transform of sinc function in f domain
sinc_t = ifftshift(y1); %using ifftshift so that we get it in the form we are used to
subplot(2,1,2)
plot(t, abs(sinc_t), 'g', 'Linewidth', 2)
hold

y2 = ifft(p_f1); %taking fourier transform of raised cosine characteristic with r = 0.5
p_f1t = ifftshift(y2);
plot(t, abs(p_f1t), 'b', 'Linewidth', 2)

y3 = ifft(p_f2); %taking fourier transform of raised cosine characteristic with r = 0.75
p_f2t = ifftshift(y3);
plot(t, abs(p_f2t), 'r', 'Linewidth', 2)
xlabel('t (time)','FontSize',10,'FontWeight','bold','Color','black')
title('raised cosine characteristic and sinc function in time domain')

% Maximum bandwidth is of the sinc function. Bandwidth of P_f is given by
% B_t = (1+r)*R_b/2, so greater the roll-off factor, greater is the bandwidth. 







