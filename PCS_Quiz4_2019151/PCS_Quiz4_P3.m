% Apoorv Singh 2019151
% PCS Quiz-4 Problem-3 Part-1,2

t = -5:0.05:5; %defining the time axis
A = 2; %amplitude of the signal
T = 10; 
s = 0.5; %value of variance^2
s0_t = A*cos(pi*t/T); %first input signal
s1_t = A*cos(2*pi*t/T); %second input signal
n_t = s*randn(size(t)); %noise generated using randn function

r0_t = s0_t + n_t; %noise added to s0_t
r1_t = s1_t + n_t; %noise added to s1_t

subplot(2,1,1)
%plotting first signal after adding noise
stem(t, r0_t, 'red', 'b.-', 'LineWidth', 1, 'MarkerSize', 15);
title('Plot of r_k when i=0')

subplot(2,1,2)
%plotting second signal after adding noise
stem(t, r1_t, 'blue', 'b.-', 'LineWidth', 1, 'MarkerSize', 15);
title('Plot of r_k when i=1')

%Now using awgn to plot r_t
s1 = 0.5; %variance^2 = 0.5
r1_awgn = awgn(s0_t, s1); %r_t corresponding to s0_t using awgn
r3_awgn = awgn(s1_t, s1); %r_t corresponding to s1_t using awgn
figure
subplot(2,1,1)
plot(t, r1_awgn, 'b', 'Linewidth', 2)
hold

s2 = 2; %variance^2 = 2
r2_awgn = awgn(s0_t, s2); %r_t corresponding to s0_t using awgn
r4_awgn = awgn(s1_t, s2); %r_t corresponding to s1_t using awgn
plot(t, r2_awgn, 'r', 'Linewidth', 2)
title('r_t signal corresponding to s0_t')

subplot(2,1,2)
plot(t, r3_awgn, 'b', 'Linewidth', 2)
hold
plot(t, r4_awgn, 'r', 'Linewidth', 2)
title('r_t signal corresponding to s1_t')

% Blue plot -> variance^2 = 0.5
% Red plot -> variance^2 = 2















